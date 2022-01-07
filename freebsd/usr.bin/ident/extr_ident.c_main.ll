; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ident/extr_ident.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ident/extr_ident.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"qV\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usage: %s [-q] [-V] [file...]\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to limit stdio\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to allocate fds array\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAPH_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"unable to limit fcntls/rights for %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %25 [
    i32 113, label %22
    i32 86, label %23
  ]

22:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %179

25:                                               ; preds = %20
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 (...) @getprogname()
  %28 = call i32 @errx(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %15

30:                                               ; preds = %15
  %31 = load i64, i64* @optind, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* @optind, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  store i8** %38, i8*** %5, align 8
  %39 = call i64 (...) @caph_limit_stdio()
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 (i32, i8*, ...) @err(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  store i64 1, i64* %12, align 8
  %48 = call i32* @malloc(i32 4)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 (i32, i8*, ...) @err(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @STDIN_FILENO, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  br label %115

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32* @malloc(i32 %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 (i32, i8*, ...) @err(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %58
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %111, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @O_RDONLY, align 4
  %82 = call i32 @open(i8* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %75
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %96, i32* %11, align 4
  br label %111

97:                                               ; preds = %75
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @CAPH_READ, align 4
  %100 = call i64 @caph_limit_stream(i32 %98, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32, i8*, ...) @err(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %102, %97
  br label %111

111:                                              ; preds = %110, %89
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %71

114:                                              ; preds = %71
  br label %115

115:                                              ; preds = %114, %54
  %116 = call i64 (...) @caph_enter()
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EXIT_FAILURE, align 4
  %120 = call i32 (i32, i8*, ...) @err(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %174, %121
  %123 = load i32, i32* %8, align 4
  %124 = load i64, i64* %12, align 8
  %125 = trunc i64 %124 to i32
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %122
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %174

135:                                              ; preds = %127
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32* @fdopen(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %141, i32** %13, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %151, i32* %11, align 4
  br label %174

152:                                              ; preds = %135
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %163

157:                                              ; preds = %152
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  br label %163

163:                                              ; preds = %157, %156
  %164 = phi i8* [ null, %156 ], [ %162, %157 ]
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @scan(i32* %153, i8* %164, i32 %165)
  %167 = load i32, i32* @EXIT_SUCCESS, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %169, %163
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @fclose(i32* %172)
  br label %174

174:                                              ; preds = %171, %144, %134
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %122

177:                                              ; preds = %122
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %23
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @caph_limit_stream(i32, i32) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @scan(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
