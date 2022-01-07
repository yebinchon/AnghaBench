; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_enable_io_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_enable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@BUSY_READING_REG_PF_LOOP_COUNT = common dso_local global i64 0, align 8
@LIO_CN23XX_PKT_INPUT_CTL_IS_64B = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clearing the reset failed for qno: %u\0A\00", align 1
@LIO_CN23XX_PKT_INPUT_CTL_RING_ENB = common dso_local global i32 0, align 4
@LIO_CN23XX_PKT_OUTPUT_CTL_RING_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_enable_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_enable_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %10 = load i64, i64* @BUSY_READING_REG_PF_LOOP_COUNT, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %136, %1
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %139

25:                                               ; preds = %21
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @BIT_ULL(i64 %32)
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %25
  %37 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %38)
  %40 = call i32 @lio_read_csr64(%struct.octeon_device* %37, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_IS_64B, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @lio_write_csr64(%struct.octeon_device* %44, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %36, %25
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i32 @BIT_ULL(i64 %56)
  %58 = and i32 %53, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %49
  %61 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %62)
  %64 = call i32 @lio_read_csr64(%struct.octeon_device* %61, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = phi i1 [ false, %75 ], [ false, %70 ], [ %82, %80 ]
  br i1 %84, label %85, label %92

85:                                               ; preds = %83
  %86 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %87)
  %89 = call i32 @lio_read_csr64(%struct.octeon_device* %86, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i64, i64* %6, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %6, align 8
  br label %70

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @lio_dev_err(%struct.octeon_device* %96, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %97)
  store i32 -1, i32* %2, align 4
  br label %174

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  store i32 %103, i32* %4, align 4
  %104 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %105)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @lio_write_csr64(%struct.octeon_device* %104, i32 %106, i32 %107)
  %109 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %110)
  %112 = call i32 @lio_read_csr64(%struct.octeon_device* %109, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RST, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @lio_dev_err(%struct.octeon_device* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  store i32 -1, i32* %2, align 4
  br label %174

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %60
  %123 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %124)
  %126 = call i32 @lio_read_csr64(%struct.octeon_device* %123, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @LIO_CN23XX_PKT_INPUT_CTL_RING_ENB, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %4, align 4
  %130 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64 %131)
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @lio_write_csr64(%struct.octeon_device* %130, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %122, %49
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %21

139:                                              ; preds = %21
  %140 = load i64, i64* %8, align 8
  store i64 %140, i64* %7, align 8
  br label %141

141:                                              ; preds = %170, %139
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %5, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = sub nsw i64 %150, %151
  %153 = call i32 @BIT_ULL(i64 %152)
  %154 = and i32 %149, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %145
  %157 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %158)
  %160 = call i64 @lio_read_csr32(%struct.octeon_device* %157, i32 %159)
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @LIO_CN23XX_PKT_OUTPUT_CTL_RING_ENB, align 8
  %163 = or i64 %161, %162
  store i64 %163, i64* %9, align 8
  %164 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64 %165)
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @lio_write_csr32(%struct.octeon_device* %164, i32 %166, i64 %167)
  br label %169

169:                                              ; preds = %156, %145
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %7, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %7, align 8
  br label %141

173:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %117, %95
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i64) #1

declare dso_local i64 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
