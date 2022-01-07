; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci_pci.c_ohci_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"AcerLabs M5237 (Aladdin-V) USB controller\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"AMD-756 USB Controller\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"AMD-766 USB Controller\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"AMD FCH USB Controller\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ATI SB400 USB Controller\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"AMD SB7x0/SB8x0/SB9x0 USB controller\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"CMD Tech 670 (USB0670) USB controller\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"CMD Tech 673 (USB0673) USB controller\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"OPTi 82C861 (FireLink) USB controller\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"NEC uPD 9210 USB controller\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"nVidia nForce3 USB Controller\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"nVidia nForce CK804 USB Controller\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"nVidia nForce MCP55 USB Controller\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"nVidia nForce MCP61 USB Controller\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"nVidia nForce MCP79 USB Controller\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SiS 5571 USB controller\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Sun PCIO-2 USB controller\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Apple KeyLargo USB controller\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Apple KeyLargo/Intrepid USB controller\00", align 1
@PCIC_SERIALBUS = common dso_local global i64 0, align 8
@PCIS_SERIALBUS_USB = common dso_local global i64 0, align 8
@PCI_INTERFACE_OHCI = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [30 x i8] c"OHCI (generic) USB controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ohci_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ohci_pci_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %32 [
    i32 1379340473, label %8
    i32 1946947618, label %9
    i32 1947471906, label %10
    i32 2013728802, label %11
    i32 1131679746, label %12
    i32 1131745282, label %13
    i32 1133973506, label %14
    i32 1134039042, label %15
    i32 1134104578, label %16
    i32 108007573, label %17
    i32 108204181, label %18
    i32 -933162939, label %19
    i32 3477555, label %20
    i32 14094558, label %21
    i32 5902558, label %22
    i32 57413854, label %23
    i32 66130142, label %24
    i32 178589918, label %25
    i32 178720990, label %26
    i32 178786526, label %27
    i32 1879117881, label %28
    i32 285413518, label %29
    i32 1642603, label %30
    i32 4132971, label %31
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %50

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %50

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %50

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %50

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %50

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %50

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %50

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %50

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %50

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %50

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %50

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %50

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %50

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %50

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %50

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %50

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %50

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %50

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %50

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %50

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %50

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %50

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %50

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %50

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pci_get_class(i32 %34)
  %36 = load i64, i64* @PCIC_SERIALBUS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @pci_get_subclass(i32 %39)
  %41 = load i64, i64* @PCIS_SERIALBUS_USB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @pci_get_progif(i32 %44)
  %46 = load i64, i64* @PCI_INTERFACE_OHCI, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %50

49:                                               ; preds = %43, %38, %33
  store i8* null, i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %48, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @pci_get_progif(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
