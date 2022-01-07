; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_seeprom_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_seeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EEPROMVSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"VPD still busy from previous operation\0A\00", align 1
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"VPD read of address %#x failed\0A\00", align 1
@PCI_VPD_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_seeprom_read(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EEPROMVSIZE, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %18
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = call i32 @t4_seeprom_wait(%struct.adapter* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %25
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @PCI_VPD_ADDR, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @t4_os_pci_write_cfg2(%struct.adapter* %35, i64 %39, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %5, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = call i32 @t4_seeprom_wait(%struct.adapter* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.adapter*, %struct.adapter** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %68

56:                                               ; preds = %34
  %57 = load %struct.adapter*, %struct.adapter** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @PCI_VPD_DATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @t4_os_pci_read_cfg4(%struct.adapter* %57, i64 %61, i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %56, %51, %30, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @t4_seeprom_wait(%struct.adapter*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @t4_os_pci_write_cfg2(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t4_os_pci_read_cfg4(%struct.adapter*, i64, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
