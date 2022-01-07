; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cfi/extr_cfi.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cfi/extr_cfi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"CFI\00", align 1
@dvname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/cfi0\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"missing device name for -f option\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fact\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"oem\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"woem\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"missing value for woem\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"plr\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"wplr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** @dvname, align 8
  %7 = load i8*, i8** @dvname, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** @dvname, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @dvname, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8** %34, i8*** %5, align 8
  br label %44

35:                                               ; preds = %16
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %10
  br label %46

46:                                               ; preds = %115, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %120

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = call i64 (...) @getfactorypr()
  %57 = trunc i64 %56 to i32
  %58 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %114

59:                                               ; preds = %49
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcasecmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = call i64 (...) @getoempr()
  %67 = trunc i64 %66 to i32
  %68 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %113

69:                                               ; preds = %59
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcasecmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strtoull(i8* %83, i32* null, i32 0)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @setoempr(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %5, align 8
  br label %112

91:                                               ; preds = %69
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcasecmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = call i32 (...) @getplr()
  %99 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %98)
  br label %111

100:                                              ; preds = %91
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strcasecmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 (...) @setplr()
  br label %110

108:                                              ; preds = %100
  %109 = call i32 (...) @usage()
  br label %110

110:                                              ; preds = %108, %106
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %80
  br label %113

113:                                              ; preds = %112, %65
  br label %114

114:                                              ; preds = %113, %55
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %5, align 8
  br label %46

120:                                              ; preds = %46
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @getfactorypr(...) #1

declare dso_local i64 @getoempr(...) #1

declare dso_local i32 @setoempr(i32) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @getplr(...) #1

declare dso_local i32 @setplr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
