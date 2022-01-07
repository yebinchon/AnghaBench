; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_sense_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_sense_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32, i32 }
%struct.hdaa_widget = type { i64, i64, i32, i32 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_sense_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_sense_deinit(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %5 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %6 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %5, i32 0, i32 3
  %7 = call i32 @callout_stop(i32* %6)
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %9 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %14 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %18, i32 %19)
  store %struct.hdaa_widget* %20, %struct.hdaa_widget** %3, align 8
  %21 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %22 = icmp eq %struct.hdaa_widget* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %25 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %30 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %23, %17
  br label %63

35:                                               ; preds = %28
  %36 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %37 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %63

41:                                               ; preds = %35
  %42 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %43 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %46 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HDA_CMD_SET_UNSOLICITED_RESPONSE(i32 0, i32 %47, i32 0)
  %49 = call i32 @hda_command(i32 %44, i32 %48)
  %50 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %51 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_get_parent(i32 %52)
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %58 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @HDAC_UNSOL_FREE(i32 %53, i32 %56, i32 %59)
  %61 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %62 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %61, i32 0, i32 2
  store i32 -1, i32* %62, align 8
  br label %63

63:                                               ; preds = %41, %40, %34
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_UNSOLICITED_RESPONSE(i32, i32, i32) #1

declare dso_local i32 @HDAC_UNSOL_FREE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
