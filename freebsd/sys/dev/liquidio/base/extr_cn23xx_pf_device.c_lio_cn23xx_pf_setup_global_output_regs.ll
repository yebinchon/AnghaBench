; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_global_output_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_global_output_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.lio_cn23xx_pf = type { i32 }

@LIO_CN23XX_SLI_OQ_WMARK = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_OUTPUT_CTL_DPTR = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_BMODE = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_ES_P = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_ROR = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_NSR = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_OUTPUT_CTL_ES = common dso_local global i64 0, align 8
@LIO_CN23XX_SLI_OUT_BP_EN2_W1S = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_OUT_BP_EN_W1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn23xx_pf_setup_global_output_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_setup_global_output_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_cn23xx_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %12, %struct.lio_cn23xx_pf** %3, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %24 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIO_GET_IS_SLI_BP_ON_CFG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = load i32, i32* @LIO_CN23XX_SLI_OQ_WMARK, align 4
  %31 = call i32 @lio_write_csr64(%struct.octeon_device* %29, i32 %30, i32 32)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = load i32, i32* @LIO_CN23XX_SLI_OQ_WMARK, align 4
  %35 = call i32 @lio_write_csr64(%struct.octeon_device* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %99, %36
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %38
  %43 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %44)
  %46 = call i64 @lio_read_csr32(%struct.octeon_device* %43, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_DPTR, align 8
  %48 = load i64, i64* %7, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_BMODE, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %7, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %7, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_ES_P, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %7, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_ROR, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %7, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_NSR, align 8
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %7, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_ES, align 8
  %75 = load i64, i64* %7, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %7, align 8
  %77 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @lio_write_csr32(%struct.octeon_device* %77, i32 %79, i64 %80)
  %82 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %83 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %84 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @LIO_GET_OQ_INTR_TIME_CFG(i32 %85)
  %87 = call i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device* %82, i64 %86)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i64 %89)
  %91 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %92 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @LIO_GET_OQ_INTR_PKT_CFG(i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = shl i32 %95, 32
  %97 = or i32 %94, %96
  %98 = call i32 @lio_write_csr64(%struct.octeon_device* %88, i32 %90, i32 %97)
  br label %99

99:                                               ; preds = %42
  %100 = load i64, i64* %6, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %38

102:                                              ; preds = %38
  %103 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %104 = load i32, i32* @LIO_CN23XX_SLI_OQ_WMARK, align 4
  %105 = call i32 @lio_write_csr64(%struct.octeon_device* %103, i32 %104, i32 64)
  %106 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %112 = load i32, i32* @LIO_CN23XX_SLI_OUT_BP_EN2_W1S, align 4
  %113 = call i32 @lio_write_csr64(%struct.octeon_device* %111, i32 %112, i32 -1)
  br label %118

114:                                              ; preds = %102
  %115 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %116 = load i32, i32* @LIO_CN23XX_SLI_OUT_BP_EN_W1S, align 4
  %117 = call i32 @lio_write_csr64(%struct.octeon_device* %115, i32 %116, i32 -1)
  br label %118

118:                                              ; preds = %114, %110
  ret void
}

declare dso_local i64 @LIO_GET_IS_SLI_BP_ON_CFG(i32) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i64) #1

declare dso_local i64 @LIO_GET_OQ_INTR_TIME_CFG(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i64) #1

declare dso_local i32 @LIO_GET_OQ_INTR_PKT_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
