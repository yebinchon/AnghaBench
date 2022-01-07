; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_undo_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_undo_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32 }
%struct.hdaa_widget = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*, i32, i32)* @hdaa_audio_undo_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_undo_trace(%struct.hdaa_devinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdaa_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdaa_widget*, align 8
  %8 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %10 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %66, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %19, i32 %20)
  store %struct.hdaa_widget* %21, %struct.hdaa_widget** %7, align 8
  %22 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %23 = icmp eq %struct.hdaa_widget* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %26 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %18
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %32 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %44 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %48 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %53 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 8
  %54 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %55 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %54, i32 0, i32 3
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %39
  br label %64

57:                                               ; preds = %36
  %58 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %59 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 8
  %60 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %61 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %63 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %62, i32 0, i32 3
  store i32 -1, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %56
  br label %65

65:                                               ; preds = %64, %30
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %12

69:                                               ; preds = %12
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
