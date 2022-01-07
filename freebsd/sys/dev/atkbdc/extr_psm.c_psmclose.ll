; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_INT = common dso_local global i32 0, align 4
@KBD_ENABLE_AUX_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_INT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"psm%d: failed to disable the aux int (psmclose).\0A\00", align 1
@PSM_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"psm%d: failed to disable the device (psmclose).\0A\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"psm%d: failed to get status (psmclose).\0A\00", align 1
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"psm%d: failed to disable the aux port (psmclose).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*)* @psmclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmclose(%struct.psm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psm_softc*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %3, align 8
  %7 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %8 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @kbdc_lock(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %2, align 4
  br label %130

15:                                               ; preds = %1
  %16 = call i32 (...) @spltty()
  store i32 %16, i32* %6, align 4
  %17 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %18 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_controller_command_byte(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @kbdc_lock(i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @splx(i32 %29)
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %2, align 4
  br label %130

32:                                               ; preds = %15
  %33 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %34 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %37 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kbdc_get_device_mask(i32 %38)
  %40 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %41 = load i32, i32* @KBD_DISABLE_KBD_INT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @KBD_ENABLE_AUX_PORT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @set_controller_command_byte(i32 %35, i32 %39, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %52 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @log(i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %32
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @splx(i32 %56)
  %58 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %58, i32 0, i32 3
  %60 = call i32 @callout_stop(i32* %59)
  %61 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %62 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @empty_aux_buffer(i32 %63, i32 10)
  %65 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %66 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PSM_VALID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %55
  %72 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %73 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @disable_aux_dev(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %80 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @log(i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %85 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %88 = call i32 @get_mouse_status(i32 %86, i32* %87, i32 0, i32 3)
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @LOG_DEBUG, align 4
  %92 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %93 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @log(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %55
  %98 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %99 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %102 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @kbdc_get_device_mask(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @set_controller_command_byte(i32 %100, i32 %104, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %97
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %117 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @log(i32 %115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %97
  %121 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %122 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @empty_aux_buffer(i32 %123, i32 10)
  %125 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %126 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @kbdc_lock(i32 %127, i32 %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %120, %23, %13
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i32 @kbdc_get_device_mask(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

declare dso_local i32 @disable_aux_dev(i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
