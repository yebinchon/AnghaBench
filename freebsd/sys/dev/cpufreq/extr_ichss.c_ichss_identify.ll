; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ichss\00", align 1
@ich_device = common dso_local global i32* null, align 8
@PCI_VENDOR_INTEL = common dso_local global i64 0, align 8
@PCI_DEV_82801BA = common dso_local global i64 0, align 8
@PCI_DEV_82801CA = common dso_local global i64 0, align 8
@PCI_DEV_82801DB = common dso_local global i64 0, align 8
@PCI_DEV_82815_MC = common dso_local global i64 0, align 8
@ICHSS_PMBASE_OFFSET = common dso_local global i32 0, align 4
@ICHSS_IO_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ichss: invalid PMBASE memory type\0A\00", align 1
@ICHSS_PMBASE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ichss: invalid zero PMBASE address\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ichss: PMBASE is %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"add SpeedStep child failed\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ICHSS_BM_OFFSET = common dso_local global i64 0, align 8
@ICHSS_CTRL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ichss_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichss_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i64 @resource_disabled(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %114

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @device_get_unit(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %114

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @device_find_child(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %114

21:                                               ; preds = %16
  %22 = call i32* @pci_find_bsf(i32 0, i32 31, i32 0)
  store i32* %22, i32** @ich_device, align 8
  %23 = load i32*, i32** @ich_device, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** @ich_device, align 8
  %27 = call i64 @pci_get_vendor(i32* %26)
  %28 = load i64, i64* @PCI_VENDOR_INTEL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** @ich_device, align 8
  %32 = call i64 @pci_get_device(i32* %31)
  %33 = load i64, i64* @PCI_DEV_82801BA, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32*, i32** @ich_device, align 8
  %37 = call i64 @pci_get_device(i32* %36)
  %38 = load i64, i64* @PCI_DEV_82801CA, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** @ich_device, align 8
  %42 = call i64 @pci_get_device(i32* %41)
  %43 = load i64, i64* @PCI_DEV_82801DB, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %25, %21
  br label %114

46:                                               ; preds = %40, %35, %30
  %47 = load i32*, i32** @ich_device, align 8
  %48 = call i64 @pci_get_device(i32* %47)
  %49 = load i64, i64* @PCI_DEV_82801BA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = call i32* @pci_find_bsf(i32 0, i32 0, i32 0)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @pci_get_vendor(i32* %56)
  %58 = load i64, i64* @PCI_VENDOR_INTEL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @pci_get_device(i32* %61)
  %63 = load i64, i64* @PCI_DEV_82815_MC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @pci_get_revid(i32* %66)
  %68 = icmp slt i32 %67, 5
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %114

70:                                               ; preds = %65, %60, %55, %51
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32*, i32** @ich_device, align 8
  %73 = load i32, i32* @ICHSS_PMBASE_OFFSET, align 4
  %74 = call i32 @pci_read_config(i32* %72, i32 %73, i32 4)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ICHSS_IO_REG, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %114

81:                                               ; preds = %71
  %82 = load i32, i32* @ICHSS_PMBASE_MASK, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %114

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32* @BUS_ADD_CHILD(i32* %92, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %93, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @device_printf(i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %114

99:                                               ; preds = %89
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @SYS_RES_IOPORT, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @ICHSS_BM_OFFSET, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @bus_set_resource(i32* %100, i32 %101, i32 0, i64 %105, i32 1)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @SYS_RES_IOPORT, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @ICHSS_CTRL_OFFSET, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @bus_set_resource(i32* %107, i32 %108, i32 1, i64 %112, i32 1)
  br label %114

114:                                              ; preds = %99, %96, %87, %79, %69, %45, %20, %15, %10
  ret void
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i64 @device_get_unit(i32*) #1

declare dso_local i64 @device_find_child(i32*, i8*, i32) #1

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i64 @pci_get_vendor(i32*) #1

declare dso_local i64 @pci_get_device(i32*) #1

declare dso_local i32 @pci_get_revid(i32*) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @bus_set_resource(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
