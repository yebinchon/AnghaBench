; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_tx_buf*, %struct.ifnet* }
%struct.ipoib_tx_buf = type { i32 }
%struct.ifnet = type { i32 }
%struct.ib_wc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"send completion: id %d, status: %d\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"send completion event with wrid %d (> %d)\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IPOIB_FLAG_ADMIN_UP = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed send event (status=%d, wrid=%d vend_err %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*, %struct.ib_wc*)* @ipoib_ib_handle_tx_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ib_handle_tx_wc(%struct.ipoib_dev_priv* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoib_tx_buf*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 5
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ipoib_sendq_size, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ipoib_sendq_size, align 4
  %30 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 4
  %34 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %34, i64 %36
  store %struct.ipoib_tx_buf* %37, %struct.ipoib_tx_buf** %7, align 8
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %42 = call i32 @ipoib_dma_unmap_tx(i32 %40, %struct.ipoib_tx_buf* %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %45 = call i32 @if_inc_counter(%struct.ifnet* %43, i32 %44, i32 1)
  %46 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %47 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @m_freem(i32 %48)
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @ipoib_sendq_size, align 4
  %59 = lshr i32 %58, 1
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %31
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i32, i32* @IPOIB_FLAG_ADMIN_UP, align 4
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %73, i32 0, i32 1
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %71, %64, %31
  %85 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %86 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IB_WC_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %92 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %98 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %99 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %103 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %26, %96, %90, %84
  ret void
}

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32, ...) #1

declare dso_local i32 @ipoib_dma_unmap_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
