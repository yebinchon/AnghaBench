; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_read_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c___ttm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_read_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_read_lock(%struct.ttm_lock* %0) #0 {
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
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ttm_lock_send_sig(i32 %13)
  store i32 0, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_lock_send_sig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
