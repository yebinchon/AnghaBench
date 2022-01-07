; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_block_mouse_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_block_mouse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_INT = common dso_local global i32 0, align 4
@KBD_ENABLE_AUX_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_INT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32*)* @block_mouse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_mouse_data(%struct.psm_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %8 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @kbdc_lock(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = call i32 (...) @spltty()
  store i32 %16, i32* %6, align 4
  %17 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_controller_command_byte(i32 %19)
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kbdc_get_device_mask(i32 %31)
  %33 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %34 = load i32, i32* @KBD_DISABLE_KBD_INT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @KBD_ENABLE_AUX_PORT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @set_controller_command_byte(i32 %28, i32 %32, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %25, %15
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @splx(i32 %43)
  %45 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %46 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @kbdc_lock(i32 %47, i32 %48)
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %25
  %52 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @empty_aux_buffer(i32 %54, i32 0)
  %56 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %57 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @read_aux_data_no_wait(i32 %58)
  %60 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %61 = call i32 @flushpackets(%struct.psm_softc* %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @splx(i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %51, %42, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i32 @kbdc_get_device_mask(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

declare dso_local i32 @read_aux_data_no_wait(i32) #1

declare dso_local i32 @flushpackets(%struct.psm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
