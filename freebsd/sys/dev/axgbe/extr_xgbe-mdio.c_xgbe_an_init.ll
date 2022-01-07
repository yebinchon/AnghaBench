; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@XGBE_XNP_NP_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @MDIO_MMD_AN, align 4
  %6 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %7 = add nsw i64 %6, 2
  %8 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %4, i32 %5, i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -49153
  store i32 %10, i32* %3, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = load i32, i32* @MDIO_MMD_AN, align 4
  %13 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %14 = add nsw i64 %13, 2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %11, i32 %12, i64 %14, i32 %15)
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = load i32, i32* @MDIO_MMD_AN, align 4
  %19 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %17, i32 %18, i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, 128
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -129
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %35
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, 32
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, -33
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = load i32, i32* @MDIO_MMD_AN, align 4
  %60 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %58, i32 %59, i64 %61, i32 %62)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = load i32, i32* @MDIO_MMD_AN, align 4
  %66 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %67 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %64, i32 %65, i64 %66)
  store i32 %67, i32* %3, align 4
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ADVERTISED_Pause, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, 1024
  store i32 %77, i32* %3, align 4
  br label %81

78:                                               ; preds = %57
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, -1025
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, 2048
  store i32 %91, i32* %3, align 4
  br label %95

92:                                               ; preds = %81
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, -2049
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @XGBE_XNP_NP_EXCHANGE, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %101 = load i32, i32* @MDIO_MMD_AN, align 4
  %102 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %100, i32 %101, i64 %102, i32 %103)
  ret void
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
