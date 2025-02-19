; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_deliv_status_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_deliv_status_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"no errors\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"signature error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"token error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"bad block number\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"output pointer not aligned to block size\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"input pointer not aligned to block size\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"firmware internal error\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"command input length error\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"command ouput length error\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"reserved fields not cleared\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"bad command descriptor type\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"unknown status code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @deliv_status_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @deliv_status_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 133, label %5
    i32 129, label %6
    i32 128, label %7
    i32 138, label %8
    i32 131, label %9
    i32 134, label %10
    i32 136, label %11
    i32 135, label %12
    i32 132, label %13
    i32 130, label %14
    i32 137, label %15
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %17

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %17

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %17

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %17

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %17

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %17

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %17

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %17

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %17

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
