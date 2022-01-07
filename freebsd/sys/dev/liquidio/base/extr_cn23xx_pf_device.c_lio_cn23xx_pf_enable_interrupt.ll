; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }
%struct.lio_cn23xx_pf = type { i32, i32 }

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@OCTEON_OUTPUT_INTR = common dso_local global i32 0, align 4
@LIO_CN23XX_INTR_PKT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @lio_cn23xx_pf_enable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_enable_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio_cn23xx_pf*, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %10, %struct.lio_cn23xx_pf** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %5, align 8
  %17 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %5, align 8
  %20 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lio_write_csr64(%struct.octeon_device* %15, i32 %18, i32 %21)
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OCTEON_OUTPUT_INTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %5, align 8
  %31 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lio_read_csr64(%struct.octeon_device* %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @LIO_CN23XX_INTR_PKT_DATA, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %38 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %5, align 8
  %39 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @lio_write_csr64(%struct.octeon_device* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %23
  br label %44

44:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
