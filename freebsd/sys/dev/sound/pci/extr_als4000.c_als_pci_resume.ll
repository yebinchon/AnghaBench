; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"unable to reinitialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @als_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.sc_info* @pcm_getdevinfo(i32 %5)
  store %struct.sc_info* %6, %struct.sc_info** %4, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @snd_mtxlock(i32 %9)
  %11 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %12 = call i64 @als_init(%struct.sc_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_mtxunlock(i32 %19)
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @mixer_reinit(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_mtxunlock(i32 %31)
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %22
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 2
  %43 = call i32 @als_playback_start(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 1
  %53 = call i32 @als_capture_start(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @snd_mtxunlock(i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %26, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @als_init(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i64 @mixer_reinit(i32) #1

declare dso_local i32 @als_playback_start(%struct.TYPE_3__*) #1

declare dso_local i32 @als_capture_start(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
