; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_onyx.c_onyx_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_onyx.c_onyx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.onyx_softc = type { i32 }
%struct.mtx = type { i32 }

@PCM3052_REG_LEFT_ATTN = common dso_local global i32 0, align 4
@PCM3052_REG_RIGHT_ATTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @onyx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.onyx_softc*, align 8
  %11 = alloca %struct.mtx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %16 = call i32 @mix_getdevinfo(%struct.snd_mixer* %15)
  %17 = call %struct.onyx_softc* @device_get_softc(i32 %16)
  store %struct.onyx_softc* %17, %struct.onyx_softc** %10, align 8
  %18 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %19 = call %struct.mtx* @mixer_get_lock(%struct.snd_mixer* %18)
  store %struct.mtx* %19, %struct.mtx** %11, align 8
  %20 = load %struct.mtx*, %struct.mtx** %11, align 8
  %21 = call i32 @mtx_owned(%struct.mtx* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %59 [
    i32 128, label %23
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 100
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ugt i32 %27, 100
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 0, i32* %5, align 4
  br label %60

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 128
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 128
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.mtx*, %struct.mtx** %11, align 8
  %39 = call i32 @mtx_unlock(%struct.mtx* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.onyx_softc*, %struct.onyx_softc** %10, align 8
  %42 = load i32, i32* @PCM3052_REG_LEFT_ATTN, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @onyx_write(%struct.onyx_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.onyx_softc*, %struct.onyx_softc** %10, align 8
  %46 = load i32, i32* @PCM3052_REG_RIGHT_ATTN, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @onyx_write(%struct.onyx_softc* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.mtx*, %struct.mtx** %11, align 8
  %53 = call i32 @mtx_lock(%struct.mtx* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %55, %57
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %54, %29
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.onyx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local %struct.mtx* @mixer_get_lock(%struct.snd_mixer*) #1

declare dso_local i32 @mtx_owned(%struct.mtx*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @onyx_write(%struct.onyx_softc*, i32, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
