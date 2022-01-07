; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_llinfo_settimer_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_llinfo_settimer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i64, i32, i64 }

@time_uptime = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@nd6_llinfo_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llentry*, i64)* @nd6_llinfo_settimer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_llinfo_settimer_locked(%struct.llentry* %0, i64 %1) #0 {
  %3 = alloca %struct.llentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.llentry* %0, %struct.llentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.llentry*, %struct.llentry** %3, align 8
  %7 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %6)
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.llentry*, %struct.llentry** %3, align 8
  %12 = getelementptr inbounds %struct.llentry, %struct.llentry* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.llentry*, %struct.llentry** %3, align 8
  %14 = getelementptr inbounds %struct.llentry, %struct.llentry* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.llentry*, %struct.llentry** %3, align 8
  %16 = getelementptr inbounds %struct.llentry, %struct.llentry* %15, i32 0, i32 1
  %17 = call i32 @callout_stop(i32* %16)
  store i32 %17, i32* %5, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i64, i64* @time_uptime, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @hz, align 8
  %22 = sdiv i64 %20, %21
  %23 = add nsw i64 %19, %22
  %24 = load %struct.llentry*, %struct.llentry** %3, align 8
  %25 = getelementptr inbounds %struct.llentry, %struct.llentry* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.llentry*, %struct.llentry** %3, align 8
  %27 = call i32 @LLE_ADDREF(%struct.llentry* %26)
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @INT_MAX, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.llentry*, %struct.llentry** %3, align 8
  %36 = getelementptr inbounds %struct.llentry, %struct.llentry* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.llentry*, %struct.llentry** %3, align 8
  %38 = getelementptr inbounds %struct.llentry, %struct.llentry* %37, i32 0, i32 1
  %39 = load i64, i64* @INT_MAX, align 8
  %40 = load i32, i32* @nd6_llinfo_timer, align 4
  %41 = load %struct.llentry*, %struct.llentry** %3, align 8
  %42 = call i32 @callout_reset(i32* %38, i64 %39, i32 %40, %struct.llentry* %41)
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %18
  %44 = load %struct.llentry*, %struct.llentry** %3, align 8
  %45 = getelementptr inbounds %struct.llentry, %struct.llentry* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.llentry*, %struct.llentry** %3, align 8
  %47 = getelementptr inbounds %struct.llentry, %struct.llentry* %46, i32 0, i32 1
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* @nd6_llinfo_timer, align 4
  %50 = load %struct.llentry*, %struct.llentry** %3, align 8
  %51 = call i32 @callout_reset(i32* %47, i64 %48, i32 %49, %struct.llentry* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %31
  br label %53

53:                                               ; preds = %52, %10
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.llentry*, %struct.llentry** %3, align 8
  %58 = call i32 @LLE_REMREF(%struct.llentry* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @callout_reset(i32*, i64, i32, %struct.llentry*) #1

declare dso_local i32 @LLE_REMREF(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
