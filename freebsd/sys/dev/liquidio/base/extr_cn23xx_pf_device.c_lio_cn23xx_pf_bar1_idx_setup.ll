; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_bar1_idx_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_bar1_idx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@LIO_PCI_BAR1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i32, i32)* @lio_cn23xx_pf_bar1_idx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_bar1_idx_setup(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32 %17, i32 %18)
  %20 = call i8* @lio_pci_readq(%struct.octeon_device* %14, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  store volatile i32 %22, i32* %9, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %24 = load volatile i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967294
  %27 = trunc i64 %26 to i32
  %28 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32 %30, i32 %31)
  %33 = call i32 @lio_pci_writeq(%struct.octeon_device* %23, i32 %27, i32 %32)
  %34 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %35 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32 %37, i32 %38)
  %40 = call i8* @lio_pci_readq(%struct.octeon_device* %34, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  store volatile i32 %42, i32* %9, align 4
  br label %64

43:                                               ; preds = %4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 22
  %47 = shl i32 %46, 4
  %48 = load i32, i32* @LIO_PCI_BAR1_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32 %52, i32 %53)
  %55 = call i32 @lio_pci_writeq(%struct.octeon_device* %44, i32 %49, i32 %54)
  %56 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %57 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32 %59, i32 %60)
  %62 = call i8* @lio_pci_readq(%struct.octeon_device* %56, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store volatile i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %43, %13
  ret void
}

declare dso_local i8* @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_PEM_BAR1_INDEX_REG(i32, i32) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
