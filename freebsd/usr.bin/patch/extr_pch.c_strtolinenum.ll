; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_strtolinenum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_strtolinenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINENUM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid line number at line %ld: `%s' is %s\0A\00", align 1
@p_input_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @strtolinenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strtolinenum(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isdigit(i8 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @malformed()
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %6, align 1
  %28 = load i8*, i8** %7, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @LINENUM_MAX, align 4
  %31 = call i32 @strtonum(i8* %29, i32 0, i32 %30, i8** %8)
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @p_input_line, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i8, i8* %6, align 1
  %41 = load i8*, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = load i8**, i8*** %4, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @malformed(...) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @fatal(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
