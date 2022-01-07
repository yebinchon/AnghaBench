; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_fortran.c_takeprec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_fortran.c_takeprec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lbp = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @takeprec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @takeprec() #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = load i8*, i8** @lbp, align 8
  %3 = load i8, i8* %2, align 1
  %4 = call i64 @isspace(i8 signext %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6
  %8 = load i8*, i8** @lbp, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** @lbp, align 8
  br label %1

10:                                               ; preds = %1
  %11 = load i8*, i8** @lbp, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i8*, i8** @lbp, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @lbp, align 8
  br label %18

18:                                               ; preds = %24, %15
  %19 = load i8*, i8** @lbp, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** @lbp, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** @lbp, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load i8*, i8** @lbp, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdigit(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** @lbp, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** @lbp, align 8
  br label %44

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i8*, i8** @lbp, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @lbp, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %36

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %10
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
