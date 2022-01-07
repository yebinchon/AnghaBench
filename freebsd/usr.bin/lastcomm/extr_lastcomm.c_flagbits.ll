; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_lastcomm.c_flagbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_lastcomm.c_flagbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flagbits.flags = internal global [20 x i8] c"-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@ASU = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@ACOMPAT = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @flagbits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @flagbits.flags, i64 0, i64 1), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ASU, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  store i8 83, i8* %9, align 1
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @AFORK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 70, i8* %17, align 1
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ACOMPAT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 67, i8* %25, align 1
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @ACORE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 68, i8* %33, align 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @AXSIG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 88, i8* %41, align 1
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %3, align 8
  store i8 0, i8* %44, align 1
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @flagbits.flags, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
