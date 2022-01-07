; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_tumbler.c_tumbler_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_tumbler.c_tumbler_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.tumbler_softc = type { i32 }
%struct.mtx = type { i32 }

@tumbler_volume_table = common dso_local global i32* null, align 8
@TUMBLER_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @tumbler_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tumbler_softc*, align 8
  %11 = alloca %struct.mtx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %17 = call i32 @mix_getdevinfo(%struct.snd_mixer* %16)
  %18 = call %struct.tumbler_softc* @device_get_softc(i32 %17)
  store %struct.tumbler_softc* %18, %struct.tumbler_softc** %10, align 8
  %19 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %20 = call %struct.mtx* @mixer_get_lock(%struct.snd_mixer* %19)
  store %struct.mtx* %20, %struct.mtx** %11, align 8
  %21 = load %struct.mtx*, %struct.mtx** %11, align 8
  %22 = call i32 @mtx_owned(%struct.mtx* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %98 [
    i32 128, label %24
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 100
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ugt i32 %28, 100
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  store i32 0, i32* %5, align 4
  br label %99

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** @tumbler_volume_table, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %35, %34
  %43 = phi i32 [ 0, %34 ], [ %41, %35 ]
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** @tumbler_volume_table, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = phi i32 [ 0, %46 ], [ %53, %47 ]
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %56, 16711680
  %58 = ashr i32 %57, 16
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, 16711680
  %69 = ashr i32 %68, 16
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 65280
  %73 = ashr i32 %72, 8
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 4
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %75, 255
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 5
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %54
  %81 = load %struct.mtx*, %struct.mtx** %11, align 8
  %82 = call i32 @mtx_unlock(%struct.mtx* %81)
  br label %83

83:                                               ; preds = %80, %54
  %84 = load %struct.tumbler_softc*, %struct.tumbler_softc** %10, align 8
  %85 = load i32, i32* @TUMBLER_VOLUME, align 4
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %87 = call i32 @tumbler_write(%struct.tumbler_softc* %84, i32 %85, i32* %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.mtx*, %struct.mtx** %11, align 8
  %92 = call i32 @mtx_lock(%struct.mtx* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %94, %96
  store i32 %97, i32* %5, align 4
  br label %99

98:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %93, %30
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.tumbler_softc* @device_get_softc(i32) #1

declare dso_local i32 @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local %struct.mtx* @mixer_get_lock(%struct.snd_mixer*) #1

declare dso_local i32 @mtx_owned(%struct.mtx*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @tumbler_write(%struct.tumbler_softc*, i32, i32*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
