; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_fchmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_fchmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*, i32)* @check_fchmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_fchmod(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %49, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @notok_mode(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %49

33:                                               ; preds = %18
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @fchmod(i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @ok_mode(i8* %39, i32* null, i32 %40)
  br label %46

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @notok_mode(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %14

52:                                               ; preds = %14
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i32 @ok_mode(i8*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
