; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_write_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32, i32, i32, i32 }

@TTM_WRITE_LOCK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_write_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_write_lock(%struct.ttm_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %6 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %12 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ttm_lock_send_sig(i32 %13)
  store i32 0, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %30 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 1, i32* %4, align 4
  br label %43

37:                                               ; preds = %20, %15
  %38 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %39 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %40 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_lock_send_sig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
