; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci_pci.c_fwohci_pci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci_pci.c_fwohci_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@FW_VENDORID_SUN = common dso_local global i32 0, align 4
@FW_DEVICE_PCIO2FW = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"latency timer %d -> %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cache size %d -> %d.\0A\00", align 1
@DEF_CACHE_LINE = common dso_local global i32 0, align 4
@DEF_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fwohci_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_pci_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PCIR_COMMAND, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 2)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %12 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @PCIR_COMMAND, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %22, i32 2)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @pci_get_devid(i32 %24)
  %26 = load i32, i32* @FW_VENDORID_SUN, align 4
  %27 = load i32, i32* @FW_DEVICE_PCIO2FW, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @pci_get_intpin(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @pci_set_intpin(i32 %35, i32 3)
  br label %37

37:                                               ; preds = %34, %30, %1
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @PCIR_LATTIMER, align 4
  %40 = call i32 @pci_read_config(i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %3, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  store i32 32, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @PCIR_LATTIMER, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pci_write_config(i32 %44, i32 %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %51 = call i32 @pci_read_config(i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %5, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  store i32 8, i32* %6, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pci_write_config(i32 %55, i32 %56, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* @firewire_debug, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %59
  ret i32 0
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_intpin(i32) #1

declare dso_local i32 @pci_set_intpin(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
