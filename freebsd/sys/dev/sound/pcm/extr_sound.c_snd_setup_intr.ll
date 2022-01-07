; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_snd_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_snd_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.snddev_info = type { i32 }

@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@SD_F_MPSAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_setup_intr(i32 %0, %struct.resource* %1, i32 %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.snddev_info*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.resource* %1, %struct.resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  %14 = load i32, i32* @INTR_MPSAFE, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @INTR_TYPE_AV, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.snddev_info* @device_get_softc(i32 %20)
  store %struct.snddev_info* %21, %struct.snddev_info** %13, align 8
  %22 = load %struct.snddev_info*, %struct.snddev_info** %13, align 8
  %23 = icmp ne %struct.snddev_info* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @INTR_MPSAFE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @SD_F_MPSAFE, align 4
  %31 = load %struct.snddev_info*, %struct.snddev_info** %13, align 8
  %32 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24, %6
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i8**, i8*** %12, align 8
  %42 = call i32 @bus_setup_intr(i32 %36, %struct.resource* %37, i32 %38, i32* null, i32 %39, i8* %40, i8** %41)
  ret i32 %42
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
