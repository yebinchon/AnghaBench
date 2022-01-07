; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"AMD KERNCZ USB 3.0 controller\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"AMD X399 USB 3.0 controller\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"AMD 300 Series USB 3.0 controller\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AMD FCH USB 3.0 controller\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"NEC uPD720200 USB 3.0 controller\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"NEC uPD720202 USB 3.0 controller\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Fresco Logic FL1000G USB 3.0 controller\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Fresco Logic FL1100 USB 3.0 controller\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ASMedia ASM1042 USB 3.0 controller\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ASMedia ASM1042A USB 3.0 controller\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Intel BayTrail USB 3.0 controller\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Intel Denverton USB 3.0 controller\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Intel Panther Point USB 3.0 controller\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Intel Braswell USB 3.0 controller\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Intel Apollo Lake USB 3.0 controller\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Intel Lynx Point USB 3.0 controller\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Intel Wildcat Point USB 3.0 controller\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Intel Wellsburg USB 3.0 controller\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Broadwell Integrated PCH-LP chipset USB 3.0 controller\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Intel Sunrise Point-LP USB 3.0 controller\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Intel Sunrise Point USB 3.0 controller\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Intel Lewisburg USB 3.0 controller\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Intel Union Point USB 3.0 controller\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Intel Cannon Lake USB 3.1 controller\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Cavium ThunderX USB 3.0 controller\00", align 1
@PCIC_SERIALBUS = common dso_local global i64 0, align 8
@PCIS_SERIALBUS_USB = common dso_local global i64 0, align 8
@PCIP_SERIALBUS_USB_XHCI = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [34 x i8] c"XHCI (generic) USB 3.0 controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @xhci_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xhci_pci_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %33 [
    i32 341577762, label %8
    i32 1136267298, label %9
    i32 1136201762, label %10
    i32 1136332834, label %10
    i32 2014580770, label %11
    i32 26480691, label %12
    i32 1382674, label %13
    i32 268442483, label %14
    i32 285219699, label %15
    i32 272767777, label %16
    i32 289544993, label %17
    i32 255164550, label %18
    i32 433094790, label %19
    i32 -1674477434, label %20
    i32 506560646, label %20
    i32 582320262, label %21
    i32 1520992390, label %22
    i32 -1942912890, label %23
    i32 -1934524282, label %24
    i32 -1926135674, label %25
    i32 -1666088826, label %26
    i32 -1657831290, label %27
    i32 -1590722426, label %28
    i32 -1582333818, label %29
    i32 -1565556602, label %30
    i32 -1553104762, label %31
    i32 -1608837251, label %32
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %51

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %51

10:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %51

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %51

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %51

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %51

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %51

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %51

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %51

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %51

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %51

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %51

20:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %51

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %51

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %51

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %51

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %51

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %51

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %51

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %51

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %51

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %51

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %51

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %51

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %51

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @pci_get_class(i32 %35)
  %37 = load i64, i64* @PCIC_SERIALBUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @pci_get_subclass(i32 %40)
  %42 = load i64, i64* @PCIS_SERIALBUS_USB, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @pci_get_progif(i32 %45)
  %47 = load i64, i64* @PCIP_SERIALBUS_USB_XHCI, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %51

50:                                               ; preds = %44, %39, %34
  store i8* null, i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %49, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
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
