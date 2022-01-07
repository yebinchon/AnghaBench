; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_global_input_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_global_input_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.lio_instr_queue**, %struct.TYPE_2__, i64 }
%struct.lio_instr_queue = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.lio_cn23xx_pf = type { i32 }

@LIO_CN23XX_PKT_INPUT_CTL_MAC_NUM_POS = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_PF_NUM_POS = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_MASK = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_IN_DONE_WMARK_MASK = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_setup_global_input_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_setup_global_input_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_cn23xx_pf*, align 8
  %5 = alloca %struct.lio_instr_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %16, %struct.lio_cn23xx_pf** %4, align 8
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %24, %28
  store i64 %29, i64* %10, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = call i64 @lio_cn23xx_pf_reset_io_queues(%struct.octeon_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %118

34:                                               ; preds = %1
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_MAC_NUM_POS, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_PF_NUM_POS, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @lio_write_csr64(%struct.octeon_device* %50, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %39
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %35

58:                                               ; preds = %35
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %114, %58
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %60
  %65 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 2
  %67 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %67, i64 %68
  %70 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %69, align 8
  store %struct.lio_instr_queue* %70, %struct.lio_instr_queue** %5, align 8
  %71 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %72 = icmp ne %struct.lio_instr_queue* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %75 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  br label %80

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i64 %78)
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %82)
  %84 = call i32 @lio_read_csr64(%struct.octeon_device* %81, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_MASK, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @lio_write_csr64(%struct.octeon_device* %88, i64 %90, i32 %91)
  %93 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %4, align 8
  %94 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @LIO_GET_IQ_INTR_PKT_CFG(i32 %95)
  %97 = load i32, i32* @LIO_CN23XX_PKT_IN_DONE_WMARK_MASK, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %6, align 4
  %99 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @lio_read_csr64(%struct.octeon_device* %101, i64 %102)
  %104 = load i32, i32* @LIO_CN23XX_PKT_IN_DONE_WMARK_MASK, align 4
  %105 = load i32, i32* @LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS, align 4
  %106 = shl i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %103, %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  %113 = call i32 @lio_write_csr64(%struct.octeon_device* %99, i64 %100, i32 %112)
  br label %114

114:                                              ; preds = %80
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %60

117:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %33
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @lio_cn23xx_pf_reset_io_queues(%struct.octeon_device*) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i64, i32) #1

declare dso_local i64 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i64 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i64) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i64) #1

declare dso_local i32 @LIO_GET_IQ_INTR_PKT_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
