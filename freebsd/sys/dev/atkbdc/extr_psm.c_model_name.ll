; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_model_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_model_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@model_name.models = internal global [15 x %struct.anon] [%struct.anon { i32 133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i32 139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i32 141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i32 140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { i32 138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [10 x i8] c"NetScroll\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"NetMouse/NetScroll Optical\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GlidePoint\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ThinkingMouse\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"IntelliMouse\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MouseMan+\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"VersaPad\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"IntelliMouse Explorer\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"4D Mouse\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"4D+ Mouse\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Synaptics Touchpad\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"IBM/Lenovo TrackPoint\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Elantech Touchpad\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Generic PS/2 mouse\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @model_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @model_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @model_name.models, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ne i32 %9, 129
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @model_name.models, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @model_name.models, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
