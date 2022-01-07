; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_is_stale.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_is_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i64, i64 }

@V_nd6_gctimer = common dso_local global i32 0, align 4
@V_nd6_delay = common dso_local global i32 0, align 4
@hz = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llentry*, i64*, i32*)* @nd6_is_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd6_is_stale(%struct.llentry* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.llentry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.llentry* %0, %struct.llentry** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @V_nd6_gctimer, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @V_nd6_delay, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.llentry*, %struct.llentry** %5, align 8
  %17 = call i32 @LLE_REQ_LOCK(%struct.llentry* %16)
  %18 = load %struct.llentry*, %struct.llentry** %5, align 8
  %19 = getelementptr inbounds %struct.llentry, %struct.llentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.llentry*, %struct.llentry** %5, align 8
  %22 = getelementptr inbounds %struct.llentry, %struct.llentry* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.llentry*, %struct.llentry** %5, align 8
  %25 = call i32 @LLE_REQ_UNLOCK(%struct.llentry* %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @MIN(i32 %29, i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* @hz, align 8
  %33 = load i64, i64* %12, align 8
  %34 = mul nsw i64 %33, %32
  store i64 %34, i64* %12, align 8
  %35 = load %struct.llentry*, %struct.llentry** %5, align 8
  %36 = getelementptr inbounds %struct.llentry, %struct.llentry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.llentry*, %struct.llentry** %5, align 8
  %43 = getelementptr inbounds %struct.llentry, %struct.llentry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %52

46:                                               ; preds = %28
  %47 = load %struct.llentry*, %struct.llentry** %5, align 8
  %48 = getelementptr inbounds %struct.llentry, %struct.llentry* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load %struct.llentry*, %struct.llentry** %5, align 8
  %51 = getelementptr inbounds %struct.llentry, %struct.llentry* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %77

56:                                               ; preds = %52
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  store i32 1, i32* %4, align 4
  br label %77

59:                                               ; preds = %3
  %60 = load i64, i64* @time_uptime, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %12, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i64, i64* @hz, align 8
  %73 = mul nsw i64 %71, %72
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  store i32 1, i32* %4, align 4
  br label %77

75:                                               ; preds = %59
  %76 = load i32*, i32** %7, align 8
  store i32 1, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %67, %56, %55
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @LLE_REQ_LOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_REQ_UNLOCK(%struct.llentry*) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
