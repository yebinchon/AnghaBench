; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-midi.c_emu_midi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_midi_softc = type { i64, i32, i64, i32, i32, i32*, i32, i32 }
%struct.sndcard_func = type { i64 }
%struct.emu_midiinfo = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"midi softc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@EMU_INTE_MIDIRXENABLE = common dso_local global i32 0, align 4
@EMU_IPR_MIDITRANSBUFE = common dso_local global i32 0, align 4
@EMU_IPR_MIDIRECVBUFE = common dso_local global i32 0, align 4
@EMU_A_MUDATA1 = common dso_local global i64 0, align 8
@EMU_INTE_A_MIDIRXENABLE2 = common dso_local global i32 0, align 4
@EMU_IPR_A_MIDITRANSBUFE2 = common dso_local global i32 0, align 4
@EMU_IPR_A_MIDIRECBUFE2 = common dso_local global i32 0, align 4
@emu_midi_card_intr = common dso_local global i32 0, align 4
@emu_mpu_class = common dso_local global i32 0, align 4
@emu_midi_intr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_midi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_midi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu_midi_softc*, align 8
  %5 = alloca %struct.sndcard_func*, align 8
  %6 = alloca %struct.emu_midiinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.emu_midi_softc* @device_get_softc(i32 %9)
  store %struct.emu_midi_softc* %10, %struct.emu_midi_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.sndcard_func* @device_get_ivars(i32 %11)
  store %struct.sndcard_func* %12, %struct.sndcard_func** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sndcard_func*, %struct.sndcard_func** %5, align 8
  %17 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.emu_midiinfo*
  store %struct.emu_midiinfo* %19, %struct.emu_midiinfo** %6, align 8
  %20 = load %struct.emu_midiinfo*, %struct.emu_midiinfo** %6, align 8
  %21 = getelementptr inbounds %struct.emu_midiinfo, %struct.emu_midiinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.emu_midiinfo*, %struct.emu_midiinfo** %6, align 8
  %26 = getelementptr inbounds %struct.emu_midiinfo, %struct.emu_midiinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_nameunit(i32 %32)
  %34 = load i32, i32* @MTX_DEF, align 4
  %35 = call i32 @mtx_init(i32* %31, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %41 = load i32, i32* @EMU_INTE_MIDIRXENABLE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @EMU_IPR_MIDITRANSBUFE, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @EMU_IPR_MIDIRECVBUFE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %71

48:                                               ; preds = %1
  %49 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EMU_A_MUDATA1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  %55 = load i32, i32* @EMU_INTE_MIDIRXENABLE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @EMU_IPR_MIDITRANSBUFE, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @EMU_IPR_MIDIRECVBUFE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %70

62:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  %63 = load i32, i32* @EMU_INTE_A_MIDIRXENABLE2, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @EMU_IPR_A_MIDITRANSBUFE2, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @EMU_IPR_A_MIDIRECBUFE2, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %78 = call i32 @emu_intr_register(i32 %74, i32 %75, i32 %76, i32* @emu_midi_card_intr, %struct.emu_midi_softc* %77)
  %79 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %82 = load i32, i32* @emu_midi_intr, align 4
  %83 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %83, i32 0, i32 6
  %85 = call i32* @mpu401_init(i32* @emu_mpu_class, %struct.emu_midi_softc* %81, i32 %82, i32* %84)
  %86 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %87 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %86, i32 0, i32 5
  store i32* %85, i32** %87, align 8
  %88 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %71
  %93 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @emu_intr_unregister(i32 %95, i32 %98)
  %100 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %101 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %100, i32 0, i32 3
  %102 = call i32 @mtx_destroy(i32* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %127

104:                                              ; preds = %71
  %105 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %106 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %111 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @emu_enable_ir(i32 %112)
  br label %126

114:                                              ; preds = %104
  %115 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @EMU_A_MUDATA1, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.emu_midi_softc*, %struct.emu_midi_softc** %4, align 8
  %122 = getelementptr inbounds %struct.emu_midi_softc, %struct.emu_midi_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @emu_enable_ir(i32 %123)
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %109
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %92
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.emu_midi_softc* @device_get_softc(i32) #1

declare dso_local %struct.sndcard_func* @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @emu_intr_register(i32, i32, i32, i32*, %struct.emu_midi_softc*) #1

declare dso_local i32* @mpu401_init(i32*, %struct.emu_midi_softc*, i32, i32*) #1

declare dso_local i32 @emu_intr_unregister(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @emu_enable_ir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
