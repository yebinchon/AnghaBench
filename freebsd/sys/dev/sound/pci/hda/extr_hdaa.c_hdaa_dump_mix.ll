; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_mix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i64, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32 }
%struct.hdaa_widget = type { i64, i64, i64 }

@SOUND_MIXER_IMIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Input Mix:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*)* @hdaa_dump_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_mix(%struct.hdaa_pcm_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %2, align 8
  %7 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %7, i32 0, i32 2
  %9 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %8, align 8
  store %struct.hdaa_devinfo* %9, %struct.hdaa_devinfo** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %11 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %16 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %20, i32 %21)
  store %struct.hdaa_widget* %22, %struct.hdaa_widget** %4, align 8
  %23 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %24 = icmp eq %struct.hdaa_widget* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %27 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %19
  br label %63

31:                                               ; preds = %25
  %32 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %33 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOUND_MIXER_IMIX, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %63

38:                                               ; preds = %31
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %43 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %63

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  %51 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %52 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %57 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %55, %46, %37, %30
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %71 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
