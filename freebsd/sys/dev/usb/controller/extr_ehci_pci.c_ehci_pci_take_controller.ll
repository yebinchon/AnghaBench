; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_take_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_take_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EHCI_HCCPARAMS = common dso_local global i32 0, align 4
@EHCI_EC_LEGSUP = common dso_local global i64 0, align 8
@EHCI_LEGSUP_BIOS_SEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"waiting for BIOS to give up control\0A\00", align 1
@EHCI_LEGSUP_OS_SEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"timed out waiting for BIOS\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehci_pci_take_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_pci_take_controller(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.TYPE_6__* @device_get_softc(i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @EHCI_HCCPARAMS, align 4
  %13 = call i8* @EREAD4(%struct.TYPE_6__* %11, i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @EHCI_HCC_EECP(i8* %14)
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %74, %1
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i8* @pci_read_config(i32 %20, i64 %21, i32 4)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @EHCI_EECP_ID(i8* %23)
  %25 = load i64, i64* @EHCI_EC_LEGSUP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %74

28:                                               ; preds = %19
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @EHCI_LEGSUP_BIOS_SEM, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i8* @pci_read_config(i32 %29, i64 %32, i32 1)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %74

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @EHCI_LEGSUP_OS_SEM, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @pci_write_config(i32 %44, i64 %47, i32 1, i32 1)
  store i32 500, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %69
  %50 = load i32, i32* %2, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @EHCI_LEGSUP_BIOS_SEM, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @pci_read_config(i32 %50, i64 %53, i32 1)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %73

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @hz, align 4
  %71 = sdiv i32 %70, 100
  %72 = call i32 @usb_pause_mtx(i32* null, i32 %71)
  br label %49

73:                                               ; preds = %63, %58
  br label %74

74:                                               ; preds = %73, %37, %27
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @EHCI_EECP_NEXT(i8* %75)
  store i64 %76, i64* %7, align 8
  br label %16

77:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @device_get_softc(i32) #1

declare dso_local i8* @EREAD4(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @EHCI_HCC_EECP(i8*) #1

declare dso_local i8* @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @EHCI_EECP_ID(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i64 @EHCI_EECP_NEXT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
