; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_complete_rx_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_complete_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_comp_rx_data = type { i32, i64, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qlnxr_dev = type { i32, %struct.qlnxr_qp*, %struct.qlnxr_cq* }
%struct.qlnxr_qp = type { i32, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qlnxr_cq = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cookie is NULL, bad sign\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid QP\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MAD received on QP : %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_ll2_complete_rx_packet(i8* %0, %struct.ecore_ll2_comp_rx_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ecore_ll2_comp_rx_data*, align 8
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.qlnxr_cq*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ecore_ll2_comp_rx_data* %1, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.qlnxr_dev*
  store %struct.qlnxr_dev* %11, %struct.qlnxr_dev** %5, align 8
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 2
  %14 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %13, align 8
  store %struct.qlnxr_cq* %14, %struct.qlnxr_cq** %6, align 8
  store %struct.qlnxr_qp* null, %struct.qlnxr_qp** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %32 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 16711680, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %46 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %45, i32 0, i32 1
  %47 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %46, align 8
  store %struct.qlnxr_qp* %47, %struct.qlnxr_qp** %7, align 8
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %50 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %173

53:                                               ; preds = %44
  %54 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %55 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %62 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %66 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  br label %74

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  %76 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %77 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %80 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i32 %75, i32* %84, align 4
  %85 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %86 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %89 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %92 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i32 %87, i32* %96, align 8
  %97 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %98 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %102 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %105 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %100, i32* %112, align 4
  %113 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %114 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ntohl(i32 %115)
  %117 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %118 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %121 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %116, i32* %127, align 4
  %128 = load %struct.ecore_ll2_comp_rx_data*, %struct.ecore_ll2_comp_rx_data** %4, align 8
  %129 = getelementptr inbounds %struct.ecore_ll2_comp_rx_data, %struct.ecore_ll2_comp_rx_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @ntohs(i32 %131)
  %133 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %134 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %137 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32 %132, i32* %143, align 4
  %144 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %145 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %144, i32 0, i32 1
  %146 = call i32 @qlnxr_inc_sw_gsi_cons(%struct.TYPE_12__* %145)
  %147 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %148 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %147, i32 0, i32 0
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %152 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %153, align 8
  %155 = icmp ne i32 (%struct.TYPE_11__*, i32)* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %74
  %157 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %158 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %159, align 8
  %161 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %162 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %161, i32 0, i32 0
  %163 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %164 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 %160(%struct.TYPE_11__* %162, i32 %166)
  br label %168

168:                                              ; preds = %156, %74
  %169 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %170 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %48
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @qlnxr_inc_sw_gsi_cons(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
