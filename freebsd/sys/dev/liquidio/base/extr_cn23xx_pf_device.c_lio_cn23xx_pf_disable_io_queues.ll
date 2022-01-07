; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_disable_io_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_disable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LIO_CN23XX_PKT_INPUT_CTL_RING_ENB = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_PKT_IOQ_RING_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn23xx_pf_disable_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn23xx_pf_disable_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %86, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  %24 = call i32 @lio_ms_to_ticks(i32 1000)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i32 %26)
  %28 = call i64 @lio_read_csr64(%struct.octeon_device* %25, i32 %27)
  %29 = trunc i64 %28 to i32
  store volatile i32 %29, i32* %3, align 4
  %30 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RING_ENB, align 4
  %31 = xor i32 %30, -1
  %32 = load volatile i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store volatile i32 %33, i32* %3, align 4
  %34 = load volatile i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %35 = load volatile i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store volatile i32 %36, i32* %3, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i32 %38)
  %40 = load volatile i32, i32* %3, align 4
  %41 = call i32 @lio_write_csr64(%struct.octeon_device* %37, i32 %39, i32 %40)
  %42 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %43 = load i32, i32* @LIO_CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %44 = call i64 @lio_read_csr64(%struct.octeon_device* %42, i32 %43)
  %45 = trunc i64 %44 to i32
  store volatile i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %58, %23
  %47 = load volatile i32, i32* %3, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @BIT_ULL(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = icmp ne i32 %53, 0
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ false, %46 ], [ %55, %52 ]
  br i1 %57, label %58, label %66

58:                                               ; preds = %56
  %59 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %60 = load i32, i32* @LIO_CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %61 = call i64 @lio_read_csr64(%struct.octeon_device* %59, i32 %60)
  %62 = trunc i64 %61 to i32
  store volatile i32 %62, i32* %3, align 4
  %63 = call i32 @lio_sleep_timeout(i32 1)
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %46

66:                                               ; preds = %56
  %67 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i32 %68)
  %70 = call i32 @lio_write_csr32(%struct.octeon_device* %67, i32 %69, i32 -1)
  br label %71

71:                                               ; preds = %83, %66
  %72 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i32 %73)
  %75 = call i64 @lio_read_csr64(%struct.octeon_device* %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  %80 = icmp ne i32 %78, 0
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i1 [ false, %71 ], [ %80, %77 ]
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = call i32 @lio_sleep_timeout(i32 1)
  br label %71

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %19

89:                                               ; preds = %19
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %150, %89
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %153

95:                                               ; preds = %91
  %96 = call i32 @lio_ms_to_ticks(i32 1000)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %98 = load i32, i32* @LIO_CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %99 = call i64 @lio_read_csr64(%struct.octeon_device* %97, i32 %98)
  %100 = trunc i64 %99 to i32
  store volatile i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %113, %95
  %102 = load volatile i32, i32* %3, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @BIT_ULL(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %5, align 4
  %110 = icmp ne i32 %108, 0
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i1 [ false, %101 ], [ %110, %107 ]
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %115 = load i32, i32* @LIO_CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %116 = call i64 @lio_read_csr64(%struct.octeon_device* %114, i32 %115)
  %117 = trunc i64 %116 to i32
  store volatile i32 %117, i32* %3, align 4
  %118 = call i32 @lio_sleep_timeout(i32 1)
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %5, align 4
  br label %101

121:                                              ; preds = %111
  %122 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i32 %123)
  %125 = call i32 @lio_write_csr32(%struct.octeon_device* %122, i32 %124, i32 -1)
  br label %126

126:                                              ; preds = %138, %121
  %127 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i32 %128)
  %130 = call i64 @lio_read_csr64(%struct.octeon_device* %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %5, align 4
  %135 = icmp ne i32 %133, 0
  br label %136

136:                                              ; preds = %132, %126
  %137 = phi i1 [ false, %126 ], [ %135, %132 ]
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = call i32 @lio_sleep_timeout(i32 1)
  br label %126

140:                                              ; preds = %136
  %141 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i32 %142)
  %144 = call i32 @lio_read_csr32(%struct.octeon_device* %141, i32 %143)
  store volatile i32 %144, i32* %4, align 4
  %145 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i32 %146)
  %148 = load volatile i32, i32* %4, align 4
  %149 = call i32 @lio_write_csr32(%struct.octeon_device* %145, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %91

153:                                              ; preds = %91
  ret void
}

declare dso_local i32 @lio_ms_to_ticks(i32) #1

declare dso_local i64 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @lio_sleep_timeout(i32) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
