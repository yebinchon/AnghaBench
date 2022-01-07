; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_process_auto_xfr_rdy_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_process_auto_xfr_rdy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*, i32, i32, i32)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_30__*, i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_22__*, i32, i64, %struct.TYPE_34__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_27__, %struct.TYPE_30__, %struct.TYPE_21__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_33__ = type { i64, i32, i32 }

@SLI4_FC_WCQE_STATUS_SUCCESS = common dso_local global i64 0, align 8
@OCS_HW_UNSOL_SUCCESS = common dso_local global i32 0, align 4
@SLI4_FC_WCQE_STATUS_REMOTE_STOP = common dso_local global i64 0, align 8
@OCS_HW_UNSOL_ABTS_RCVD = common dso_local global i32 0, align 4
@OCS_HW_UNSOL_ERROR = common dso_local global i32 0, align 4
@OCS_HW_IO_TARGET_RSP = common dso_local global i64 0, align 8
@ocs_hw_unsol_process_bounce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_rqpair_process_auto_xfr_rdy_data(%struct.TYPE_34__* %0, %struct.TYPE_24__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %7, align 8
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_22__* @ocs_hw_io_lookup(%struct.TYPE_34__* %17, i32 %20)
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %9, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = call i32 @ocs_lock(i32* %23)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %10, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 6
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %8, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 9
  store %struct.TYPE_34__* %32, %struct.TYPE_34__** %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 6
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %46, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  store %struct.TYPE_30__* %48, %struct.TYPE_30__** %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 5
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  store i32 12, i32* %59, align 8
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SLI4_FC_WCQE_STATUS_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %3
  %84 = load i32, i32* @OCS_HW_UNSOL_SUCCESS, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %102

87:                                               ; preds = %3
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SLI4_FC_WCQE_STATUS_REMOTE_STOP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @OCS_HW_UNSOL_ABTS_RCVD, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %101

97:                                               ; preds = %87
  %98 = load i32, i32* @OCS_HW_UNSOL_ERROR, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %83
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OCS_HW_IO_TARGET_RSP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %173

113:                                              ; preds = %102
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %173

119:                                              ; preds = %113
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %119
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  store %struct.TYPE_25__* %131, %struct.TYPE_25__** %11, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @fc_be24toh(i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @fc_be24toh(i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ocs_be16toh(i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i32 (i32, %struct.TYPE_21__*, i32, i32, i32)*, i32 (i32, %struct.TYPE_21__*, i32, i32, i32)** %146, align 8
  %148 = icmp ne i32 (i32, %struct.TYPE_21__*, i32, i32, i32)* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %125
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 1
  %153 = load i32 (i32, %struct.TYPE_21__*, i32, i32, i32)*, i32 (i32, %struct.TYPE_21__*, i32, i32, i32)** %152, align 8
  %154 = load i32, i32* @ocs_hw_unsol_process_bounce, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 %153(i32 %154, %struct.TYPE_21__* %155, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %149, %125
  br label %172

161:                                              ; preds = %119
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  %165 = load i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*)** %164, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %171 = call i32 %165(i32 %169, %struct.TYPE_21__* %170)
  br label %172

172:                                              ; preds = %161, %160
  br label %173

173:                                              ; preds = %172, %118, %108
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = call i32 @ocs_unlock(i32* %175)
  ret i32 0
}

declare dso_local %struct.TYPE_22__* @ocs_hw_io_lookup(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @fc_be24toh(i32) #1

declare dso_local i32 @ocs_be16toh(i32) #1

declare dso_local i32 @ocs_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
