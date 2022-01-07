; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_console_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_console.c_lio_console_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"sending \22%s\22 to bootloader\0A\00", align 1
@LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Command string too long, max length is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Bootloader not ready for command.\0A\00", align 1
@LIO_BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR = common dso_local global i32 0, align 4
@LIO_BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR = common dso_local global i32 0, align 4
@LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR = common dso_local global i32 0, align 4
@LIO_PCI_IO_BUF_OWNER_OCTEON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Bootloader did not accept command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_console_send_cmd(%struct.octeon_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @lio_dev_dbg(%struct.octeon_device* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %20 = load i32, i32* @LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @lio_wait_for_bootloader(%struct.octeon_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %30 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %56

31:                                               ; preds = %23
  %32 = call i32 (...) @lio_remote_lock()
  %33 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %34 = load i32, i32* @LIO_BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @lio_pci_write_core_mem(%struct.octeon_device* %33, i32 %34, i32* %36, i32 %37)
  %39 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %40 = load i32, i32* @LIO_BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @lio_write_device_mem32(%struct.octeon_device* %39, i32 %40, i32 %41)
  %43 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %44 = load i32, i32* @LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR, align 4
  %45 = load i32, i32* @LIO_PCI_IO_BUF_OWNER_OCTEON, align 4
  %46 = call i32 @lio_write_device_mem32(%struct.octeon_device* %43, i32 %44, i32 %45)
  %47 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %48 = call i64 @lio_wait_for_bootloader(%struct.octeon_device* %47, i32 200)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = call i32 (...) @lio_remote_unlock()
  %52 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %53 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %56

54:                                               ; preds = %31
  %55 = call i32 (...) @lio_remote_unlock()
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %50, %28, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i8*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #1

declare dso_local i64 @lio_wait_for_bootloader(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_remote_lock(...) #1

declare dso_local i32 @lio_pci_write_core_mem(%struct.octeon_device*, i32, i32*, i32) #1

declare dso_local i32 @lio_write_device_mem32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_remote_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
