; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_reset_io_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_reset_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BUSY_READING_REG_PF_LOOP_COUNT = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clearing the reset failed for qno: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_reset_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_reset_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %11 = load i64, i64* @BUSY_READING_REG_PF_LOOP_COUNT, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %16, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %40, %1
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %29)
  %31 = call i32 @lio_read_csr64(%struct.octeon_device* %28, i32 %30)
  store volatile i32 %31, i32* %4, align 4
  %32 = load volatile i32, i32* %4, align 4
  %33 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %34 = or i32 %32, %33
  store volatile i32 %34, i32* %4, align 4
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %36)
  %38 = load volatile i32, i32* %4, align 4
  %39 = call i32 @lio_write_csr64(%struct.octeon_device* %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %23

43:                                               ; preds = %23
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %106, %43
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %109

49:                                               ; preds = %45
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %51)
  %53 = call i32 @lio_read_csr64(%struct.octeon_device* %50, i32 %52)
  store volatile i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %69, %49
  %55 = load volatile i32, i32* %10, align 4
  %56 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load volatile i32, i32* %10, align 4
  %61 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %64, %59, %54
  %68 = phi i1 [ false, %59 ], [ false, %54 ], [ %66, %64 ]
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %71)
  %73 = call i32 @lio_read_csr64(%struct.octeon_device* %70, i32 %72)
  store volatile i32 %73, i32* %10, align 4
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %6, align 8
  br label %54

76:                                               ; preds = %67
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @lio_dev_err(%struct.octeon_device* %80, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %81)
  store i32 -1, i32* %2, align 4
  br label %111

83:                                               ; preds = %76
  %84 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %85 = xor i32 %84, -1
  %86 = load volatile i32, i32* %10, align 4
  %87 = and i32 %86, %85
  store volatile i32 %87, i32* %10, align 4
  %88 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %89)
  %91 = load volatile i32, i32* %10, align 4
  %92 = call i32 @lio_write_csr64(%struct.octeon_device* %88, i32 %90, i32 %91)
  %93 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %94)
  %96 = call i32 @lio_read_csr64(%struct.octeon_device* %93, i32 %95)
  store volatile i32 %96, i32* %10, align 4
  %97 = load volatile i32, i32* %10, align 4
  %98 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %83
  %102 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @lio_dev_err(%struct.octeon_device* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  store i32 -1, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %45

109:                                              ; preds = %45
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %79
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
