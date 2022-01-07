; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/protect/extr_protect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/protect/extr_protect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_PID = common dso_local global i32 0, align 4
@PPROT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cdig:p:\00", align 1
@PPROT_CLEAR = common dso_local global i32 0, align 4
@P_PGID = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@PPROT_DESCEND = common dso_local global i32 0, align 4
@PPROT_INHERIT = common dso_local global i32 0, align 4
@PROC_SPROTECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"procctl\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @P_PID, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @getpid()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @PPROT_SET, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %35 [
    i32 99, label %23
    i32 100, label %25
    i32 105, label %26
    i32 103, label %27
    i32 112, label %31
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @PPROT_CLEAR, align 4
  store i32 %24, i32* %9, align 4
  br label %35

25:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %35

26:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @P_PGID, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @parse_id(i32 %29)
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @P_PID, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @parse_id(i32 %33)
  store i32 %34, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %21, %31, %27, %26, %25, %23
  br label %16

36:                                               ; preds = %16
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53, %47
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %56, %50
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @PPROT_DESCEND, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @PPROT_INHERIT, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PROC_SPROTECT, align 4
  %79 = call i32 @procctl(i32 %76, i32 %77, i32 %78, i32* %9)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  store i64 0, i64* @errno, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = call i32 @execvp(i8* %88, i8** %89)
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @ENOENT, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 127, i32 126
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @err(i32 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %86, %83
  ret i32 0
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_id(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @procctl(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
