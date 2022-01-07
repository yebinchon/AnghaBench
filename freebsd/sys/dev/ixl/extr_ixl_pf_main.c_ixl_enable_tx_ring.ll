; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_pf_qtag = type { i32 }

@IXL_DBG_EN_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Enabling PF TX ring %4d / VSI TX ring %4d...\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TX queue %d still disabled!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_enable_tx_ring(%struct.ixl_pf* %0, %struct.ixl_pf_qtag* %1, i32 %2) #0 {
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
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @I40E_QTX_ENA(i32 %27)
  %29 = call i32 @rd32(%struct.i40e_hw* %26, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @I40E_QTX_ENA_QENA_REQ_MASK, align 4
  %31 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @I40E_QTX_ENA(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @wr32(%struct.i40e_hw* %35, i32 %37, i32 %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %3
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @I40E_QTX_ENA(i32 %45)
  %47 = call i32 @rd32(%struct.i40e_hw* %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %58

53:                                               ; preds = %43
  %54 = call i32 @i40e_usec_delay(i32 10)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %40

58:                                               ; preds = %52, %40
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %65 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32, i32) #1

declare dso_local i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QTX_ENA(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
