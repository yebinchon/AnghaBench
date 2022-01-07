; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_next_extcap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_next_extcap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"start extended capability is not expected capability\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_next_extcap_method(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_devinfo*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pci_devinfo* @device_get_ivars(i32 %16)
  store %struct.pci_devinfo* %17, %struct.pci_devinfo** %12, align 8
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %12, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pci_read_config(i32 %28, i32 %29, i32 4)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @PCI_EXTCAP_ID(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @PCI_EXTCAP_NEXTPTR(i32 %37)
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %57, %27
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @pci_read_config(i32 %43, i32 %44, i32 4)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @PCI_EXTCAP_ID(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %6, align 4
  br label %62

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @PCI_EXTCAP_NEXTPTR(i32 %58)
  store i32 %59, i32* %15, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %56, %25
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCI_EXTCAP_ID(i32) #1

declare dso_local i32 @PCI_EXTCAP_NEXTPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
