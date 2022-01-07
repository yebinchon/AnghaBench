; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tx_data_arbiter_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tx_data_arbiter_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_PDPMCS = common dso_local global i32 0, align 4
@IXGBE_PDPMCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_PDPMCS_TPPAC = common dso_local global i32 0, align 4
@IXGBE_PDPMCS_TRM = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_TDPT2TCCR_MCL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TDPT2TCCR_BWG_SHIFT = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_group_strict_cee = common dso_local global i64 0, align 8
@IXGBE_TDPT2TCCR_GSP = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_strict = common dso_local global i64 0, align 8
@IXGBE_TDPT2TCCR_LSP = common dso_local global i32 0, align 4
@IXGBE_DTXCTL = common dso_local global i32 0, align 4
@IXGBE_DTXCTL_ENDBUBD = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %14 = load i32, i32* @IXGBE_PDPMCS, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @IXGBE_PDPMCS_ARBDIS, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %11, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @IXGBE_PDPMCS_TPPAC, align 4
  %21 = load i32, i32* @IXGBE_PDPMCS_TRM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %26 = load i32, i32* @IXGBE_PDPMCS, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i32 %26, i32 %27)
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %82, %5
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IXGBE_TDPT2TCCR_MCL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @IXGBE_TDPT2TCCR_BWG_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ixgbe_dcb_tsa_group_strict_cee, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %33
  %62 = load i32, i32* @IXGBE_TDPT2TCCR_GSP, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %33
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ixgbe_dcb_tsa_strict, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @IXGBE_TDPT2TCCR_LSP, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @IXGBE_TDPT2TCCR(i64 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %77, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %29

85:                                               ; preds = %29
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %87 = load i32, i32* @IXGBE_DTXCTL, align 4
  %88 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @IXGBE_DTXCTL_ENDBUBD, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %93 = load i32, i32* @IXGBE_DTXCTL, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %96
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TDPT2TCCR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
