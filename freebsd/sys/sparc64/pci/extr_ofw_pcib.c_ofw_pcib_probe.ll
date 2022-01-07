; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcib.c_ofw_pcib_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcib.c_ofw_pcib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_PCI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"OFW PCI%s-PCI%s bridge\00", align 1
@OFW_TYPE_PCIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ofw_pcib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pcib_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [21 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_class(i32 %7)
  %9 = load i64, i64* @PCIC_BRIDGE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_get_subclass(i32 %12)
  %14 = load i64, i64* @PCIS_BRIDGE_PCI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @ofw_bus_get_node(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i8* @ofw_bus_get_type(i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = call i8* @ofw_bus_get_type(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @OFW_TYPE_PCIE, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @strcmp(i8* %31, i8* %34)
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %30, %20
  %38 = phi i1 [ false, %20 ], [ %36, %30 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @OFW_TYPE_PCIE, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @strcmp(i8* %44, i8* %47)
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %43, %37
  %51 = phi i1 [ false, %37 ], [ %49, %43 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @snprintf(i8* %27, i32 21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %53)
  %55 = load i32, i32* %3, align 4
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %57 = call i32 @device_set_desc_copy(i32 %55, i8* %56)
  %58 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %16, %11, %1
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
