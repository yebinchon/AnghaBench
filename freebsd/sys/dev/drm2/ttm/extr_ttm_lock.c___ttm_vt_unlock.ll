; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_vt_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_vt_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32, i32 }

@TTM_VT_LOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_vt_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_vt_unlock(%struct.ttm_lock* %0) #0 {
  %2 = alloca %struct.ttm_lock*, align 8
  %3 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %4, i32 0, i32 1
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TTM_VT_LOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @TTM_VT_LOCK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %24 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %28 = call i32 @wakeup(%struct.ttm_lock* %27)
  %29 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %30 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %29, i32 0, i32 1
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wakeup(%struct.ttm_lock*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
