; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_iq_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_iq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, %struct.lio_instr_queue** }
%struct.TYPE_2__ = type { i64 }
%struct.lio_instr_queue = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"InstQ[%d]:dbell reg @ 0x%x instcnt_reg @ 0x%x\0A\00", align 1
@LIO_CN23XX_INTR_CINT_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @lio_cn23xx_pf_setup_iq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_setup_iq_regs(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lio_instr_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 2
  %9 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %9, i64 %10
  %12 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %11, align 8
  store %struct.lio_instr_queue* %12, %struct.lio_instr_queue** %5, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @LIO_CN23XX_SLI_IQ_BASE_ADDR64(i64 %20)
  %22 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %23 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lio_write_csr64(%struct.octeon_device* %19, i32 %21, i32 %24)
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @LIO_CN23XX_SLI_IQ_SIZE(i64 %27)
  %29 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %30 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @lio_write_csr32(%struct.octeon_device* %26, i32 %28, i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i64 %33)
  %35 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %36 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i64 %37)
  %39 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %40 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %44 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %47 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @lio_dev_dbg(%struct.octeon_device* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %45, i32 %48)
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %52 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lio_read_csr64(%struct.octeon_device* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %2
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %62 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LIO_CN23XX_INTR_CINT_ENB, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @lio_write_csr64(%struct.octeon_device* %60, i32 %63, i32 %66)
  br label %75

68:                                               ; preds = %2
  %69 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %70 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %71 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lio_write_csr64(%struct.octeon_device* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %59
  %76 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %77 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  ret void
}

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_BASE_ADDR64(i64) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_SIZE(i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i64) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i64) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i64, i32, i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
