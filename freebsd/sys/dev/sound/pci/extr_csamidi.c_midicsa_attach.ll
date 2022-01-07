; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csamidi.c_midicsa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csamidi.c_midicsa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_midi_softc = type { i32*, i32, i32, i32*, i32, i32 }
%struct.sndcard_func = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@csamidi_mpu_class = common dso_local global i32 0, align 4
@csamidi_midi_intr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"csamidi softc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@MIDCR_MRST = common dso_local global i32 0, align 4
@MIDCR_TXE = common dso_local global i32 0, align 4
@MIDCR_RXE = common dso_local global i32 0, align 4
@BA0_HICR = common dso_local global i32 0, align 4
@HICR_IEV = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @midicsa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midicsa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.csa_midi_softc*, align 8
  %5 = alloca %struct.sndcard_func*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @ENXIO, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.csa_midi_softc* @device_get_softc(i32 %8)
  store %struct.csa_midi_softc* %9, %struct.csa_midi_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.sndcard_func* @device_get_ivars(i32 %10)
  store %struct.sndcard_func* %11, %struct.sndcard_func** %5, align 8
  %12 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %13 = call i32 @bzero(%struct.csa_midi_softc* %12, i32 32)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %16 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = call i32 @PCIR_BAR(i32 0)
  %18 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i32* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %23, i32 %24)
  %26 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %82

33:                                               ; preds = %1
  %34 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %35 = load i32, i32* @csamidi_midi_intr, align 4
  %36 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %36, i32 0, i32 4
  %38 = call i32* @mpu401_init(i32* @csamidi_mpu_class, %struct.csa_midi_softc* %34, i32 %35, i32* %37)
  %39 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %6, align 4
  br label %70

47:                                               ; preds = %33
  %48 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_get_nameunit(i32 %50)
  %52 = load i32, i32* @MTX_DEF, align 4
  %53 = call i32 @mtx_init(i32* %49, i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %55 = load i32, i32* @BA0_MIDCR, align 4
  %56 = load i32, i32* @MIDCR_MRST, align 4
  %57 = call i32 @csamidi_writeio(%struct.csa_midi_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %59 = load i32, i32* @BA0_MIDCR, align 4
  %60 = load i32, i32* @MIDCR_TXE, align 4
  %61 = load i32, i32* @MIDCR_RXE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @csamidi_writeio(%struct.csa_midi_softc* %58, i32 %59, i32 %62)
  %64 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %65 = load i32, i32* @BA0_HICR, align 4
  %66 = load i32, i32* @HICR_IEV, align 4
  %67 = load i32, i32* @HICR_CHGM, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @csamidi_writeio(%struct.csa_midi_softc* %64, i32 %65, i32 %68)
  store i32 0, i32* %2, align 4
  br label %84

70:                                               ; preds = %45
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bus_release_resource(i32 %71, i32 %72, i32 %75, i32* %78)
  %80 = load %struct.csa_midi_softc*, %struct.csa_midi_softc** %4, align 8
  %81 = getelementptr inbounds %struct.csa_midi_softc, %struct.csa_midi_softc* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %70, %32
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %47
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.csa_midi_softc* @device_get_softc(i32) #1

declare dso_local %struct.sndcard_func* @device_get_ivars(i32) #1

declare dso_local i32 @bzero(%struct.csa_midi_softc*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32* @mpu401_init(i32*, %struct.csa_midi_softc*, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @csamidi_writeio(%struct.csa_midi_softc*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
