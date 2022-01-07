; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"agp\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Apple UniNorth AGP Bridge\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Apple UniNorth 1.5 AGP Bridge\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Apple UniNorth 2 AGP Bridge\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Apple U3 AGP Bridge\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Apple Intrepid AGP Bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_apple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_apple_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @device_get_unit(i32 %4)
  %6 = call i64 @resource_disabled(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_class(i32 %11)
  %13 = load i64, i64* @PCIC_BRIDGE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_subclass(i32 %16)
  %18 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @agp_find_caps(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %65

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @pci_get_class(i32 %29)
  %31 = load i64, i64* @PCIC_BRIDGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pci_get_subclass(i32 %34)
  %36 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %65

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_get_devid(i32 %41)
  switch i32 %42, label %63 [
    i32 2101355, label %43
    i32 2560107, label %43
    i32 2953323, label %47
    i32 3412075, label %51
    i32 4919403, label %55
    i32 5771371, label %55
    i32 5836907, label %55
    i32 6688875, label %59
  ]

43:                                               ; preds = %40, %40
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_set_desc(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_set_desc(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_set_desc(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %54, i32* %2, align 4
  br label %65

55:                                               ; preds = %40, %40, %40
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_set_desc(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %40
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_set_desc(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %40
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %59, %55, %51, %47, %43, %38, %26, %20, %8
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
