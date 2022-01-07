; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"ALi M5239 USB 2.0 controller\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"AMD 8111 USB 2.0 controller\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"AMD CS5536 (Geode) USB 2.0 controller\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AMD FCH USB 2.0 controller\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ATI SB200 USB 2.0 controller\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ATI SB400 USB 2.0 controller\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"AMD SB7x0/SB8x0/SB9x0 USB 2.0 controller\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Intel BayTrail USB 2.0 controller\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Intel Cougar Point USB 2.0 controller\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Intel Patsburg USB 2.0 controller\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Intel Panther Point USB 2.0 controller\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Intel Avoton USB 2.0 controller\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Intel 6300ESB USB 2.0 controller\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Intel 82801DB/L/M (ICH4) USB 2.0 controller\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Intel 82801EB/R (ICH5) USB 2.0 controller\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Intel 82801FB (ICH6) USB 2.0 controller\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Intel 63XXESB USB 2.0 controller\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Intel 82801GB/R (ICH7) USB 2.0 controller\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Intel 82801H (ICH8) USB 2.0 controller USB2-A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Intel 82801H (ICH8) USB 2.0 controller USB2-B\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Intel 82801I (ICH9) USB 2.0 controller\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Intel 82801JI (ICH10) USB 2.0 controller USB-A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Intel 82801JI (ICH10) USB 2.0 controller USB-B\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Intel PCH USB 2.0 controller USB-A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Intel PCH USB 2.0 controller USB-B\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Intel Lynx Point USB 2.0 controller USB-A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Intel Lynx Point USB 2.0 controller USB-B\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Intel Wildcat Point USB 2.0 controller USB-A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Intel Wildcat Point USB 2.0 controller USB-B\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Intel Wellsburg USB 2.0 controller\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Intel Lynx Point-LP USB 2.0 controller\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"NEC uPD 72010x USB 2.0 controller\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"NVIDIA nForce2 USB 2.0 controller\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"NVIDIA nForce2 Ultra 400 USB 2.0 controller\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"NVIDIA nForce3 USB 2.0 controller\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"NVIDIA nForce3 250 USB 2.0 controller\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"NVIDIA nForce CK804 USB 2.0 controller\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"NVIDIA nForce MCP55 USB 2.0 controller\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"NVIDIA nForce MCP61 USB 2.0 controller\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"NVIDIA nForce MCP79 USB 2.0 controller\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Philips ISP156x USB 2.0 controller\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"SiS 968 USB 2.0 controller\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"VIA VT6202 USB 2.0 controller\00", align 1
@PCIC_SERIALBUS = common dso_local global i64 0, align 8
@PCIS_SERIALBUS_USB = common dso_local global i64 0, align 8
@PCI_INTERFACE_EHCI = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [34 x i8] c"EHCI (generic) USB 2.0 controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ehci_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ehci_pci_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %58 [
    i32 1379471545, label %8
    i32 270693475, label %9
    i32 546639906, label %10
    i32 2013794338, label %11
    i32 1128599554, label %12
    i32 1131614210, label %13
    i32 1133907970, label %14
    i32 255099014, label %15
    i32 472285318, label %16
    i32 472744070, label %17
    i32 489062534, label %18
    i32 489521286, label %19
    i32 505839750, label %20
    i32 506298502, label %21
    i32 523010182, label %22
    i32 632127622, label %23
    i32 617447558, label %24
    i32 618496134, label %25
    i32 643596422, label %26
    i32 646742150, label %27
    i32 667713670, label %28
    i32 674660486, label %29
    i32 674922630, label %30
    i32 691699846, label %31
    i32 691830918, label %32
    i32 976912518, label %33
    i32 977043590, label %34
    i32 993296518, label %35
    i32 993820806, label %36
    i32 -1943633786, label %37
    i32 -1943175034, label %38
    i32 -1935245178, label %39
    i32 -1934786426, label %40
    i32 -1926856570, label %41
    i32 -1926397818, label %42
    i32 -1675198330, label %43
    i32 14684211, label %44
    i32 6820062, label %45
    i32 8917214, label %46
    i32 14160094, label %47
    i32 15208670, label %48
    i32 5968094, label %49
    i32 57479390, label %50
    i32 66195678, label %51
    i32 178655454, label %52
    i32 178852062, label %53
    i32 178917598, label %54
    i32 358748465, label %55
    i32 1879183417, label %56
    i32 822350086, label %57
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %76

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %76

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %76

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %76

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %76

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %76

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %76

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %76

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %76

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %76

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %76

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %76

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %76

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %76

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %76

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %76

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %76

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %76

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %76

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %76

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %76

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %76

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %76

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %76

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %76

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %76

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %76

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %76

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %76

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %76

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %76

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %76

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %76

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %76

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %76

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %76

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %76

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %76

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %76

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %76

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %76

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %76

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %76

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %76

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %76

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %76

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %76

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %76

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %76

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %76

58:                                               ; preds = %1
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @pci_get_class(i32 %60)
  %62 = load i64, i64* @PCIC_SERIALBUS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @pci_get_subclass(i32 %65)
  %67 = load i64, i64* @PCIS_SERIALBUS_USB, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @pci_get_progif(i32 %70)
  %72 = load i64, i64* @PCI_INTERFACE_EHCI, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %76

75:                                               ; preds = %69, %64, %59
  store i8* null, i8** %2, align 8
  br label %76

76:                                               ; preds = %75, %74, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
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
