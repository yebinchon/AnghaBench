; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_do_show_info_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_do_show_info_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%4s %8s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Idx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Hits\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" FCoE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" Port\00", align 1
@T4_FILTER_IC_VNIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"   VFvld:PF:VF\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"     vld:oVLAN\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"      vld:VLAN\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"   TOS\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"  Prot\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"   EthType\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"  MACIdx\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" MPS\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" Frag\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" %20s %20s %9s %9s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"DIP\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"SIP\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"DPORT\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SPORT\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_show_info_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_show_info_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 136, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 135
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %40 [
    i32 136, label %12
    i32 130, label %14
    i32 128, label %16
    i32 129, label %26
    i32 133, label %28
    i32 134, label %30
    i32 137, label %32
    i32 132, label %34
    i32 131, label %36
    i32 135, label %38
  ]

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %41

14:                                               ; preds = %8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %41

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @T4_FILTER_IC_VNIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  br label %41

26:                                               ; preds = %8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %41

28:                                               ; preds = %8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %41

30:                                               ; preds = %8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %41

32:                                               ; preds = %8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %41

34:                                               ; preds = %8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %41

36:                                               ; preds = %8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %41

38:                                               ; preds = %8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %41

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40, %38, %36, %34, %32, %30, %28, %26, %25, %14, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %5
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
