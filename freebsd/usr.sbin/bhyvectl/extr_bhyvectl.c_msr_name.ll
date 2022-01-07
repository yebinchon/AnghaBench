; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_msr_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_msr_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msr_name.buf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"MSR_TSC\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MSR_EFER\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MSR_STAR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MSR_LSTAR\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"MSR_CSTAR\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MSR_SF_MASK\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MSR_FSBASE\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MSR_GSBASE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"MSR_KGSBASE\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"MSR_SYSENTER_CS_MSR\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"MSR_SYSENTER_ESP_MSR\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"MSR_SYSENTER_EIP_MSR\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"MSR_PAT\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"MSR       %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @msr_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @msr_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %18 [
    i32 128, label %5
    i32 139, label %6
    i32 132, label %7
    i32 135, label %8
    i32 140, label %9
    i32 133, label %10
    i32 138, label %11
    i32 137, label %12
    i32 136, label %13
    i32 131, label %14
    i32 129, label %15
    i32 130, label %16
    i32 134, label %17
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %21

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %21

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @msr_name.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %19)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @msr_name.buf, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
