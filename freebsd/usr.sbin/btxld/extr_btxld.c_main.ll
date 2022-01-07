; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"qvb:E:e:f:l:o:P:W:\00", align 1
@quiet = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@bname = common dso_local global i8* null, align 8
@centry = common dso_local global i8* null, align 8
@Eflag = common dso_local global i32 0, align 4
@lentry = common dso_local global i8* null, align 8
@format = common dso_local global i32 0, align 4
@lname = common dso_local global i8* null, align 8
@oname = common dso_local global i8* null, align 8
@ppage = common dso_local global i8* null, align 8
@BTX_MAXCWR = common dso_local global i32 0, align 4
@wpage = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %40, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %38 [
    i32 113, label %14
    i32 118, label %15
    i32 98, label %16
    i32 69, label %18
    i32 101, label %21
    i32 102, label %24
    i32 108, label %27
    i32 111, label %29
    i32 80, label %31
    i32 87, label %34
  ]

14:                                               ; preds = %12
  store i32 1, i32* @quiet, align 4
  br label %40

15:                                               ; preds = %12
  store i32 1, i32* @verbose, align 4
  br label %40

16:                                               ; preds = %12
  %17 = load i8*, i8** @optarg, align 8
  store i8* %17, i8** @bname, align 8
  br label %40

18:                                               ; preds = %12
  %19 = load i8*, i8** @optarg, align 8
  %20 = call i8* @optaddr(i8* %19)
  store i8* %20, i8** @centry, align 8
  store i32 1, i32* @Eflag, align 4
  br label %40

21:                                               ; preds = %12
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i8* @optaddr(i8* %22)
  store i8* %23, i8** @lentry, align 8
  br label %40

24:                                               ; preds = %12
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @optfmt(i8* %25)
  store i32 %26, i32* @format, align 4
  br label %40

27:                                               ; preds = %12
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** @lname, align 8
  br label %40

29:                                               ; preds = %12
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** @oname, align 8
  br label %40

31:                                               ; preds = %12
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @optpage(i8* %32, i32 1)
  store i8* %33, i8** @ppage, align 8
  br label %40

34:                                               ; preds = %12
  %35 = load i8*, i8** @optarg, align 8
  %36 = load i32, i32* @BTX_MAXCWR, align 4
  %37 = call i8* @optpage(i8* %35, i32 %36)
  store i8* %37, i8** @wpage, align 8
  br label %40

38:                                               ; preds = %12
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %34, %31, %29, %27, %24, %21, %18, %16, %15, %14
  br label %7

41:                                               ; preds = %7
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i32, i32* @cleanup, align 4
  %56 = call i32 @atexit(i32 %55)
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @btxld(i8* %58)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @optaddr(i8*) #1

declare dso_local i32 @optfmt(i8*) #1

declare dso_local i8* @optpage(i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @btxld(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
