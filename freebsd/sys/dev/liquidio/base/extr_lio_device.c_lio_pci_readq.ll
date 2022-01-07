; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_pci_readq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_pci_readq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LIO_CN23XX_PF_VID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_pci_readq(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 32
  store volatile i32 %12, i32* %7, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LIO_CN23XX_PF_VID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load volatile i32, i32* %7, align 4
  %20 = or i32 %19, 393216
  store volatile i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load volatile i32, i32* %7, align 4
  %28 = call i32 @lio_write_csr32(%struct.octeon_device* %22, i32 %26, i32 %27)
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lio_read_csr32(%struct.octeon_device* %29, i32 %33)
  store volatile i32 %34, i32* %6, align 4
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @lio_write_csr32(%struct.octeon_device* %35, i32 %39, i32 %40)
  %42 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lio_read_csr32(%struct.octeon_device* %42, i32 %46)
  store volatile i32 %47, i32* %6, align 4
  %48 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lio_read_csr64(%struct.octeon_device* %48, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 1
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
