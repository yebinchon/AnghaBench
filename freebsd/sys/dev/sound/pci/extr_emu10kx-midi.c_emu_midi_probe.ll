; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_midi_softc = type { i32 }

@SCF_MIDI = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EMU_VAR_ISEMU10K1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EMU10Kx MIDI Interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_midi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_midi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu_midi_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @BUS_READ_IVAR(i32 %9, i32 %10, i32 0, i64* %5)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @SCF_MIDI, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.emu_midi_softc* @device_get_softc(i32 %18)
  store %struct.emu_midi_softc* %19, %struct.emu_midi_softc** %4, align 8
  %20 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %21 = call i32 @bzero(%struct.emu_midi_softc* %20, i32 4)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @EMU_VAR_ISEMU10K1, align 4
  %26 = call i64 @BUS_READ_IVAR(i32 %23, i32 %24, i32 %25, i64* %7)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.emu_midi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.emu_midi_softc*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
