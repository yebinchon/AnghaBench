; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_files.c_protocol_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_files.c_protocol_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ICM\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SCT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"IPD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IP?\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"UDS\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"UDD\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"UD?\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @protocol_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @protocol_to_string(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %23 [
    i32 138, label %9
    i32 137, label %9
    i32 136, label %18
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %17 [
    i32 131, label %11
    i32 130, label %12
    i32 134, label %13
    i32 133, label %14
    i32 132, label %15
    i32 135, label %16
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %24

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %24

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %24

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %24

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %24

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %24

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %22 [
    i32 128, label %20
    i32 129, label %21
  ]

20:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %24

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %24

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %17, %16, %15, %14, %13, %12, %11
  %25 = load i8*, i8** %4, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
