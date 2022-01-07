; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"AMD 8151 AGP graphics tunnel\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SiS 755 host to AGP bridge\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SiS 760 host to AGP bridge\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ULi M1689 AGP Controller\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NVIDIA nForce3 AGP Controller\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"NVIDIA nForce3-250 AGP Controller\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"VIA 8380 host to PCI bridge\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"VIA 3238 host to PCI bridge\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"VIA K8T800Pro host to PCI bridge\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"VIA 8385 host to PCI bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @agp_amd64_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agp_amd64_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_class(i32 %4)
  %6 = load i64, i64* @PCIC_BRIDGE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_subclass(i32 %9)
  %11 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @agp_find_caps(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %8, %1
  store i8* null, i8** %2, align 8
  br label %40

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pci_get_devid(i32 %19)
  switch i32 %20, label %39 [
    i32 1951666210, label %21
    i32 123015225, label %22
    i32 123736121, label %23
    i32 378081465, label %24
    i32 13701342, label %25
    i32 14749918, label %30
    i32 33820934, label %35
    i32 37228806, label %36
    i32 42078470, label %37
    i32 831000838, label %38
  ]

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %40

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %40

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %40

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %40

25:                                               ; preds = %18
  %26 = call i32 @agp_amd64_nvidia_match(i32 210)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %40

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %40

30:                                               ; preds = %18
  %31 = call i32 @agp_amd64_nvidia_match(i32 226)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* null, i8** %2, align 8
  br label %40

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %40

35:                                               ; preds = %18
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %40

36:                                               ; preds = %18
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %40

37:                                               ; preds = %18
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %40

38:                                               ; preds = %18
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %40

39:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %38, %37, %36, %35, %34, %33, %29, %28, %24, %23, %22, %21, %17
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @agp_amd64_nvidia_match(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
