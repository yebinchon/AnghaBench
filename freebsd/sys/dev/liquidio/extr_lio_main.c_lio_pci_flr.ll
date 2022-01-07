; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_pci_flr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_pci_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_INTxDIS = common dso_local global i32 0, align 4
@PCIER_DEVICE_STA = common dso_local global i32 0, align 4
@PCIEM_STA_TRANSACTION_PND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Function reset incomplete after 100ms, sleeping for 5 seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Function reset still incomplete after 5s, reset anyway\0A\00", align 1
@PCIER_DEVICE_CTL = common dso_local global i32 0, align 4
@PCIEM_CTL_INITIATE_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_pci_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_pci_flr(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCIY_EXPRESS, align 4
  %9 = call i32 @pci_find_cap(i32 %7, i32 %8, i32* %3)
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_save_state(i32 %12)
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCIR_COMMAND, align 4
  %18 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %19 = call i32 @pci_write_config(i32 %16, i32 %17, i32 %18, i32 2)
  %20 = call i32 @lio_mdelay(i32 100)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PCIER_DEVICE_STA, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @pci_read_config(i32 %23, i32 %26, i32 2)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCIEM_STA_TRANSACTION_PND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %1
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = call i32 @lio_dev_info(%struct.octeon_device* %33, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @lio_mdelay(i32 5)
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PCIER_DEVICE_STA, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @pci_read_config(i32 %38, i32 %41, i32 2)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PCIEM_STA_TRANSACTION_PND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = call i32 @lio_dev_info(%struct.octeon_device* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %32
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @PCIEM_CTL_INITIATE_FLR, align 4
  %59 = call i32 @pci_write_config(i32 %54, i32 %57, i32 %58, i32 2)
  %60 = call i32 @lio_mdelay(i32 100)
  %61 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_restore_state(i32 %63)
  ret void
}

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @lio_mdelay(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*) #1

declare dso_local i32 @pci_restore_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
