; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_doregexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_doregexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Too few arguments to regexp\00", align 1
@mimic_gnu = common dso_local global i64 0, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doregexp(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @m4_warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %97

13:                                               ; preds = %2
  %14 = load i8**, i8*** %3, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load i64, i64* @mimic_gnu, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 4
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %24
  br label %97

33:                                               ; preds = %27
  %34 = load i8**, i8*** %3, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @pbstr(i8* %36)
  br label %38

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %21, %13
  %40 = load i64, i64* @mimic_gnu, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @twiddle(i8* %45)
  br label %51

47:                                               ; preds = %39
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  %50 = load i8*, i8** %49, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i8* [ %46, %42 ], [ %50, %47 ]
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @REG_EXTENDED, align 4
  %55 = load i32, i32* @REG_NEWLINE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @regcomp(%struct.TYPE_7__* %6, i8* %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @exit_regerror(i32 %61, %struct.TYPE_7__* %6, i8* %62)
  br label %64

64:                                               ; preds = %60, %51
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = call i32* @xreallocarray(i32* null, i64 %67, i32 4, i32* null)
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load i8**, i8*** %3, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 4
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71, %64
  %77 = load i8**, i8*** %3, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @do_regexpindex(i8* %79, %struct.TYPE_7__* %6, i8* %80, i32* %81)
  br label %93

83:                                               ; preds = %71
  %84 = load i8**, i8*** %3, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8**, i8*** %3, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 4
  %90 = load i8*, i8** %89, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @do_regexp(i8* %86, %struct.TYPE_7__* %6, i8* %87, i8* %90, i32* %91)
  br label %93

93:                                               ; preds = %83, %76
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @free(i32* %94)
  %96 = call i32 @regfree(%struct.TYPE_7__* %6)
  br label %97

97:                                               ; preds = %93, %32, %11
  ret void
}

declare dso_local i32 @m4_warnx(i8*) #1

declare dso_local i32 @pbstr(i8*) #1

declare dso_local i8* @twiddle(i8*) #1

declare dso_local i32 @regcomp(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @exit_regerror(i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32* @xreallocarray(i32*, i64, i32, i32*) #1

declare dso_local i32 @do_regexpindex(i8*, %struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @do_regexp(i8*, %struct.TYPE_7__*, i8*, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @regfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
