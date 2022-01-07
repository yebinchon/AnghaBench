; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_rf_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_rf_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zyd_rf_name.zyd_rfs = internal constant [16 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"UW2451\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UCHIP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"AL2230\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"AL7230B\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"THETA\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"AL2210\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MAXIM_NEW\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"GCT\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"AL2230S\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"RALINK\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"INTERSIL\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RFMD\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"MAXIM_NEW2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"PHILIPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @zyd_rf_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zyd_rf_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 15
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ 0, %5 ], [ %7, %6 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i8*], [16 x i8*]* @zyd_rf_name.zyd_rfs, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
