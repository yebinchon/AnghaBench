; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SiS 5591 host to AGP bridge\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SiS 530 host to AGP bridge\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SiS 540 host to AGP bridge\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SiS 550 host to AGP bridge\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SiS 620 host to AGP bridge\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SiS 630 host to AGP bridge\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SiS 645 host to AGP bridge\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"SiS 645DX host to AGP bridge\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"SiS 648 host to AGP bridge\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SiS 650 host to AGP bridge\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SiS 651 host to AGP bridge\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SiS 655 host to AGP bridge\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SiS 661 host to AGP bridge\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"SiS 730 host to AGP bridge\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"SiS 735 host to AGP bridge\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"SiS 740 host to AGP bridge\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"SiS 741 host to AGP bridge\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"SiS 745 host to AGP bridge\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"SiS 746 host to AGP bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @agp_sis_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agp_sis_match(i32 %0) #0 {
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
  br label %42

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @agp_find_caps(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %42

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_devid(i32 %20)
  switch i32 %21, label %41 [
    i32 69689, label %22
    i32 87035961, label %23
    i32 88084537, label %24
    i32 89133113, label %25
    i32 102764601, label %26
    i32 103813177, label %27
    i32 105189433, label %28
    i32 105254969, label %29
    i32 105386041, label %30
    i32 105910329, label %31
    i32 105975865, label %32
    i32 106238009, label %33
    i32 107024441, label %34
    i32 120590393, label %35
    i32 120918073, label %36
    i32 121638969, label %37
    i32 121704505, label %38
    i32 121966649, label %39
    i32 122032185, label %40
  ]

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %42

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %42

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %42

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %42

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %42

27:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %42

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %42

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %42

30:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %42

31:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %42

32:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %42

33:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %42

34:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %42

35:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %42

36:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %42

37:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %42

38:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %42

39:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %42

40:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %42

41:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %18, %13
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
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
