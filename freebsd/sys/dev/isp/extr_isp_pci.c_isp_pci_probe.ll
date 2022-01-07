; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Qlogic ISP 1020/1040 PCI SCSI Adapter\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Qlogic ISP 1080 PCI SCSI Adapter\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Qlogic ISP 1240 PCI SCSI Adapter\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Qlogic ISP 1280 PCI SCSI Adapter\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 10160 PCI SCSI Adapter\00", align 1
@AMI_RAID_SUBVENDOR_ID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 12160 PCI SCSI Adapter\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2100 PCI FC-AL Adapter\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2200 PCI FC-AL Adapter\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2300 PCI FC-AL Adapter\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2312 PCI FC-AL Adapter\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2322 PCI FC-AL Adapter\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2422 PCI FC-AL Adapter\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2432 PCI FC-AL Adapter\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2532 PCI FC-AL Adapter\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 5432 PCI FC-AL Adapter\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 6312 PCI FC-AL Adapter\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 6322 PCI FC-AL Adapter\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Qlogic ISP 2031 PCI FC-AL Adapter\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Qlogic ISP 8031 PCI FCoE Adapter\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Qlogic ISP 2684 PCI FC Adapter\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Qlogic ISP 2692 PCI FC Adapter\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Qlogic ISP 2714 PCI FC Adapter\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Qlogic ISP 2722 PCI FC Adapter\00", align 1
@isp_announced = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [62 x i8] c"Qlogic ISP Driver, FreeBSD Version %d.%d, Core Version %d.%d\0A\00", align 1
@ISP_PLATFORM_VERSION_MAJOR = common dso_local global i32 0, align 4
@ISP_PLATFORM_VERSION_MINOR = common dso_local global i32 0, align 4
@ISP_CORE_VERSION_MAJOR = common dso_local global i32 0, align 4
@ISP_CORE_VERSION_MINOR = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isp_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @pci_get_device(i32 %4)
  %6 = shl i32 %5, 16
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pci_get_vendor(i32 %7)
  %9 = or i32 %6, %8
  switch i32 %9, label %86 [
    i32 149, label %10
    i32 148, label %13
    i32 146, label %16
    i32 145, label %19
    i32 150, label %22
    i32 147, label %25
    i32 143, label %35
    i32 142, label %38
    i32 141, label %41
    i32 140, label %44
    i32 139, label %47
    i32 138, label %50
    i32 137, label %53
    i32 136, label %56
    i32 131, label %59
    i32 130, label %62
    i32 129, label %65
    i32 144, label %68
    i32 128, label %71
    i32 135, label %74
    i32 134, label %77
    i32 133, label %80
    i32 132, label %83
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_set_desc(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %88

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %88

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_desc(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %88

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_desc(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %88

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_set_desc(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %88

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pci_get_subvendor(i32 %26)
  %28 = load i32, i32* @AMI_RAID_SUBVENDOR_ID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %88

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_set_desc(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %88

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_set_desc(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %88

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_set_desc(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %88

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_set_desc(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %88

47:                                               ; preds = %1
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_set_desc(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %88

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_set_desc(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %88

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_set_desc(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %88

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_set_desc(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %88

59:                                               ; preds = %1
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_set_desc(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %88

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_set_desc(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %88

65:                                               ; preds = %1
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_set_desc(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %88

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_set_desc(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  br label %88

71:                                               ; preds = %1
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_set_desc(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %88

74:                                               ; preds = %1
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_set_desc(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %88

77:                                               ; preds = %1
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_set_desc(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %88

80:                                               ; preds = %1
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @device_set_desc(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %88

83:                                               ; preds = %1
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_set_desc(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  br label %88

86:                                               ; preds = %1
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %104

88:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %22, %19, %16, %13, %10
  %89 = load i64, i64* @isp_announced, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i64, i64* @bootverbose, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @ISP_PLATFORM_VERSION_MAJOR, align 4
  %96 = load i32, i32* @ISP_PLATFORM_VERSION_MINOR, align 4
  %97 = load i32, i32* @ISP_CORE_VERSION_MAJOR, align 4
  %98 = load i32, i32* @ISP_CORE_VERSION_MINOR, align 4
  %99 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i64, i64* @isp_announced, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* @isp_announced, align 8
  br label %102

102:                                              ; preds = %94, %91, %88
  %103 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %86, %30
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
