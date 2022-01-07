; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_seeprom_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_seeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EEPROMVSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"VPD still busy from previous operation\0A\00", align 1
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VPD write of address %#x failed\0A\00", align 1
@EEPROM_MAX_POLL = common dso_local global i32 0, align 4
@EEPROM_DELAY = common dso_local global i32 0, align 4
@EEPROM_STAT_ADDR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_seeprom_write(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EEPROMVSIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %20
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = call i32 @t4_seeprom_wait(%struct.adapter* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.adapter*, %struct.adapter** %5, align 8
  %34 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %98

36:                                               ; preds = %27
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @PCI_VPD_DATA, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = call i32 @t4_os_pci_write_cfg4(%struct.adapter* %37, i64 %41, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @PCI_VPD_ADDR, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @t4_os_pci_write_cfg2(%struct.adapter* %45, i64 %49, i32 %52)
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.adapter*, %struct.adapter** %5, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.adapter*, %struct.adapter** %5, align 8
  %59 = call i32 @t4_seeprom_wait(%struct.adapter* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %98

67:                                               ; preds = %36
  %68 = load %struct.adapter*, %struct.adapter** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* @PCI_VPD_DATA, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @t4_os_pci_write_cfg4(%struct.adapter* %68, i64 %72, i32 0)
  %74 = load i32, i32* @EEPROM_MAX_POLL, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %89, %67
  %76 = load i32, i32* @EEPROM_DELAY, align 4
  %77 = call i32 @udelay(i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %5, align 8
  %79 = load i32, i32* @EEPROM_STAT_ADDR, align 4
  %80 = call i32 @t4_seeprom_read(%struct.adapter* %78, i32 %79, i32* %10)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ false, %81 ], [ %88, %85 ]
  br i1 %90, label %75, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %62, %32, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @t4_seeprom_wait(%struct.adapter*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @t4_os_pci_write_cfg4(%struct.adapter*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @t4_os_pci_write_cfg2(%struct.adapter*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @t4_seeprom_read(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
