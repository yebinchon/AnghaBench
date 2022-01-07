; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_smp_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_smp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }

@SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE = common dso_local global i64 0, align 8
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER = common dso_local global i32 0, align 4
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET = common dso_local global i32 0, align 4
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE = common dso_local global i32 0, align 4
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_smp_remote_device_decode_smp_response(%struct.TYPE_18__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @scif_cb_timer_destroy(i32 %26, i32* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %21, %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  %45 = call i32 @scif_sas_smp_remote_device_continue_current_activity(%struct.TYPE_18__* %42, i32* %43, i64 %44)
  %46 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  store i64 %46, i64* %5, align 8
  br label %155

47:                                               ; preds = %37
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %147 [
    i32 130, label %53
    i32 129, label %57
    i32 132, label %59
    i32 128, label %100
    i32 131, label %104
    i32 133, label %143
  ]

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @scif_sas_smp_remote_device_decode_report_general_response(%struct.TYPE_18__* %54, i32* %55)
  store i64 %56, i64* %11, align 8
  br label %149

57:                                               ; preds = %47
  %58 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %58, i64* %11, align 8
  br label %149

59:                                               ; preds = %47
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @scif_sas_smp_remote_device_decode_initial_discover_response(%struct.TYPE_18__* %68, i32* %69)
  store i64 %70, i64* %11, align 8
  br label %99

71:                                               ; preds = %59
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i64 @scif_sas_smp_remote_device_decode_target_reset_discover_response(%struct.TYPE_18__* %80, i32* %81)
  store i64 %82, i64* %11, align 8
  br label %98

83:                                               ; preds = %71
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(%struct.TYPE_18__* %92, i32* %93)
  store i64 %94, i64* %11, align 8
  br label %97

95:                                               ; preds = %83
  %96 = call i32 @ASSERT(i32 0)
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %67
  br label %149

100:                                              ; preds = %47
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i64 @scif_sas_smp_remote_device_decode_report_phy_sata_response(%struct.TYPE_18__* %101, i32* %102)
  store i64 %103, i64* %11, align 8
  br label %149

104:                                              ; preds = %47
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i64 @scif_sas_smp_remote_device_decode_discover_phy_control_response(%struct.TYPE_18__* %113, i32* %114)
  store i64 %115, i64* %11, align 8
  br label %142

116:                                              ; preds = %104
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i64 @scif_sas_smp_remote_device_decode_target_reset_phy_control_response(%struct.TYPE_18__* %125, i32* %126)
  store i64 %127, i64* %11, align 8
  br label %141

128:                                              ; preds = %116
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %137, i64* %11, align 8
  br label %140

138:                                              ; preds = %128
  %139 = call i32 @ASSERT(i32 0)
  br label %140

140:                                              ; preds = %138, %136
  br label %141

141:                                              ; preds = %140, %124
  br label %142

142:                                              ; preds = %141, %112
  br label %149

143:                                              ; preds = %47
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = call i64 @scif_sas_smp_remote_device_decode_config_route_info_response(%struct.TYPE_18__* %144, i32* %145)
  store i64 %146, i64* %11, align 8
  br label %149

147:                                              ; preds = %47
  %148 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE, align 8
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %147, %143, %142, %100, %99, %57, %53
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @scif_sas_smp_remote_device_continue_current_activity(%struct.TYPE_18__* %150, i32* %151, i64 %152)
  %154 = load i64, i64* %11, align 8
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %149, %41
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local i32 @scif_cb_timer_destroy(i32, i32*) #1

declare dso_local i32 @scif_sas_smp_remote_device_continue_current_activity(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_report_general_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_initial_discover_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_target_reset_discover_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_report_phy_sata_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_discover_phy_control_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_target_reset_phy_control_response(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_decode_config_route_info_response(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
