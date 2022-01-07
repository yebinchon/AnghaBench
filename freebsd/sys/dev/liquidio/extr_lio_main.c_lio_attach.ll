; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error: Unable to allocate device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET = common dso_local global i32 0, align 4
@LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET = common dso_local global i32 0, align 4
@LIO_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Initializing device %x:%x %02x:%02x.%01x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to init device\0A\00", align 1
@LIO_CN23XX_SLI_SCRATCH1 = common dso_local global i32 0, align 4
@lio_watchdog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"liowd/%02hhx:%02hhx.%hhx\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to create kernel_thread\0A\00", align 1
@LIO_NIC_STARTER_TIMEOUT = common dso_local global i32 0, align 4
@LIO_STARTER_POLL_INTERVAL_MS = common dso_local global i64 0, align 8
@cold = common dso_local global i64 0, align 8
@LIO_DEV_CORE_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Firmware failed to start\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Device is ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.octeon_device* null, %struct.octeon_device** %4, align 8
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.octeon_device* @lio_allocate_device(i32 %12)
  store %struct.octeon_device* %13, %struct.octeon_device** %4, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = icmp eq %struct.octeon_device* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %145

21:                                               ; preds = %1
  %22 = load i32, i32* @LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @LIO_FLAG_MSIX_ENABLED, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_get_bus(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_get_slot(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pci_get_function(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_get_vendor(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @pci_get_device(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @lio_dev_info(%struct.octeon_device* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %50 = call i64 @lio_device_init(%struct.octeon_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %21
  %53 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %54 = call i32 @lio_dev_err(%struct.octeon_device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @lio_detach(i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %145

59:                                               ; preds = %21
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = load i32, i32* @LIO_CN23XX_SLI_SCRATCH1, align 4
  %62 = call i64 @lio_read_csr64(%struct.octeon_device* %60, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = and i64 %63, 4
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %5, align 8
  %68 = or i64 %67, 4
  store i64 %68, i64* %5, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %70 = load i32, i32* @LIO_CN23XX_SLI_SCRATCH1, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @lio_write_csr64(%struct.octeon_device* %69, i32 %70, i64 %71)
  %73 = load i32, i32* @lio_watchdog, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %75 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @kproc_create(i32 %73, %struct.octeon_device* %74, i32** %76, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %66
  %84 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %85 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @kproc_resume(i32* %86)
  br label %95

88:                                               ; preds = %66
  %89 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 4
  store i32* null, i32** %90, align 8
  %91 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %92 = call i32 @lio_dev_err(%struct.octeon_device* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @lio_detach(i32 %93)
  store i32 -1, i32* %2, align 4
  br label %145

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %100 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %131, %96
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @LIO_NIC_STARTER_TIMEOUT, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %101
  %106 = load i64, i64* @LIO_STARTER_POLL_INTERVAL_MS, align 8
  %107 = call i32 @lio_mdelay(i64 %106)
  %108 = load i64, i64* @LIO_STARTER_POLL_INTERVAL_MS, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %7, align 4
  %113 = load i64, i64* @cold, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %117 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @lio_droq_bh(i32 %120, i32 0)
  br label %122

122:                                              ; preds = %115, %105
  %123 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 2
  %125 = call i64 @atomic_load_acq_int(i32* %124)
  %126 = load i64, i64* @LIO_DEV_CORE_OK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %130 = call i32 @lio_nic_starter(%struct.octeon_device* %129)
  store i32 %130, i32* %8, align 4
  br label %132

131:                                              ; preds = %122
  br label %101

132:                                              ; preds = %128, %101
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %137 = call i32 @lio_dev_err(%struct.octeon_device* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @lio_detach(i32 %138)
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %145

142:                                              ; preds = %132
  %143 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %144 = call i32 @lio_dev_dbg(%struct.octeon_device* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %135, %88, %52, %16
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.octeon_device* @lio_allocate_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i64 @lio_device_init(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_detach(i32) #1

declare dso_local i64 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @kproc_create(i32, %struct.octeon_device*, i32**, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kproc_resume(i32*) #1

declare dso_local i32 @lio_mdelay(i64) #1

declare dso_local i32 @lio_droq_bh(i32, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @lio_nic_starter(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
