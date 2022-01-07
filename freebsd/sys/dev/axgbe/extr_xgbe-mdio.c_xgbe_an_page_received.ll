; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_page_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_page_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i32, i32 }

@ticks = common dso_local global i64 0, align 8
@XGBE_AN_MS_TIMEOUT = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@XGBE_AN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_an_page_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an_page_received(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @ticks, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XGBE_AN_MS_TIMEOUT, align 8
  %19 = load i64, i64* @hz, align 8
  %20 = mul i64 %18, %19
  %21 = udiv i64 %20, 1000
  %22 = add i64 %17, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @ticks, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 1
  store i32 129, i32* %30, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 2
  store i32 129, i32* %32, align 4
  %33 = load i64, i64* @ticks, align 8
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %14
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = call i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %43 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %42, i32 0, i32 1
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 2
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i32* [ %43, %41 ], [ %46, %44 ]
  store i32* %48, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %59 [
    i32 129, label %51
    i32 128, label %55
  ]

51:                                               ; preds = %47
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @xgbe_an_rx_bpa(%struct.xgbe_prv_data* %52, i32* %53)
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %47
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @xgbe_an_rx_xnp(%struct.xgbe_prv_data* %56, i32* %57)
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @XGBE_AN_ERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %55, %51
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_rx_bpa(%struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @xgbe_an_rx_xnp(%struct.xgbe_prv_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
