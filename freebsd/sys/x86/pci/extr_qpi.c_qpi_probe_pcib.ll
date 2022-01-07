; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_qpi.c_qpi_probe_pcib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_qpi.c_qpi_probe_pcib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpi_device = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Device at pci%d.%d.0 has non-Intel vendor 0x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: failed to add pci bus %d\00", align 1
@M_QPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @qpi_probe_pcib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpi_probe_pcib(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qpi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @pci_find_bsf(i32 %10, i32 0, i32 0)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EEXIST, align 4
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PCI_SLOTMAX, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %24 = call i32 @pci_cfgregread(i32 %21, i32 %22, i32 0, i32 %23, i32 4)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %16

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 65535
  %40 = icmp ne i32 %39, 32902
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i64, i64* @bootverbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  %50 = call i32 @device_printf(i32* %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %73

53:                                               ; preds = %37
  %54 = load i32*, i32** %4, align 8
  %55 = call i32* @BUS_ADD_CHILD(i32* %54, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @device_get_nameunit(i32* %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @M_QPI, align 4
  %65 = load i32, i32* @M_WAITOK, align 4
  %66 = call %struct.qpi_device* @malloc(i32 4, i32 %64, i32 %65)
  store %struct.qpi_device* %66, %struct.qpi_device** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.qpi_device*, %struct.qpi_device** %6, align 8
  %69 = getelementptr inbounds %struct.qpi_device, %struct.qpi_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.qpi_device*, %struct.qpi_device** %6, align 8
  %72 = call i32 @device_set_ivars(i32* %70, %struct.qpi_device* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %51, %35, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local %struct.qpi_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.qpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
