; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_disable_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_disable_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_pf_qtag = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@I40E_QTX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TX queue %d still enabled!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_disable_tx_ring(%struct.ixl_pf* %0, %struct.ixl_pf_qtag* %1, i32 %2) #0 {
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
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw* %17, i32 %18, i32 %19)
  %21 = call i32 @i40e_usec_delay(i32 500)
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @I40E_QTX_ENA(i32 %23)
  %25 = call i32 @rd32(%struct.i40e_hw* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @I40E_QTX_ENA_QENA_REQ_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @I40E_QTX_ENA(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @wr32(%struct.i40e_hw* %30, i32 %32, i32 %33)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %50, %3
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @I40E_QTX_ENA(i32 %40)
  %42 = call i32 @rd32(%struct.i40e_hw* %39, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %53

48:                                               ; preds = %38
  %49 = call i32 @i40e_msec_delay(i32 10)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %35

53:                                               ; preds = %47, %35
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @I40E_QTX_ENA_QENA_STAT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %60 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i32) #1

declare dso_local i32 @i40e_pre_tx_queue_cfg(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QTX_ENA(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
