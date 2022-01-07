; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_disable_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_disable_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_pf_qtag = type { i32 }

@I40E_QRX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RX queue %d still enabled!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_disable_rx_ring(%struct.ixl_pf* %0, %struct.ixl_pf_qtag* %1, i32 %2) #0 {
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
  %19 = call i32 @I40E_QRX_ENA(i32 %18)
  %20 = call i32 @rd32(%struct.i40e_hw* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @I40E_QRX_ENA_QENA_REQ_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @I40E_QRX_ENA(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @wr32(%struct.i40e_hw* %25, i32 %27, i32 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %45, %3
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @I40E_QRX_ENA(i32 %35)
  %37 = call i32 @rd32(%struct.i40e_hw* %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %48

43:                                               ; preds = %33
  %44 = call i32 @i40e_msec_delay(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %30

48:                                               ; preds = %42, %30
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %55 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QRX_ENA(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
