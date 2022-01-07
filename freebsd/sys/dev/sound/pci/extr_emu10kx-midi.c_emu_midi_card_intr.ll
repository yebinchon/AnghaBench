; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_card_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_card_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_midi_softc = type { i32, i32 (i32)*, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"midi interrupt %08x without interrupt handler, force mread!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @emu_midi_card_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_midi_card_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_midi_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.emu_midi_softc*
  store %struct.emu_midi_softc* %7, %struct.emu_midi_softc** %5, align 8
  %8 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %9 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %17 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %22 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %21, i32 0, i32 1
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp eq i32 (i32)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %5, align 8
  %36 = call i32 @emu_mread(i8* null, %struct.emu_midi_softc* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @emu_mread(i8*, %struct.emu_midi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
