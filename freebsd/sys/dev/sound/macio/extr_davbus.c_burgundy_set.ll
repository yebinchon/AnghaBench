; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.davbus_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"volume %d %d\0A\00", align 1
@BURGUNDY_OL13_REG = common dso_local global i32 0, align 4
@BURGUNDY_OL14_REG = common dso_local global i32 0, align 4
@BURGUNDY_OL15_REG = common dso_local global i32 0, align 4
@BURGUNDY_OL16_REG = common dso_local global i32 0, align 4
@BURGUNDY_OL17_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @burgundy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @burgundy_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.davbus_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub i32 100, %13
  %15 = mul i32 %14, 15
  %16 = udiv i32 %15, 100
  %17 = and i32 %16, 15
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub i32 100, %18
  %20 = mul i32 %19, 15
  %21 = udiv i32 %20, 100
  %22 = and i32 %21, 15
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DPRINTF(i8* %26)
  %28 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %29 = call %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer* %28)
  store %struct.davbus_softc* %29, %struct.davbus_softc** %10, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %71 [
    i32 128, label %31
  ]

31:                                               ; preds = %4
  %32 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %33 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %36 = load i32, i32* @BURGUNDY_OL13_REG, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @burgundy_write_locked(%struct.davbus_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %40 = load i32, i32* @BURGUNDY_OL14_REG, align 4
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @burgundy_write_locked(%struct.davbus_softc* %39, i32 %40, i32 %44)
  %46 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %47 = load i32, i32* @BURGUNDY_OL15_REG, align 4
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @burgundy_write_locked(%struct.davbus_softc* %46, i32 %47, i32 %51)
  %53 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %54 = load i32, i32* @BURGUNDY_OL16_REG, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @burgundy_write_locked(%struct.davbus_softc* %53, i32 %54, i32 %58)
  %60 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %61 = load i32, i32* @BURGUNDY_OL17_REG, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @burgundy_write_locked(%struct.davbus_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %65 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %67, %69
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @burgundy_write_locked(%struct.davbus_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
