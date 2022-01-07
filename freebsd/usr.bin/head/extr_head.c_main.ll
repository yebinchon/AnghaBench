; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/head/extr_head.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/head/extr_head.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"+n:c:\00", align 1
@long_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"illegal byte count -- %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"illegal line count -- %s\00", align 1
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FCNTL = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unable to init casper\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"can't combine line and byte counts\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %8, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @obsolete(i8** %15)
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* @long_opts, align 4
  %21 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32* null)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %54 [
    i32 99, label %25
    i32 110, label %39
    i32 63, label %53
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @strtoimax(i32 %26, i8** %7, i32 10)
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %56

39:                                               ; preds = %23
  %40 = load i32, i32* @optarg, align 4
  %41 = call i32 @strtol(i32 %40, i8** %7, i32 10)
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %39
  %50 = load i32, i32* @optarg, align 4
  %51 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %56

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %23, %53
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %52, %38
  br label %17

57:                                               ; preds = %17
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* @O_RDONLY, align 4
  %69 = load i32, i32* @CAP_READ, align 4
  %70 = load i32, i32* @CAP_FSTAT, align 4
  %71 = load i32, i32* @CAP_FCNTL, align 4
  %72 = call i32 @cap_rights_init(i32* %14, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @FA_OPEN, align 4
  %74 = call i32* @fileargs_init(i32 %66, i8** %67, i32 %68, i32 0, i32 %72, i32 %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %57
  %80 = call i32 (...) @caph_cache_catpages()
  %81 = call i64 (...) @caph_limit_stdio()
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = call i64 (...) @caph_enter_casper()
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %79
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91, %88
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 10, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %148

104:                                              ; preds = %100
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %144, %104
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %147

109:                                              ; preds = %105
  %110 = load i32*, i32** %13, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32* @fileargs_fopen(i32* %110, i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %113, i32** %6, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  store i32 1, i32* %12, align 4
  br label %144

119:                                              ; preds = %109
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %126, i8* %128)
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %122, %119
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @head(i32* %134, i32 %135)
  br label %141

137:                                              ; preds = %130
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @head_bytes(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @fclose(i32* %142)
  br label %144

144:                                              ; preds = %141, %115
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %5, align 8
  br label %105

147:                                              ; preds = %105
  br label %160

148:                                              ; preds = %100
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** @stdin, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @head(i32* %152, i32 %153)
  br label %159

155:                                              ; preds = %148
  %156 = load i32*, i32** @stdin, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @head_bytes(i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %147
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @fileargs_free(i32* %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @exit(i32 %163) #3
  unreachable
}

declare dso_local i32 @obsolete(i8**) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @strtoimax(i32, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter_casper(...) #1

declare dso_local i32* @fileargs_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @head(i32*, i32) #1

declare dso_local i32 @head_bytes(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fileargs_free(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
