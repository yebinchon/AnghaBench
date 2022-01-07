; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_status_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_status_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"               busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"               redirection required\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"               bad version\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"               method not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"               method/attribute combo not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"               invalid attribute/modifier value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_status_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status_details(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 28
  %17 = ashr i32 %16, 2
  switch i32 %17, label %26 [
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
    i32 7, label %24
  ]

18:                                               ; preds = %14
  %19 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %26

20:                                               ; preds = %14
  %21 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %26

22:                                               ; preds = %14
  %23 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %26

24:                                               ; preds = %14
  %25 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %14, %24, %22, %20, %18
  ret void
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
