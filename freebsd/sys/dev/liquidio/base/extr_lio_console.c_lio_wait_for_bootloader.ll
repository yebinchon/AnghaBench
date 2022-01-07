; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_wait_for_bootloader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_wait_for_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"waiting %d0 ms for bootloader\0A\00", align 1
@LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR = common dso_local global i32 0, align 4
@LIO_PCI_IO_BUF_OWNER_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_wait_for_bootloader(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @lio_dev_dbg(%struct.octeon_device* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = call i64 @lio_mem_access_ok(%struct.octeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %19 = load i32, i32* @LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR, align 4
  %20 = call i64 @lio_read_device_mem32(%struct.octeon_device* %18, i32 %19)
  %21 = load i64, i64* @LIO_PCI_IO_BUF_OWNER_HOST, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %5, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %33

30:                                               ; preds = %25
  %31 = call i32 @lio_sleep_timeout(i32 10)
  br label %14

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i64) #1

declare dso_local i64 @lio_mem_access_ok(%struct.octeon_device*) #1

declare dso_local i64 @lio_read_device_mem32(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_sleep_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
