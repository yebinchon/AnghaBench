; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_oq_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_oq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__, i64, %struct.lio_droq** }
%struct.TYPE_2__ = type { i64 }
%struct.lio_droq = type { i32, i64, i64, i32, i32 }
%struct.lio_cn23xx_pf = type { i32 }

@LIO_CN23XX_PKT_OUTPUT_CTL_TENB = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_CENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @lio_cn23xx_pf_setup_oq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_setup_oq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lio_droq*, align 8
  %6 = alloca %struct.lio_cn23xx_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 3
  %12 = load %struct.lio_droq**, %struct.lio_droq*** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %12, i64 %13
  %15 = load %struct.lio_droq*, %struct.lio_droq** %14, align 8
  store %struct.lio_droq* %15, %struct.lio_droq** %5, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %19, %struct.lio_cn23xx_pf** %6, align 8
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @LIO_CN23XX_SLI_OQ_BASE_ADDR64(i64 %27)
  %29 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %30 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @lio_write_csr64(%struct.octeon_device* %26, i32 %28, i32 %31)
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @LIO_CN23XX_SLI_OQ_SIZE(i64 %34)
  %36 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %37 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lio_write_csr32(%struct.octeon_device* %33, i32 %35, i64 %38)
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE(i64 %41)
  %43 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %44 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @lio_write_csr32(%struct.octeon_device* %40, i32 %42, i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i64 %47)
  %49 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %50 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i64 %51)
  %53 = load %struct.lio_droq*, %struct.lio_droq** %5, align 8
  %54 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %2
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %61)
  %63 = call i64 @lio_read_csr32(%struct.octeon_device* %60, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_TENB, align 8
  %65 = load i64, i64* %9, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %68)
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @lio_write_csr32(%struct.octeon_device* %67, i32 %69, i64 %70)
  %72 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %73)
  %75 = call i64 @lio_read_csr32(%struct.octeon_device* %72, i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_CENB, align 8
  %77 = load i64, i64* %9, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %80)
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @lio_write_csr32(%struct.octeon_device* %79, i32 %81, i64 %82)
  br label %104

84:                                               ; preds = %2
  %85 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %86 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %6, align 8
  %87 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LIO_GET_OQ_INTR_TIME_CFG(i32 %88)
  %90 = call i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device* %85, i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %6, align 8
  %92 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @LIO_GET_OQ_INTR_PKT_CFG(i32 %93)
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i64 %97)
  %99 = load i32, i32* %8, align 4
  %100 = shl i32 %99, 32
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @lio_write_csr64(%struct.octeon_device* %96, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %84, %59
  ret void
}

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_BASE_ADDR64(i64) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_SIZE(i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE(i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i64) #1

declare dso_local i64 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i64) #1

declare dso_local i64 @LIO_GET_OQ_INTR_TIME_CFG(i32) #1

declare dso_local i64 @LIO_GET_OQ_INTR_PKT_CFG(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
