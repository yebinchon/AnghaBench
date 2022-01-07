; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"VIA 8763 (P4X600) host to PCI bridge\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"VIA PM800/PN800/PM880/PN880 host to PCI bridge\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"VIA KT880 host to PCI bridge\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"VIA 3296 (P4M800) host to PCI bridge\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"VIA 82C8363 (Apollo KT133x/KM133) host to PCI bridge\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"VIA 3314 (P4M800CE) host to PCI bridge\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"VIA VT3324 (CX700) host to PCI bridge\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"VIA 3327 (P4M890) host to PCI bridge\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"VIA 3364 (P4M900) host to PCI bridge\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"VIA 8371 (Apollo KX133) host to PCI bridge\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"VIA 8501 (Apollo MVP4) host to PCI bridge\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"VIA 82C597 (Apollo VP3) host to PCI bridge\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"VIA 82C598 (Apollo MVP3) host to PCI bridge\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"VIA 8601 (Apollo ProMedia/PLE133Ta) host to PCI bridge\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"VIA 82C694X (Apollo Pro 133A) host to PCI bridge\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"VIA 82C691 (Apollo Pro) host to PCI bridge\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"VIA 8633 (Pro 266) host to PCI bridge\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"VIA 8367 (KT266/KY266x/KT333) host to PCI bridge\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"VIA 8653 (Pro266T) host to PCI bridge\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"VIA 8361 (KLE133) host to PCI bridge\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"VIA XM266 (PM266/KM266) host to PCI bridge\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"VIA 862x (CLE266) host to PCI bridge\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"VIA 8753 (P4X266) host to PCI bridge\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"VIA 8703 (P4M266x/P4N266) host to PCI bridge\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"VIA XN266 (Apollo Pro266) host to PCI bridge\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"VIA 8754 (PT800) host to PCI bridge\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"VIA 8377 (Apollo KT400/KT400A/KT600) host to PCI bridge\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"VIA 8235/8237 (Apollo KM400/KM400A) host to PCI bridge\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"VIA 8783 (PT890) host to PCI bridge\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"VIA PT880 host to PCI bridge\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"VIA VT83xx/VT87xx/KTxxx/Px8xx host to PCI bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @agp_via_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agp_via_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_class(i32 %4)
  %6 = load i64, i64* @PCIC_BRIDGE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_subclass(i32 %9)
  %11 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i8* null, i8** %2, align 8
  br label %54

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @agp_find_caps(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %54

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_devid(i32 %20)
  switch i32 %21, label %53 [
    i32 26743046, label %22
    i32 39391494, label %23
    i32 40440070, label %24
    i32 43389190, label %25
    i32 50663686, label %26
    i32 51646726, label %27
    i32 52695302, label %28
    i32 52891910, label %29
    i32 56889606, label %30
    i32 59838726, label %31
    i32 83955974, label %32
    i32 93786374, label %33
    i32 93851910, label %34
    i32 100733190, label %35
    i32 100995334, label %36
    i32 110170374, label %37
    i32 814813446, label %38
    i32 815337734, label %39
    i32 822153478, label %40
    i32 823267590, label %41
    i32 823529734, label %42
    i32 824381702, label %43
    i32 824709382, label %44
    i32 826806534, label %45
    i32 827724038, label %46
    i32 828903686, label %47
    i32 831066374, label %48
    i32 839192838, label %49
    i32 839389446, label %50
    i32 844632326, label %51
    i32 -1315434234, label %52
  ]

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %54

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %54

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %54

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %54

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %54

27:                                               ; preds = %19
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %54

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %54

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %54

30:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %54

31:                                               ; preds = %19
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %54

32:                                               ; preds = %19
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %54

33:                                               ; preds = %19
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %54

34:                                               ; preds = %19
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %54

35:                                               ; preds = %19
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %54

36:                                               ; preds = %19
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %54

37:                                               ; preds = %19
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %54

38:                                               ; preds = %19
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %54

39:                                               ; preds = %19
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %54

40:                                               ; preds = %19
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %54

41:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %54

42:                                               ; preds = %19
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %54

43:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %54

44:                                               ; preds = %19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %54

45:                                               ; preds = %19
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %54

46:                                               ; preds = %19
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %54

47:                                               ; preds = %19
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %54

48:                                               ; preds = %19
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %54

49:                                               ; preds = %19
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %54

50:                                               ; preds = %19
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %54

51:                                               ; preds = %19
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %54

52:                                               ; preds = %19
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %54

53:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %54

54:                                               ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %18, %13
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
