; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_pf_qtag = type { i32 }

@IXL_DBG_EN_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Enabling PF RX ring %4d / VSI RX ring %4d...\0A\00", align 1
@I40E_QRX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RX queue %d still disabled!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_enable_rx_ring(%struct.ixl_pf* %0, %struct.ixl_pf_qtag* %1, i32 %2) #0 {
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.ixl_pf_qtag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %4, align 8
  store %struct.ixl_pf_qtag* %1, %struct.ixl_pf_qtag** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 1
  store %struct.i40e_hw* %13, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %18 = load i32, i32* @IXL_DBG_EN_DIS, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ixl_dbg(%struct.ixl_pf* %17, i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @I40E_QRX_ENA(i32 %23)
  %25 = call i32 @rd32(%struct.i40e_hw* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @I40E_QRX_ENA_QENA_REQ_MASK, align 4
  %27 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @I40E_QRX_ENA(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wr32(%struct.i40e_hw* %31, i32 %33, i32 %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %51, %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @I40E_QRX_ENA(i32 %41)
  %43 = call i32 @rd32(%struct.i40e_hw* %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %54

49:                                               ; preds = %39
  %50 = call i32 @i40e_usec_delay(i32 10)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %36

54:                                               ; preds = %48, %36
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %61 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QRX_ENA(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
