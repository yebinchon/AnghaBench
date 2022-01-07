; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_enlarge_bufspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_enlarge_bufspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufsize = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"too many characters pushed back\00", align 1
@MAXINP = common dso_local global i32 0, align 4
@bbase = common dso_local global i8** null, align 8
@bp = common dso_local global i8* null, align 8
@bufbase = common dso_local global i8* null, align 8
@endpbb = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enlarge_bufspace() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @bufsize, align 4
  %4 = sdiv i32 %3, 2
  %5 = load i32, i32* @bufsize, align 4
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* @bufsize, align 4
  %7 = load i8*, i8** @buf, align 8
  %8 = load i32, i32* @bufsize, align 4
  %9 = call i8* @xrealloc(i8* %7, i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %30, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MAXINP, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i8**, i8*** @bbase, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @buf, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  %26 = load i8**, i8*** @bbase, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  store i8* %25, i8** %29, align 8
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i8*, i8** @bp, align 8
  %35 = load i8*, i8** @buf, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i8*, i8** %1, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** @bp, align 8
  %41 = load i8*, i8** @bufbase, align 8
  %42 = load i8*, i8** @buf, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i8*, i8** %1, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** @bufbase, align 8
  %48 = load i8*, i8** %1, align 8
  store i8* %48, i8** @buf, align 8
  %49 = load i8*, i8** @buf, align 8
  %50 = load i32, i32* @bufsize, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** @endpbb, align 8
  ret void
}

declare dso_local i8* @xrealloc(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
