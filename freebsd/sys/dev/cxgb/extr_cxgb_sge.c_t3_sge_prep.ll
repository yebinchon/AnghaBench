; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sge_params = type { i32, %struct.qset_params* }
%struct.qset_params = type { i32, i32, i32, i32, i32*, i64, i32, i64 }

@SGE_QSETS = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@nmbclusters = common dso_local global i32 0, align 4
@FL_Q_SIZE = common dso_local global i32 0, align 4
@cxgb_use_16k_clusters = common dso_local global i32 0, align 4
@nmbjumbop = common dso_local global i32 0, align 4
@JUMBO_Q_SIZE = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Insufficient clusters and/or jumbo buffers.\0A\00", align 1
@RSPQ_Q_SIZE = common dso_local global i32 0, align 4
@TX_ETH_Q_SIZE = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@TX_OFLD_Q_SIZE = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i64 0, align 8
@TX_CTRL_Q_SIZE = common dso_local global i32 0, align 4
@TXQ_CTRL = common dso_local global i64 0, align 8
@MJUM16BYTES = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@nmbjumbo16 = common dso_local global i32 0, align 4
@nmbjumbo9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_prep(%struct.TYPE_6__* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qset_params*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  %12 = load i32, i32* @SGE_QSETS, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %12, %16
  %18 = load i32, i32* @mp_ncpus, align 4
  %19 = call i32 @min(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @nmbclusters, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 3, %27
  %29 = sdiv i32 %26, %28
  %30 = load i32, i32* @FL_Q_SIZE, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %37, %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @powerof2(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* @cxgb_use_16k_clusters, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @cxgb_use_16k_clusters, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @is_offload(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @nmbjumbop, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 3, %51
  %53 = sdiv i32 %50, %52
  %54 = load i32, i32* @JUMBO_Q_SIZE, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @MJUMPAGESIZE, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %62, %48
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @powerof2(i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  br label %57

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @FL_Q_SIZE, align 4
  %68 = sdiv i32 %67, 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @JUMBO_Q_SIZE, align 4
  %73 = sdiv i32 %72, 2
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70, %65
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %86 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %151, %80
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SGE_QSETS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %154

91:                                               ; preds = %87
  %92 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %93 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %92, i32 0, i32 1
  %94 = load %struct.qset_params*, %struct.qset_params** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %94, i64 %96
  store %struct.qset_params* %97, %struct.qset_params** %11, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %105 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %104, i32 0, i32 0
  store i32 50, i32* %105, align 8
  br label %109

106:                                              ; preds = %91
  %107 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %108 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %107, i32 0, i32 0
  store i32 5, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %111 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %110, i32 0, i32 7
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @RSPQ_Q_SIZE, align 4
  %113 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %114 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %117 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %120 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %123 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @TX_ETH_Q_SIZE, align 4
  %125 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %126 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @TXQ_ETH, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = call i32 @is_offload(%struct.TYPE_6__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %109
  %134 = load i32, i32* @TX_OFLD_Q_SIZE, align 4
  br label %136

135:                                              ; preds = %109
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 16, %135 ]
  %138 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %139 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @TXQ_OFLD, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* @TX_CTRL_Q_SIZE, align 4
  %144 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %145 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @TXQ_CTRL, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load %struct.qset_params*, %struct.qset_params** %11, align 8
  %150 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %136
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %87

154:                                              ; preds = %87
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @is_offload(%struct.TYPE_6__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
