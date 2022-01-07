; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_parse_cmd_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_parse_cmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdentry = type { i32*, i32* }

@commands = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"memory allocating failure\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@delay = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid arguments list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_cmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cmd_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdentry*, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.cmdentry* null, %struct.cmdentry** %6, align 8
  br label %8

8:                                                ; preds = %104, %32, %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %109

11:                                               ; preds = %8
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %59

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @SLIST_INSERT_HEAD(i32* @commands, %struct.cmdentry* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @memcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 3)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %4, align 8
  br label %8

37:                                               ; preds = %26
  %38 = call %struct.cmdentry* @calloc(i32 1, i32 16)
  store %struct.cmdentry* %38, %struct.cmdentry** %6, align 8
  %39 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %40 = icmp eq %struct.cmdentry* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i8* @strdup(i8* %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %51 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %53 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %43
  store i32 1, i32* %5, align 4
  br label %104

59:                                               ; preds = %11
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call double @strtod(i8* %65, i32* null)
  %67 = fmul double %66, 1.000000e+06
  store double %67, double* %7, align 8
  %68 = load double, double* %7, align 8
  %69 = fcmp ogt double %68, 0.000000e+00
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load double, double* %7, align 8
  %72 = load i64, i64* @UINT_MAX, align 8
  %73 = sitofp i64 %72 to double
  %74 = fcmp olt double %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load double, double* %7, align 8
  %77 = fptoui double %76 to i32
  store i32 %77, i32* @delay, align 4
  br label %78

78:                                               ; preds = %75, %70, %62
  br label %103

79:                                               ; preds = %59
  %80 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %81 = icmp ne %struct.cmdentry* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @strdup(i8* %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %89 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %91 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82
  store i32 0, i32* %5, align 4
  %97 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %98 = load i32, i32* @link, align 4
  %99 = call i32 @SLIST_INSERT_HEAD(i32* @commands, %struct.cmdentry* %97, i32 %98)
  br label %102

100:                                              ; preds = %79
  %101 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %58
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %3, align 4
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %4, align 8
  br label %8

109:                                              ; preds = %8
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %114 = icmp ne %struct.cmdentry* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %117 = load i32, i32* @link, align 4
  %118 = call i32 @SLIST_INSERT_HEAD(i32* @commands, %struct.cmdentry* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %112, %109
  ret void
}

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.cmdentry*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.cmdentry* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local double @strtod(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
