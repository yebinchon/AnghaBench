; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_fail_assertion.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_fail_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"not ok %d - %s\0A\00", align 1
@curtest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"# %s(): assertion %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"# %s(%s): assertion %s failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"# %s(%s, %s): assertion %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @fail_assertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_assertion(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @curtest, align 4
  %10 = load i8*, i8** %8, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %16)
  br label %33

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  br label %32

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %27, i8* %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %14
  %34 = call i32 @exit(i32 -1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
