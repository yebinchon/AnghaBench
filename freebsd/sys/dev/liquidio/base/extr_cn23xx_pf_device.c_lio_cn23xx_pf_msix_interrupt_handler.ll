; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_msix_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_msix_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_ioq_vector = type { i64, i32, %struct.octeon_device* }
%struct.octeon_device = type { i32, %struct.lio_droq** }
%struct.lio_droq = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"23XX bringup FIXME: oct pfnum:%d ioq_vector->ioq_num :%d droq is NULL\0A\00", align 1
@LIO_CN23XX_INTR_PO_INT = common dso_local global i32 0, align 4
@LIO_MSIX_PO_INT = common dso_local global i32 0, align 4
@LIO_CN23XX_INTR_PI_INT = common dso_local global i32 0, align 4
@LIO_MSIX_PI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lio_cn23xx_pf_msix_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_msix_interrupt_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lio_ioq_vector*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_droq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.lio_ioq_vector*
  store %struct.lio_ioq_vector* %10, %struct.lio_ioq_vector** %4, align 8
  %11 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %12 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %11, i32 0, i32 2
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %5, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = load %struct.lio_droq**, %struct.lio_droq*** %15, align 8
  %17 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %18 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %16, i64 %19
  %21 = load %struct.lio_droq*, %struct.lio_droq** %20, align 8
  store %struct.lio_droq* %21, %struct.lio_droq** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %23 = icmp eq %struct.lio_droq* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %26 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %4, align 8
  %30 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @lio_dev_err(%struct.octeon_device* %25, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  store i32 0, i32* %2, align 4
  br label %67

33:                                               ; preds = %1
  %34 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %35 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %36 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lio_read_csr64(%struct.octeon_device* %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @LIO_CN23XX_INTR_PO_INT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @LIO_MSIX_PO_INT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LIO_CN23XX_INTR_PI_INT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @LIO_MSIX_PI_INT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %45, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32, i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
