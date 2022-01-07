; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_seeprom_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_seeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EEPROM_MAX_POLL = common dso_local global i32 0, align 4
@EEPROMSIZE = common dso_local global i32 0, align 4
@EEPROM_STAT_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"write to EEPROM address 0x%x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_seeprom_write(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EEPROM_MAX_POLL, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EEPROMSIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EEPROM_STAT_ADDR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* @PCI_VPD_DATA, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = call i32 @t3_os_pci_write_config_4(%struct.TYPE_11__* %32, i64 %36, i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @PCI_VPD_ADDR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @t3_os_pci_write_config_2(%struct.TYPE_11__* %40, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %66, %31
  %50 = call i32 @msleep(i32 1)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @PCI_VPD_ADDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @t3_os_pci_read_config_2(%struct.TYPE_11__* %51, i64 %55, i32* %8)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i1 [ false, %57 ], [ %65, %62 ]
  br i1 %67, label %49, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @CH_ERR(%struct.TYPE_11__* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %73, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @t3_os_pci_write_config_4(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @t3_os_pci_write_config_2(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_os_pci_read_config_2(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @CH_ERR(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
