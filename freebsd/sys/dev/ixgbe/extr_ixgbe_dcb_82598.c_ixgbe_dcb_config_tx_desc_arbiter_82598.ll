; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tx_desc_arbiter_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tx_desc_arbiter_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_DPMCS = common dso_local global i32 0, align 4
@IXGBE_DPMCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_DPMCS_TSOEF = common dso_local global i32 0, align 4
@IXGBE_DPMCS_MTSOS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_TDTQ2TCCR_MCL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TDTQ2TCCR_BWG_SHIFT = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_group_strict_cee = common dso_local global i64 0, align 8
@IXGBE_TDTQ2TCCR_GSP = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_strict = common dso_local global i64 0, align 8
@IXGBE_TDTQ2TCCR_LSP = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %15 = load i32, i32* @IXGBE_DPMCS, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @IXGBE_DPMCS_ARBDIS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @IXGBE_DPMCS_TSOEF, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @IXGBE_DPMCS_MTSOS_SHIFT, align 4
  %25 = shl i32 4, %24
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %29 = load i32, i32* @IXGBE_DPMCS, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %86, %5
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @IXGBE_TDTQ2TCCR_MCL_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @IXGBE_TDTQ2TCCR_BWG_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ixgbe_dcb_tsa_group_strict_cee, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %36
  %66 = load i32, i32* @IXGBE_TDTQ2TCCR_GSP, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %36
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ixgbe_dcb_tsa_strict, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @IXGBE_TDTQ2TCCR_LSP, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @IXGBE_TDTQ2TCCR(i64 %82)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %32

89:                                               ; preds = %32
  %90 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %90
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TDTQ2TCCR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
