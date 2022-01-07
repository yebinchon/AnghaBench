; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_regret.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_regret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regretp = common dso_local global i64 0, align 8
@REGDEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Too many regrets\00", align 1
@regretstack = common dso_local global i32* null, align 8
@lexstring = common dso_local global i8* null, align 8
@STRINGLEN = common dso_local global i32 0, align 4
@string_stack = common dso_local global i32* null, align 8
@lexnumber = common dso_local global i32 0, align 4
@numberstack = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regret(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @regretp, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @regretp, align 8
  %5 = load i64, i64* @REGDEP, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32*, i32** @regretstack, align 8
  %12 = load i64, i64* @regretp, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i8*, i8** @lexstring, align 8
  %15 = load i32, i32* @STRINGLEN, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** @lexstring, align 8
  %20 = call i32 @savestr(i8* %19)
  %21 = load i32*, i32** @string_stack, align 8
  %22 = load i64, i64* @regretp, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @lexnumber, align 4
  %25 = load i32*, i32** @numberstack, align 8
  %26 = load i64, i64* @regretp, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @savestr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
