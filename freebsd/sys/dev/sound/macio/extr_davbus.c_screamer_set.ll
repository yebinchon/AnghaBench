; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.davbus_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"volume %d %d\0A\00", align 1
@SCREAMER_CODEC_ADDR2 = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @screamer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screamer_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %30, label %56 [
    i32 128, label %31
  ]

31:                                               ; preds = %4
  %32 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %33 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %36 = load i32, i32* @SCREAMER_CODEC_ADDR2, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %37, 6
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @screamer_write_locked(%struct.davbus_softc* %35, i32 %36, i32 %40)
  %42 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %43 = load i32, i32* @SCREAMER_CODEC_ADDR4, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 6
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @screamer_write_locked(%struct.davbus_softc* %42, i32 %43, i32 %47)
  %49 = load %struct.davbus_softc*, %struct.davbus_softc** %10, align 8
  %50 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @screamer_write_locked(%struct.davbus_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
