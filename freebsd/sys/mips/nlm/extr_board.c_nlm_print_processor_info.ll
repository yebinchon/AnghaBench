; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_print_processor_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_print_processor_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"XLP 832\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"XLP 3xx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XLP 4xx\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"XLP ?xx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Processor info:\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"  Netlogic %s %s [%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nlm_print_processor_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_print_processor_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = call i32 (...) @mips_rd_prid()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = ashr i32 %7, 8
  %9 = and i32 %8, 255
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 131, label %14
    i32 129, label %15
    i32 130, label %15
  ]

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %17

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %17

15:                                               ; preds = %0, %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %17

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
    i32 4, label %23
  ]

19:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %25

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %25

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %25

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %25

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %25

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %27, i8* %28, i32 %29)
  ret void
}

declare dso_local i32 @mips_rd_prid(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
