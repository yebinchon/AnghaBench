; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_jack_poll_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_jack_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.hdaa_widget = type { i64, i64 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hdaa_jack_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_jack_poll_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.hdaa_devinfo*
  store %struct.hdaa_devinfo* %7, %struct.hdaa_devinfo** %3, align 8
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %9 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %8)
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %11 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %16 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %15)
  br label %78

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %65, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %21 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %26 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %65

35:                                               ; preds = %24
  %36 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %37 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %38 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 15
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %36, i32 %46)
  store %struct.hdaa_widget* %47, %struct.hdaa_widget** %4, align 8
  %48 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %49 = icmp eq %struct.hdaa_widget* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %35
  %51 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %52 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %57 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %50, %35
  br label %65

62:                                               ; preds = %55
  %63 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %64 = call i32 @hdaa_presence_handler(%struct.hdaa_widget* %63)
  br label %65

65:                                               ; preds = %62, %61, %34
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %18

68:                                               ; preds = %18
  %69 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %70 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %69, i32 0, i32 2
  %71 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %72 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %75 = call i32 @callout_reset(i32* %70, i64 %73, void (i8*)* @hdaa_jack_poll_callback, %struct.hdaa_devinfo* %74)
  %76 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %77 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %76)
  br label %78

78:                                               ; preds = %68, %14
  ret void
}

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_presence_handler(%struct.hdaa_widget*) #1

declare dso_local i32 @callout_reset(i32*, i64, void (i8*)*, %struct.hdaa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
