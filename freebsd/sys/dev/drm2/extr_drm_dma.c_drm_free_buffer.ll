; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dma.c_drm_free_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dma.c_drm_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_buf = type { i64, i32*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_free_buffer(%struct.drm_device* %0, %struct.drm_buf* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %4, align 8
  %5 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %6 = icmp ne %struct.drm_buf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %10 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %12 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %14 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %16 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
