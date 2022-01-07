; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_incompat_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_incompat_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XGBE_RX_ERROR = common dso_local global i8* null, align 8
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@XGBE_AN_NO_LINK = common dso_local global i32 0, align 4
@XGBE_RX_BPA = common dso_local global i64 0, align 8
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@XGBE_AN_INCOMPAT_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_an_incompat_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an_incompat_link(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %5 = call i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load i8*, i8** @XGBE_RX_ERROR, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %7
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @XGBE_AN_NO_LINK, align 4
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %19, %7
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XGBE_RX_BPA, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @XGBE_AN_NO_LINK, align 4
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %29
  br label %61

38:                                               ; preds = %1
  %39 = load i8*, i8** @XGBE_RX_ERROR, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* @XGBE_AN_NO_LINK, align 4
  store i32 %51, i32* %2, align 4
  br label %69

52:                                               ; preds = %38
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XGBE_RX_BPA, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @XGBE_AN_NO_LINK, align 4
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %37
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %63 = call i32 @xgbe_disable_an(%struct.xgbe_prv_data* %62)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %65 = call i32 @xgbe_switch_mode(%struct.xgbe_prv_data* %64)
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = call i32 @xgbe_restart_an(%struct.xgbe_prv_data* %66)
  %68 = load i32, i32* @XGBE_AN_INCOMPAT_LINK, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %58, %50, %35, %27
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_disable_an(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_switch_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_restart_an(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
