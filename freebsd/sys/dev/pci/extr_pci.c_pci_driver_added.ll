; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_driver_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_driver_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"driver added\0A\00", align 1
@DS_NOTPRESENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"reprobing on driver added\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_driver_added(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i64, i64* @bootverbose, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DEVICE_IDENTIFY(i32* %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @device_get_children(i32 %19, i32** %6, i32* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %69

23:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @device_get_state(i32 %34)
  %36 = load i64, i64* @DS_NOTPRESENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %62

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.pci_devinfo* @device_get_ivars(i32 %40)
  store %struct.pci_devinfo* %41, %struct.pci_devinfo** %8, align 8
  %42 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %43 = call i32 @pci_print_verbose(%struct.pci_devinfo* %42)
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %48 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %47, i32 0, i32 0
  %49 = call i32 @pci_printf(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %53 = call i32 @pci_cfg_restore(i32 %51, %struct.pci_devinfo* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @device_probe_and_attach(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @pci_child_detached(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @M_TEMP, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %22
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DEVICE_IDENTIFY(i32*, i32) #1

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @device_get_state(i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_print_verbose(%struct.pci_devinfo*) #1

declare dso_local i32 @pci_printf(i32*, i8*) #1

declare dso_local i32 @pci_cfg_restore(i32, %struct.pci_devinfo*) #1

declare dso_local i64 @device_probe_and_attach(i32) #1

declare dso_local i32 @pci_child_detached(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
