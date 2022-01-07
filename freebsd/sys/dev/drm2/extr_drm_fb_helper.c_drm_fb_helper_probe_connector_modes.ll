; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_probe_connector_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_probe_connector_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.drm_connector*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, i32, i32)* @drm_fb_helper_probe_connector_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_fb_helper_probe_connector_modes(%struct.drm_fb_helper* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.drm_connector*, %struct.drm_connector** %24, align 8
  store %struct.drm_connector* %25, %struct.drm_connector** %7, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64 (%struct.drm_connector*, i32, i32)*, i64 (%struct.drm_connector*, i32, i32)** %29, align 8
  %31 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 %30(%struct.drm_connector* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %16
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
