; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32, i32, i32, %struct.TYPE_2__, %struct.ISCI_CONTROLLER*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ISCI_CONTROLLER*, i32* }
%struct.ISCI_CONTROLLER = type { i32, i32 }

@SCI_MAX_CONTROLLERS = common dso_local global i32 0, align 4
@M_ISCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SCI_LOG_VERBOSITY_ERROR = common dso_local global i32 0, align 4
@SCI_LOG_VERBOSITY_WARNING = common dso_local global i32 0, align 4
@SCI_LOG_VERBOSITY_INFO = common dso_local global i32 0, align 4
@SCI_LOG_VERBOSITY_TRACE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_COMPLETION_QUEUE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hw.isci.debug_level\00", align 1
@g_isci_debug_level = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"isci_controller_initialize FAILED: %x\0A\00", align 1
@isci_controller_start = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"config_intrhook_establish failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_initialize(%struct.isci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ISCI_CONTROLLER*, align 8
  %14 = alloca i32, align 4
  store %struct.isci_softc* %0, %struct.isci_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @SCI_MAX_CONTROLLERS, align 4
  %16 = call i32 @scif_library_get_object_size(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @M_ISCI, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @malloc(i32 %17, i32 %18, i32 %21)
  %23 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCI_MAX_CONTROLLERS, align 4
  %29 = call i32 @scif_library_construct(i32 %27, i32 %28)
  %30 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %33 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %36 = bitcast %struct.isci_softc* %35 to i8*
  %37 = call i32 @sci_object_set_association(i32 %34, i8* %36)
  %38 = load i32, i32* @SCI_LOG_VERBOSITY_ERROR, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @SCI_LOG_VERBOSITY_WARNING, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @SCI_LOG_VERBOSITY_INFO, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @SCI_LOG_VERBOSITY_TRACE, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  store i32 %48, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %49 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @SCIC_LOG_OBJECT_SSP_IO_REQUEST, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %69 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* @g_isci_debug_level)
  %78 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %79 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sci_object_get_logger(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @sci_logger_enable(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %86 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @scif_library_get_scic_handle(i32 %87)
  %89 = call i32 @sci_object_get_logger(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @sci_logger_enable(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %94 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %93, i32 0, i32 7
  store i32* %94, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %109, %1
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 4
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %101 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @pci_read_config(i32 %102, i32 %103, i32 1)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %114 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @scif_library_get_scic_handle(i32 %115)
  %117 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %118 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %117, i32 0, i32 7
  %119 = call i32 @scic_library_set_pci_info(i32 %116, i32* %118)
  %120 = load i32, i32* @FALSE, align 4
  %121 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %122 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %124 = call i32 @isci_get_oem_parameters(%struct.isci_softc* %123)
  %125 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %126 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %125, i32 0, i32 0
  store i32 32, i32* %126, align 8
  %127 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %128 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %127, i32 0, i32 1
  store i32 2, i32* %128, align 4
  %129 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %130 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @scif_library_get_scic_handle(i32 %131)
  %133 = call i32 @scic_library_get_pci_device_controller_count(i32 %132)
  %134 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %135 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %183, %112
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %139 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %136
  %143 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %144 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %143, i32 0, i32 4
  %145 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %145, i64 %147
  store %struct.ISCI_CONTROLLER* %148, %struct.ISCI_CONTROLLER** %13, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %13, align 8
  %151 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %13, align 8
  %153 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %154 = call i32 @isci_controller_construct(%struct.ISCI_CONTROLLER* %152, %struct.isci_softc* %153)
  %155 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %13, align 8
  %156 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %14, align 4
  %158 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %13, align 8
  %159 = call i32 @isci_controller_initialize(%struct.ISCI_CONTROLLER* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @SCI_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %142
  %164 = load i32, i32* %5, align 4
  %165 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %205

167:                                              ; preds = %142
  %168 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %13, align 8
  %169 = call i32 @isci_controller_allocate_memory(%struct.ISCI_CONTROLLER* %168)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %205

174:                                              ; preds = %167
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %177 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %180 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @scif_controller_set_interrupt_coalescence(i32 %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %136

186:                                              ; preds = %136
  %187 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %188 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i32* @isci_controller_start, i32** %189, align 8
  %190 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %191 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %190, i32 0, i32 4
  %192 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %191, align 8
  %193 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %192, i64 0
  %194 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %195 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store %struct.ISCI_CONTROLLER* %193, %struct.ISCI_CONTROLLER** %196, align 8
  %197 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %198 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %197, i32 0, i32 3
  %199 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %186
  %202 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %186
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %172, %163
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @scif_library_get_object_size(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @scif_library_construct(i32, i32) #1

declare dso_local i32 @sci_object_set_association(i32, i8*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @sci_logger_enable(i32, i32, i32) #1

declare dso_local i32 @sci_object_get_logger(i32) #1

declare dso_local i32 @scif_library_get_scic_handle(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @scic_library_set_pci_info(i32, i32*) #1

declare dso_local i32 @isci_get_oem_parameters(%struct.isci_softc*) #1

declare dso_local i32 @scic_library_get_pci_device_controller_count(i32) #1

declare dso_local i32 @isci_controller_construct(%struct.ISCI_CONTROLLER*, %struct.isci_softc*) #1

declare dso_local i32 @isci_controller_initialize(%struct.ISCI_CONTROLLER*) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*, ...) #1

declare dso_local i32 @isci_controller_allocate_memory(%struct.ISCI_CONTROLLER*) #1

declare dso_local i32 @scif_controller_set_interrupt_coalescence(i32, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
