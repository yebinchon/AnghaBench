; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_adjust_amp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_adjust_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i64, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { %struct.hdaa_pcm_devinfo*, %struct.TYPE_2__* }
%struct.hdaa_pcm_devinfo = type { i32, i32*, i32* }
%struct.TYPE_2__ = type { %struct.hdaa_pcm_devinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_widget*, i32, i32, i32, i32)* @hdaa_adjust_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_adjust_amp(%struct.hdaa_widget* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hdaa_widget*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hdaa_devinfo*, align 8
  %12 = alloca %struct.hdaa_pcm_devinfo*, align 8
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %14 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %13, i32 0, i32 1
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %14, align 8
  store %struct.hdaa_devinfo* %15, %struct.hdaa_devinfo** %11, align 8
  %16 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %17 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %22 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %25 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %28, align 8
  store %struct.hdaa_pcm_devinfo* %29, %struct.hdaa_pcm_devinfo** %12, align 8
  br label %35

30:                                               ; preds = %5
  %31 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %32 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %31, i32 0, i32 0
  %33 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %32, align 8
  %34 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %33, i64 0
  store %struct.hdaa_pcm_devinfo* %34, %struct.hdaa_pcm_devinfo** %12, align 8
  br label %35

35:                                               ; preds = %30, %20
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %42 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %116

52:                                               ; preds = %48, %45
  %53 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %54 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %63 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %73 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %80 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %116

85:                                               ; preds = %61, %52
  %86 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %87 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @imax(i32 %92, i32 %93)
  %95 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %96 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %102 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @imin(i32 %107, i32 %108)
  %110 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %12, align 8
  %111 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %51, %85, %70
  ret void
}

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
