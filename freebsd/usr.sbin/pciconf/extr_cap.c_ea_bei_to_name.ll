; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ea_bei_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ea_bei_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ea_bei_to_name.barstr = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"BAR0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"BAR2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BAR3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BAR4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BAR5\00", align 1
@ea_bei_to_name.vfbarstr = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"VFBAR0\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"VFBAR1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"VFBAR2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"VFBAR3\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"VFBAR4\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"VFBAR5\00", align 1
@PCIM_EA_BEI_BAR_0 = common dso_local global i32 0, align 4
@PCIM_EA_BEI_BAR_5 = common dso_local global i32 0, align 4
@PCIM_EA_BEI_VF_BAR_0 = common dso_local global i32 0, align 4
@PCIM_EA_BEI_VF_BAR_5 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"BRIDGE\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ENI\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RSVD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ea_bei_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ea_bei_to_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PCIM_EA_BEI_BAR_0, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCIM_EA_BEI_BAR_5, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PCIM_EA_BEI_BAR_0, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ea_bei_to_name.barstr, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %40

18:                                               ; preds = %7, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PCIM_EA_BEI_VF_BAR_0, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PCIM_EA_BEI_VF_BAR_5, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PCIM_EA_BEI_VF_BAR_0, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ea_bei_to_name.vfbarstr, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %40

33:                                               ; preds = %22, %18
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %39 [
    i32 131, label %35
    i32 130, label %36
    i32 128, label %37
    i32 129, label %38
  ]

35:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %40

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %40

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %40

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %33, %38
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %37, %36, %35, %26, %11
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
