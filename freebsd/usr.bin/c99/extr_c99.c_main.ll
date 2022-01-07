; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/c99/extr_c99.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/c99/extr_c99.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = common dso_local global i32* null, align 8
@nargs = common dso_local global i64 0, align 8
@cargs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"cD:EgI:L:o:O:sU:l:\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/usr/bin/cc\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"-std=iso9899:1999\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-pedantic\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-l\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** @args, align 8
  store i64 0, i64* @nargs, align 8
  store i64 0, i64* @cargs, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 108
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* @optind, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @optind, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* @optind, align 4
  br label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @optind, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* @optind, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %41

34:                                               ; preds = %13
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39
  br label %8

41:                                               ; preds = %33, %8
  %42 = call i32 @addarg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @addarg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @addarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @optind, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @addarg(i8* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %45

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %118, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %64
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = call i32 @addlib(i8* %89)
  br label %109

91:                                               ; preds = %72
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = call i32 (...) @usage()
  br label %101

101:                                              ; preds = %99, %91
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @addlib(i8* %107)
  br label %109

109:                                              ; preds = %101, %82
  br label %118

110:                                              ; preds = %64
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @addarg(i8* %116)
  br label %118

118:                                              ; preds = %110, %109
  br label %60

119:                                              ; preds = %60
  %120 = load i32*, i32** @args, align 8
  %121 = call i32 @execv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %120)
  %122 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @addarg(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @addlib(i8*) #1

declare dso_local i32 @execv(i8*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
