; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_scanopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_scanopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"BMSabfmqsux\00", align 1
@bindirs = common dso_local global i32** null, align 8
@mandirs = common dso_local global i32** null, align 8
@sourcedirs = common dso_local global i32** null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@opt_a = common dso_local global i32 0, align 4
@opt_b = common dso_local global i32 0, align 4
@opt_m = common dso_local global i32 0, align 4
@opt_q = common dso_local global i32 0, align 4
@opt_s = common dso_local global i32 0, align 4
@opt_u = common dso_local global i32 0, align 4
@opt_x = common dso_local global i32 0, align 4
@query = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @scanopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanopts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32***, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %8

8:                                                ; preds = %92, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %93

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %90 [
    i32 66, label %15
    i32 77, label %16
    i32 83, label %17
    i32 97, label %82
    i32 98, label %83
    i32 102, label %84
    i32 109, label %85
    i32 113, label %86
    i32 115, label %87
    i32 117, label %88
    i32 120, label %89
  ]

15:                                               ; preds = %13
  store i32*** @bindirs, i32**** %7, align 8
  br label %18

16:                                               ; preds = %13
  store i32*** @mandirs, i32**** %7, align 8
  br label %18

17:                                               ; preds = %13
  store i32*** @sourcedirs, i32**** %7, align 8
  br label %18

18:                                               ; preds = %17, %16, %15
  store i32 0, i32* %6, align 4
  %19 = load i32***, i32**** %7, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32** @realloc(i32** %20, i32 %25)
  %27 = load i32***, i32**** %7, align 8
  store i32** %26, i32*** %27, align 8
  %28 = load i32***, i32**** %7, align 8
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %71, %18
  %34 = load i32, i32* @optind, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @optind, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load i8**, i8*** %4, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* @optind, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* @optind, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %61, %53, %45, %37, %33
  %70 = phi i1 [ false, %53 ], [ false, %45 ], [ false, %37 ], [ false, %33 ], [ %68, %61 ]
  br i1 %70, label %71, label %81

71:                                               ; preds = %69
  %72 = load i8**, i8*** %4, align 8
  %73 = load i32, i32* @optind, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32***, i32**** %7, align 8
  %78 = call i32 @decolonify(i8* %76, i32*** %77, i32* %6)
  %79 = load i32, i32* @optind, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @optind, align 4
  br label %33

81:                                               ; preds = %69
  br label %92

82:                                               ; preds = %13
  store i32 1, i32* @opt_a, align 4
  br label %92

83:                                               ; preds = %13
  store i32 1, i32* @opt_b, align 4
  br label %92

84:                                               ; preds = %13
  br label %94

85:                                               ; preds = %13
  store i32 1, i32* @opt_m, align 4
  br label %92

86:                                               ; preds = %13
  store i32 1, i32* @opt_q, align 4
  br label %92

87:                                               ; preds = %13
  store i32 1, i32* @opt_s, align 4
  br label %92

88:                                               ; preds = %13
  store i32 1, i32* @opt_u, align 4
  br label %92

89:                                               ; preds = %13
  store i32 1, i32* @opt_x, align 4
  br label %92

90:                                               ; preds = %13
  %91 = call i32 (...) @usage()
  br label %92

92:                                               ; preds = %90, %89, %88, %87, %86, %85, %83, %82, %81
  br label %8

93:                                               ; preds = %8
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* @optind, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i8**, i8*** %4, align 8
  %102 = load i32, i32* @optind, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8** %104, i8*** @query, align 8
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @decolonify(i8*, i32***, i32*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
