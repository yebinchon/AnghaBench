; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_reg_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_reg_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.lio_cn23xx_pf = type { i32, i32, i32 }

@LIO_CN23XX_SLI_WIN_WR_ADDR64 = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WIN_RD_ADDR_HI = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WIN_RD_ADDR64 = common dso_local global i8* null, align 8
@LIO_CN23XX_SLI_WIN_WR_DATA_HI = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WIN_WR_DATA_LO = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WIN_WR_DATA64 = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WIN_RD_DATA64 = common dso_local global i32 0, align 4
@LIO_CN23XX_INTR_MASK = common dso_local global i32 0, align 4
@LIO_CN23XX_INTR_PKT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn23xx_pf_setup_reg_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_setup_reg_address(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_cn23xx_pf*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %4 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %7, %struct.lio_cn23xx_pf** %3, align 8
  %8 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_ADDR64, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @LIO_CN23XX_SLI_WIN_RD_ADDR_HI, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 8
  %16 = load i8*, i8** @LIO_CN23XX_SLI_WIN_RD_ADDR64, align 8
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** @LIO_CN23XX_SLI_WIN_RD_ADDR64, align 8
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_DATA_HI, align 4
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_DATA_LO, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_DATA64, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @LIO_CN23XX_SLI_WIN_RD_DATA64, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %41 = call i32 @lio_cn23xx_pf_get_pcie_qlmport(%struct.octeon_device* %40)
  %42 = load i32, i32* @LIO_CN23XX_INTR_MASK, align 4
  %43 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %44 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %1
  %50 = load i32, i32* @LIO_CN23XX_INTR_PKT_TIME, align 4
  %51 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %52 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %1
  %56 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @LIO_CN23XX_SLI_MAC_PF_INT_SUM64(i32 %58, i32 %61)
  %63 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %64 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @LIO_CN23XX_SLI_MAC_PF_INT_ENB64(i32 %67, i32 %70)
  %72 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %73 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @lio_cn23xx_pf_get_pcie_qlmport(%struct.octeon_device*) #1

declare dso_local i32 @LIO_CN23XX_SLI_MAC_PF_INT_SUM64(i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_MAC_PF_INT_ENB64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
