; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@LIO_CN23XX_SLI_WIN_WR_MASK_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BIST enabled for CN23XX soft reset\0A\00", align 1
@LIO_CN23XX_SLI_SCRATCH1 = common dso_local global i32 0, align 4
@LIO_CN23XX_RST_SOFT_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Reset completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_soft_reset(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %4 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %5 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_MASK_REG, align 4
  %6 = call i32 @lio_write_csr64(%struct.octeon_device* %4, i32 %5, i32 255)
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = call i32 @lio_dev_dbg(%struct.octeon_device* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = load i32, i32* @LIO_CN23XX_SLI_SCRATCH1, align 4
  %11 = call i32 @lio_write_csr64(%struct.octeon_device* %9, i32 %10, i32 4660)
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load i32, i32* @LIO_CN23XX_RST_SOFT_RST, align 4
  %14 = call i32 @lio_pci_readq(%struct.octeon_device* %12, i32 %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load i32, i32* @LIO_CN23XX_RST_SOFT_RST, align 4
  %17 = call i32 @lio_pci_writeq(%struct.octeon_device* %15, i32 1, i32 %16)
  %18 = call i32 @lio_mdelay(i32 100)
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = load i32, i32* @LIO_CN23XX_SLI_SCRATCH1, align 4
  %21 = call i64 @lio_read_csr64(%struct.octeon_device* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = call i32 @lio_dev_err(%struct.octeon_device* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = call i32 @lio_dev_dbg(%struct.octeon_device* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = load i32, i32* @LIO_CN23XX_SLI_WIN_WR_MASK_REG, align 4
  %31 = call i32 @lio_write_csr64(%struct.octeon_device* %29, i32 %30, i32 255)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_mdelay(i32) #1

declare dso_local i64 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
