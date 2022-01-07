; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_reset_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_reset_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCIEM_TYPE_DOWNSTREAM_PORT = common dso_local global i64 0, align 8
@PCIEM_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @pcib_reset_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcib_reset_child(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinfo*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @device_get_parent(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  br label %68

17:                                               ; preds = %11
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @device_get_devclass(i32* %19)
  %21 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %68

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.pci_devinfo* @device_get_ivars(i32* %25)
  store %struct.pci_devinfo* %26, %struct.pci_devinfo** %7, align 8
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %28 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %24
  %34 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %35 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCIEM_TYPE_DOWNSTREAM_PORT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %43 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %41, %33
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @bus_helper_reset_prepare(i32* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %58 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pcie_link_reset(i32* %56, i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @bus_helper_reset_post(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %49
  br label %67

67:                                               ; preds = %66, %41, %24
  br label %68

68:                                               ; preds = %67, %23, %16
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @bus_helper_reset_prepare(i32*, i32) #1

declare dso_local i32 @pcie_link_reset(i32*, i64) #1

declare dso_local i32 @bus_helper_reset_post(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
