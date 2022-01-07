; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_ISA = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PCI-ISA bridge with incorrect subclass 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PCI-ISA bridge\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isab_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isab_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @pci_get_class(i32 %5)
  %7 = load i64, i64* @PCIC_BRIDGE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pci_get_subclass(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @PCIS_BRIDGE_ISA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %29

16:                                               ; preds = %9, %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pci_get_devid(i32 %17)
  switch i32 %18, label %27 [
    i32 75792518, label %19
    i32 305037446, label %19
    i32 1879081094, label %19
    i32 1896906886, label %19
    i32 1905819782, label %19
    i32 605061254, label %19
    i32 606109830, label %19
    i32 608206982, label %19
    i32 397316, label %19
    i32 92672262, label %19
    i32 93720838, label %19
    i32 109449478, label %19
    i32 355668153, label %19
    i32 356716729, label %19
    i32 528441, label %19
    i32 4216, label %19
    i32 16781432, label %19
    i32 -956297147, label %19
    i32 -2006314912, label %19
    i32 33558886, label %19
  ]

19:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %20 = load i32, i32* @bootverbose, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_get_subclass(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -10000, i32* %2, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i32 @pci_get_subclass(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
