; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_rx_arbiter_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_rx_arbiter_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_RUPPBMR = common dso_local global i32 0, align 4
@IXGBE_RUPPBMR_MQA = common dso_local global i32 0, align 4
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_RMCS_RRM = common dso_local global i32 0, align 4
@IXGBE_RMCS_DFP = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_RT2CR_MCL_SHIFT = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_strict = common dso_local global i64 0, align 8
@IXGBE_RT2CR_LSP = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_RDMTS_1_2 = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_MPBEN = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_MCEN = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_rx_arbiter_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = load i32, i32* @IXGBE_RUPPBMR, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  %16 = load i32, i32* @IXGBE_RUPPBMR_MQA, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = load i32, i32* @IXGBE_RUPPBMR, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = load i32, i32* @IXGBE_RMCS, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @IXGBE_RMCS_ARBDIS, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @IXGBE_RMCS_RRM, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @IXGBE_RMCS_DFP, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = load i32, i32* @IXGBE_RMCS, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %36, i32 %37)
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %73, %4
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @IXGBE_RT2CR_MCL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %9, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ixgbe_dcb_tsa_strict, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %43
  %64 = load i32, i32* @IXGBE_RT2CR_LSP, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %43
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @IXGBE_RT2CR(i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %12, align 8
  br label %39

76:                                               ; preds = %39
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %78 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %79 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @IXGBE_RDRXCTL_RDMTS_1_2, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @IXGBE_RDRXCTL_MPBEN, align 4
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @IXGBE_RDRXCTL_MCEN, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %90 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %94 = load i32, i32* @IXGBE_RXCTRL, align 4
  %95 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %101 = load i32, i32* @IXGBE_RXCTRL, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %104
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RT2CR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
