; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iconv/extr_iconv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iconv/extr_iconv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"csLlf:t:\00", align 1
@long_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"-l is not allowed with other flags.\00", align 1
@do_list = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"iconv_open(%s, %s)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Cannot open `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load i32, i32* @LC_ALL, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @setprogname(i8* %19)
  br label %21

21:                                               ; preds = %66, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* @long_options, align 4
  %25 = call i32 @getopt_long(i32 %22, i8** %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32* null)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %64 [
    i32 99, label %29
    i32 115, label %30
    i32 108, label %31
    i32 102, label %52
    i32 116, label %58
  ]

29:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %66

30:                                               ; preds = %27
  store i32 1, i32* %14, align 4
  br label %66

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37, %34, %31
  %46 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* @do_list, align 4
  %50 = call i32 @iconvlist(i32 %49, i32* null)
  %51 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %190

52:                                               ; preds = %27
  %53 = load i8*, i8** @optarg, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i8*, i8** @optarg, align 8
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %66

58:                                               ; preds = %27
  %59 = load i8*, i8** @optarg, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %61, %58
  br label %66

64:                                               ; preds = %27
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %63, %57, %30, %29
  br label %21

67:                                               ; preds = %21
  %68 = load i64, i64* @optind, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* @optind, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73
  store i8** %75, i8*** %5, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %79, %67
  %86 = call i64 (...) @caph_limit_stdio()
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 (i32, i8*, ...) @err(i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  %92 = call i32 (...) @caph_cache_catpages()
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i64 @iconv_open(i8* %93, i8* %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (i32, i8*, ...) @err(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %91
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = call i64 (...) @caph_enter()
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @EXIT_FAILURE, align 4
  %111 = call i32 (i32, i8*, ...) @err(i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** @stdin, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @do_conv(i32* %113, i64 %114, i32 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %179

118:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %175, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %178

123:                                              ; preds = %119
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32* @fopen(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %140

138:                                              ; preds = %123
  %139 = load i32*, i32** @stdin, align 8
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32* [ %137, %131 ], [ %139, %138 ]
  store i32* %141, i32** %7, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* @EXIT_FAILURE, align 4
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i32, i8*, ...) @err(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %144, %140
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = call i64 (...) @caph_enter()
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @EXIT_FAILURE, align 4
  %162 = call i32 (i32, i8*, ...) @err(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %157, %152
  %164 = load i32*, i32** %7, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @do_conv(i32* %164, i64 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @fclose(i32* %171)
  %173 = load i64, i64* %6, align 8
  %174 = call i32 @iconv(i64 %173, i32* null, i32* null, i32* null, i32* null)
  br label %175

175:                                              ; preds = %163
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %119

178:                                              ; preds = %119
  br label %179

179:                                              ; preds = %178, %112
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @iconv_close(i64 %180)
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %188

186:                                              ; preds = %179
  %187 = load i32, i32* @EXIT_FAILURE, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %48
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @iconvlist(i32, i32*) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @do_conv(i32*, i64, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @iconv(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
