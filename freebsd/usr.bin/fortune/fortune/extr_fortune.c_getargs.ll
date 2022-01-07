; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_getargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_getargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"aefilm:osw\00", align 1
@TRUE = common dso_local global i8* null, align 8
@All_forts = common dso_local global i8* null, align 8
@Equal_probs = common dso_local global i8* null, align 8
@Find_files = common dso_local global i8* null, align 8
@Long_only = common dso_local global i8* null, align 8
@Short_only = common dso_local global i8* null, align 8
@Offend = common dso_local global i8* null, align 8
@Wait = common dso_local global i8* null, align 8
@Match = common dso_local global i8* null, align 8
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@Re_pat = common dso_local global i32 0, align 4
@REG_BASIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"regcomp(%s) fails\0A\00", align 1
@Debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @getargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** @FALSE, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %6, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %41 [
    i32 97, label %18
    i32 101, label %20
    i32 102, label %22
    i32 108, label %24
    i32 111, label %27
    i32 115, label %29
    i32 119, label %32
    i32 109, label %34
    i32 105, label %37
    i32 63, label %40
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @All_forts, align 8
  br label %43

20:                                               ; preds = %16
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** @Equal_probs, align 8
  br label %43

22:                                               ; preds = %16
  %23 = load i8*, i8** @TRUE, align 8
  store i8* %23, i8** @Find_files, align 8
  br label %43

24:                                               ; preds = %16
  %25 = load i8*, i8** @TRUE, align 8
  store i8* %25, i8** @Long_only, align 8
  %26 = load i8*, i8** @FALSE, align 8
  store i8* %26, i8** @Short_only, align 8
  br label %43

27:                                               ; preds = %16
  %28 = load i8*, i8** @TRUE, align 8
  store i8* %28, i8** @Offend, align 8
  br label %43

29:                                               ; preds = %16
  %30 = load i8*, i8** @TRUE, align 8
  store i8* %30, i8** @Short_only, align 8
  %31 = load i8*, i8** @FALSE, align 8
  store i8* %31, i8** @Long_only, align 8
  br label %43

32:                                               ; preds = %16
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @Wait, align 8
  br label %43

34:                                               ; preds = %16
  %35 = load i8*, i8** @TRUE, align 8
  store i8* %35, i8** @Match, align 8
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %6, align 8
  br label %43

37:                                               ; preds = %16
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %16, %40
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %37, %34, %32, %29, %27, %24, %22, %20, %18
  br label %11

44:                                               ; preds = %11
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %4, align 8
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @form_file_list(i8** %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %44
  %60 = load i8*, i8** @Find_files, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (...) @print_file_list()
  %64 = call i32 @exit(i32 0) #3
  unreachable

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @conv_pat(i8* %72)
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @REG_BASIC, align 4
  %77 = call i32 @regcomp(i32* @Re_pat, i8* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %65
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @form_file_list(i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @print_file_list(...) #1

declare dso_local i8* @conv_pat(i8*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
