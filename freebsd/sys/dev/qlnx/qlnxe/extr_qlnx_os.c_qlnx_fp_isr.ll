; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fp_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fp_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.qlnx_fastpath*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qlnx_fastpath = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, %struct.qlnx_tx_queue** }
%struct.TYPE_9__ = type { %struct.lro_ctrl }
%struct.lro_ctrl = type { i32, i32 }
%struct.qlnx_tx_queue = type { i32 }

@QLNX_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"illegal interrupt[%d]\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@QLNX_TX_ELEM_THRESH = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@tx_compl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qlnx_fp_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_fp_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.qlnx_fastpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qlnx_tx_queue*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  store %struct.qlnx_fastpath* null, %struct.qlnx_fastpath** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLNX_STATE_OPEN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %150

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @QL_DPRINT1(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %150

43:                                               ; preds = %24
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %46, i64 %48
  store %struct.qlnx_fastpath* %49, %struct.qlnx_fastpath** %5, align 8
  %50 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %51 = icmp eq %struct.qlnx_fastpath* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %149

57:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFCAP_LRO, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %66 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IGU_INT_DISABLE, align 4
  %69 = call i32 @ecore_sb_ack(i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %135, %57
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %112, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %79 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %78, i32 0, i32 12
  %80 = load %struct.qlnx_tx_queue**, %struct.qlnx_tx_queue*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %80, i64 %82
  %84 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %83, align 8
  store %struct.qlnx_tx_queue* %84, %struct.qlnx_tx_queue** %11, align 8
  %85 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %11, align 8
  %86 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %85, i32 0, i32 0
  %87 = call i64 @ecore_chain_get_elem_left(i32* %86)
  store i64 %87, i64* %12, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @QLNX_TX_ELEM_THRESH, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %77
  %92 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %93 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %92, i32 0, i32 10
  %94 = call i64 @mtx_trylock(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %99 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %100 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %99, i32 0, i32 12
  %101 = load %struct.qlnx_tx_queue**, %struct.qlnx_tx_queue*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %101, i64 %103
  %105 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %104, align 8
  %106 = call i32 @qlnx_tx_int(%struct.TYPE_11__* %97, %struct.qlnx_fastpath* %98, %struct.qlnx_tx_queue* %105)
  %107 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %108 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %107, i32 0, i32 10
  %109 = call i32 @mtx_unlock(i32* %108)
  br label %110

110:                                              ; preds = %96, %91
  br label %111

111:                                              ; preds = %110, %77
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %71

115:                                              ; preds = %71
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @qlnx_rx_int(%struct.TYPE_11__* %116, %struct.qlnx_fastpath* %117, i32 %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %128 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %125, %115
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %70, label %138

138:                                              ; preds = %135
  %139 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %140 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ecore_sb_update_sb_idx(i32 %141)
  %143 = call i32 (...) @rmb()
  %144 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %145 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IGU_INT_ENABLE, align 4
  %148 = call i32 @ecore_sb_ack(i32 %146, i32 %147, i32 1)
  br label %149

149:                                              ; preds = %138, %52
  br label %150

150:                                              ; preds = %149, %35, %23
  ret void
}

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @ecore_sb_ack(i32, i32, i32) #1

declare dso_local i64 @ecore_chain_get_elem_left(i32*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @qlnx_tx_int(%struct.TYPE_11__*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @qlnx_rx_int(%struct.TYPE_11__*, %struct.qlnx_fastpath*, i32, i32) #1

declare dso_local i32 @ecore_sb_update_sb_idx(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
