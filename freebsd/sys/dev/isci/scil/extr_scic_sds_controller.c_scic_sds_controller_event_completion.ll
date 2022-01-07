; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_event_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_event_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32**, i32*, i32**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"SCIC Controller 0x%x received SMU command error 0x%x\0A\00", align 1
@SCI_CONTROLLER_FATAL_MEMORY_ERROR = common dso_local global i32 0, align 4
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"SCIC Controller 0x%x received fatal controller event 0x%x\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global i32* null, align 8
@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"SCIC Controller 0x%x received event 0x%x for io request object that doesnt exist.\0A\00", align 1
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [86 x i8] c"SCIC Controller 0x%x received event 0x%x for remote device object that doesnt exist.\0A\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"SCIC Controller 0x%x received event 0x%x for remote device object 0x%0x that doesnt exist.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"SCIC Controller received unknown event code %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @scic_sds_controller_event_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_event_completion(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @SCU_GET_COMPLETION_INDEX(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @scu_get_event_type(i64 %11)
  switch i32 %12, label %157 [
    i32 131, label %13
    i32 137, label %21
    i32 129, label %30
    i32 130, label %30
    i32 128, label %38
    i32 135, label %48
    i32 139, label %110
    i32 138, label %110
    i32 136, label %110
    i32 133, label %121
    i32 132, label %121
    i32 134, label %121
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %14)
  %16 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @SCIC_LOG_ERROR(i32 %19)
  br label %164

21:                                               ; preds = %2
  %22 = load i32, i32* @SCI_CONTROLLER_FATAL_MEMORY_ERROR, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_7__* %26)
  %28 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %29 = call i32 @sci_base_state_machine_change_state(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %2, %2, %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %31)
  %33 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @SCIC_LOG_ERROR(i32 %36)
  br label %164

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @scic_sds_io_request_event_handler(i32* %45, i64 %46)
  br label %164

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @scu_get_event_specifier(i64 %49)
  switch i32 %50, label %109 [
    i32 141, label %51
    i32 140, label %51
    i32 142, label %80
  ]

51:                                               ; preds = %48, %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  %60 = icmp ne i32* %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @scic_sds_io_request_event_handler(i32* %62, i64 %63)
  br label %79

65:                                               ; preds = %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %66)
  %68 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %69 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SCIC_LOG_OBJECT_SSP_IO_REQUEST, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @SCIC_LOG_WARNING(i32 %77)
  br label %79

79:                                               ; preds = %65, %61
  br label %109

80:                                               ; preds = %48
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  %89 = icmp ne i32* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i32*, i32** %7, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @scic_sds_remote_device_event_handler(i32* %91, i64 %92)
  br label %108

94:                                               ; preds = %80
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %95)
  %97 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %98 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @SCIC_LOG_WARNING(i32 %106)
  br label %108

108:                                              ; preds = %94, %90
  br label %109

109:                                              ; preds = %48, %108, %79
  br label %164

110:                                              ; preds = %2, %2, %2
  %111 = load i64, i64* %4, align 8
  %112 = call i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64 %111)
  store i64 %112, i64* %5, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @scic_sds_phy_event_handler(i32* %118, i64 %119)
  br label %164

121:                                              ; preds = %2, %2, %2
  %122 = load i64, i64* %5, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %7, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i32 @scic_sds_remote_device_event_handler(i32* %137, i64 %138)
  br label %140

140:                                              ; preds = %136, %127
  br label %156

141:                                              ; preds = %121
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %142)
  %144 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %145 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @SCIC_LOG_ERROR(i32 %154)
  br label %156

156:                                              ; preds = %141, %140
  br label %164

157:                                              ; preds = %2
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %158)
  %160 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %161 = load i64, i64* %4, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @SCIC_LOG_WARNING(i32 %162)
  br label %164

164:                                              ; preds = %157, %156, %110, %109, %38, %30, %13
  ret void
}

declare dso_local i64 @SCU_GET_COMPLETION_INDEX(i64) #1

declare dso_local i32 @scu_get_event_type(i64) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_7__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_7__*) #1

declare dso_local i32 @scic_sds_io_request_event_handler(i32*, i64) #1

declare dso_local i32 @scu_get_event_specifier(i64) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @scic_sds_remote_device_event_handler(i32*, i64) #1

declare dso_local i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64) #1

declare dso_local i32 @scic_sds_phy_event_handler(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
