; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_add_ctl_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_add_ctl_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { i32, i32, i32*, i32, i32, %struct.uaudio_mixer_node* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.uaudio_mixer_node*)* @uaudio_mixer_add_ctl_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_add_ctl_sub(%struct.uaudio_softc* %0, %struct.uaudio_mixer_node* %1) #0 {
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca %struct.uaudio_mixer_node*, align 8
  %5 = alloca %struct.uaudio_mixer_node*, align 8
  %6 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %3, align 8
  store %struct.uaudio_mixer_node* %1, %struct.uaudio_mixer_node** %4, align 8
  %7 = load i32, i32* @M_USBDEV, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call %struct.uaudio_mixer_node* @malloc(i32 32, i32 %7, i32 %8)
  store %struct.uaudio_mixer_node* %9, %struct.uaudio_mixer_node** %5, align 8
  %10 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %11 = icmp ne %struct.uaudio_mixer_node* %10, null
  br i1 %11, label %12, label %78

12:                                               ; preds = %2
  %13 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %14 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %15 = call i32 @memcpy(%struct.uaudio_mixer_node* %13, %struct.uaudio_mixer_node* %14, i32 32)
  %16 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %16, i32 0, i32 1
  %18 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %17, align 8
  %19 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %20 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %19, i32 0, i32 5
  store %struct.uaudio_mixer_node* %18, %struct.uaudio_mixer_node** %20, align 8
  %21 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %22 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %22, i32 0, i32 1
  store %struct.uaudio_mixer_node* %21, %struct.uaudio_mixer_node** %23, align 8
  %24 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %74, %12
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %31 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %36 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %63 [
    i32 1, label %38
    i32 2, label %53
  ]

38:                                               ; preds = %34
  %39 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %40 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %43 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sdiv i32 %45, 2
  %47 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %48 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %73

53:                                               ; preds = %34
  %54 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %55 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %58 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %73

63:                                               ; preds = %34
  %64 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %65 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %68 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %53, %38
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %28

77:                                               ; preds = %28
  br label %80

78:                                               ; preds = %2
  %79 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %77
  ret void
}

declare dso_local %struct.uaudio_mixer_node* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.uaudio_mixer_node*, %struct.uaudio_mixer_node*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
