; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@euid = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@price = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@summarize = common dso_local global i64 0, align 8
@sort = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@reverse = common dso_local global i32 0, align 4
@allflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PRINTER\00", align 1
@DEFLP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"pac: unknown printer %s\0A\00", align 1
@acctfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@sumfile = common dso_local global i32 0, align 4
@errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = call i32 (...) @geteuid()
  store i32 %9, i32* @euid, align 4
  %10 = call i32 (...) @getuid()
  store i32 %10, i32* @uid, align 4
  br label %11

11:                                               ; preds = %47, %41, %40, %37, %34, %31, %29, %2
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %47

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %44 [
    i32 80, label %29
    i32 112, label %31
    i32 115, label %34
    i32 99, label %37
    i32 109, label %40
    i32 114, label %41
  ]

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %8, align 8
  br label %11

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @atof(i8* %32)
  store i32 %33, i32* @price, align 4
  store i32 1, i32* @pflag, align 4
  br label %11

34:                                               ; preds = %24
  %35 = load i64, i64* @summarize, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @summarize, align 8
  br label %11

37:                                               ; preds = %24
  %38 = load i32, i32* @sort, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @sort, align 4
  br label %11

40:                                               ; preds = %24
  store i32 1, i32* @mflag, align 4
  br label %11

41:                                               ; preds = %24
  %42 = load i32, i32* @reverse, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @reverse, align 4
  br label %11

44:                                               ; preds = %24
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %7, align 8
  %50 = call i32 @enter(i8* %49)
  store i64 0, i64* @allflag, align 8
  br label %11

51:                                               ; preds = %11
  %52 = load i8*, i8** %8, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** @DEFLP, align 8
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %57, %54, %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @chkprinter(i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = call i32 @exit(i32 2) #3
  unreachable

67:                                               ; preds = %59
  %68 = load i32, i32* @acctfile, align 4
  %69 = call i32* @fopen(i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %69, i32** %6, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @acctfile, align 4
  %73 = call i32 @perror(i32 %72)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %67
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @account(i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i32, i32* @sumfile, align 4
  %81 = call i32* @fopen(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %81, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @account(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load i64, i64* @summarize, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @rewrite()
  br label %95

93:                                               ; preds = %88
  %94 = call i32 (...) @dumpit()
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* @errs, align 4
  %97 = call i32 @exit(i32 %96) #3
  unreachable
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @enter(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @chkprinter(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @account(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rewrite(...) #1

declare dso_local i32 @dumpit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
