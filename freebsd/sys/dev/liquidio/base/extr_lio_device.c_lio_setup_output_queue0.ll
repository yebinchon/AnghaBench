; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_setup_output_queue0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_setup_output_queue0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64 }

@cn23xx_pf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_output_queue0(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = load i32, i32* @cn23xx_pf, align 4
  %13 = call i32 @LIO_CHIP_CONF(%struct.octeon_device* %11, i32 %12)
  %14 = call i32 @LIO_GET_NUM_DEF_RX_DESCS_CFG(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load i32, i32* @cn23xx_pf, align 4
  %17 = call i32 @LIO_CHIP_CONF(%struct.octeon_device* %15, i32 %16)
  %18 = call i32 @LIO_GET_DEF_RX_BUF_SIZE_CFG(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @lio_init_droq(%struct.octeon_device* %22, i32 %23, i32 %24, i32 %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @LIO_GET_NUM_DEF_RX_DESCS_CFG(i32) #1

declare dso_local i32 @LIO_CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_GET_DEF_RX_BUF_SIZE_CFG(i32) #1

declare dso_local i64 @lio_init_droq(%struct.octeon_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
