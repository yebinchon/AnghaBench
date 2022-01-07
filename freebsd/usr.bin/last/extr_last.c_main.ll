; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_MD_ORDER = common dso_local global i32 0, align 4
@d_first = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@noctfix = common dso_local global i32 0, align 4
@xo_finish_atexit = common dso_local global i32 0, align 4
@maxrec = common dso_local global i32 0, align 4
@snaptime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"0123456789d:f:h:n:st:wy\00", align 1
@optind = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@file = common dso_local global i8* null, align 8
@HOST_TYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: bad line count\00", align 1
@sflag = common dso_local global i64 0, align 8
@TTY_TYPE = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@yflag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"can't limit stdio rights\00", align 1
@UTXDB_LOG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"(default utx db)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@REBOOT_TYPE = common dso_local global i32 0, align 4
@USER_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_TIME, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @D_MD_ORDER, align 4
  %11 = call i8* @nl_langinfo(i32 %10)
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 100
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @d_first, align 4
  %16 = load i32, i32* @LC_CTYPE, align 4
  %17 = call i32 @setlocale(i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @CODESET, align 4
  %19 = call i8* @nl_langinfo(i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  store i32 1, i32* @noctfix, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @xo_parse_args(i32 %29, i8** %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %28
  %37 = load i32, i32* @xo_finish_atexit, align 4
  %38 = call i32 @atexit(i32 %37)
  store i32 -1, i32* @maxrec, align 4
  store i64 0, i64* @snaptime, align 8
  br label %39

39:                                               ; preds = %122, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %123

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %120 [
    i32 48, label %46
    i32 49, label %46
    i32 50, label %46
    i32 51, label %46
    i32 52, label %46
    i32 53, label %46
    i32 54, label %46
    i32 55, label %46
    i32 56, label %46
    i32 57, label %46
    i32 100, label %75
    i32 102, label %78
    i32 104, label %80
    i32 110, label %86
    i32 115, label %107
    i32 116, label %110
    i32 119, label %115
    i32 121, label %116
    i32 63, label %119
  ]

46:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %47 = load i32, i32* @maxrec, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = load i64, i64* @optind, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @strchr(i8* %54, i32 %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i8**, i8*** %5, align 8
  %61 = load i64, i64* @optind, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i8* @strchr(i8* %63, i32 %64)
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %59, %49
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @atol(i8* %67)
  store i32 %68, i32* @maxrec, align 4
  %69 = load i32, i32* @maxrec, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @exit(i32 0) #3
  unreachable

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %46
  br label %122

75:                                               ; preds = %44
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i64 @dateconv(i8* %76)
  store i64 %77, i64* @snaptime, align 8
  br label %122

78:                                               ; preds = %44
  %79 = load i8*, i8** @optarg, align 8
  store i8* %79, i8** @file, align 8
  br label %122

80:                                               ; preds = %44
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @hostconv(i8* %81)
  %83 = load i32, i32* @HOST_TYPE, align 4
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i32 @addarg(i32 %83, i8* %84)
  br label %122

86:                                               ; preds = %44
  store i32 0, i32* @errno, align 4
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 @strtol(i8* %87, i8** %7, i32 10)
  store i32 %88, i32* @maxrec, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** @optarg, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @errno, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @maxrec, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97, %92, %86
  %104 = load i8*, i8** @optarg, align 8
  %105 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %122

107:                                              ; preds = %44
  %108 = load i64, i64* @sflag, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* @sflag, align 8
  br label %122

110:                                              ; preds = %44
  %111 = load i32, i32* @TTY_TYPE, align 4
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i8* @ttyconv(i8* %112)
  %114 = call i32 @addarg(i32 %111, i8* %113)
  br label %122

115:                                              ; preds = %44
  store i32 8, i32* @width, align 4
  br label %122

116:                                              ; preds = %44
  %117 = load i32, i32* @yflag, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @yflag, align 4
  br label %122

119:                                              ; preds = %44
  br label %120

120:                                              ; preds = %44, %119
  %121 = call i32 (...) @usage()
  br label %122

122:                                              ; preds = %120, %116, %115, %110, %107, %106, %80, %78, %75, %74
  br label %39

123:                                              ; preds = %39
  %124 = call i64 (...) @caph_limit_stdio()
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (i32, i8*, ...) @xo_err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  %129 = call i32 (...) @caph_cache_catpages()
  %130 = call i32 (...) @caph_cache_tzdata()
  %131 = load i32, i32* @UTXDB_LOG, align 4
  %132 = load i8*, i8** @file, align 8
  %133 = call i64 @setutxdb(i32 %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i8*, i8** @file, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i8*, i8** @file, align 8
  br label %141

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i8* [ %139, %138 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %140 ]
  %143 = call i32 (i32, i8*, ...) @xo_err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %128
  %145 = call i64 (...) @caph_enter()
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (i32, i8*, ...) @xo_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i64, i64* @sflag, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* @width, align 4
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (...) @usage()
  br label %157

157:                                              ; preds = %155, %152, %149
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %157
  %161 = load i32, i32* @stdout, align 4
  %162 = call i32 @setlinebuf(i32 %161)
  %163 = load i64, i64* @optind, align 8
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 %163
  store i8** %165, i8*** %5, align 8
  br label %166

166:                                              ; preds = %190, %160
  %167 = load i8**, i8*** %5, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load i8**, i8*** %5, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* @REBOOT_TYPE, align 4
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @addarg(i32 %176, i8* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load i32, i32* @TTY_TYPE, align 4
  %182 = load i8**, i8*** %5, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @ttyconv(i8* %183)
  %185 = call i32 @addarg(i32 %181, i8* %184)
  %186 = load i32, i32* @USER_TYPE, align 4
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @addarg(i32 %186, i8* %188)
  br label %190

190:                                              ; preds = %180
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %5, align 8
  br label %166

193:                                              ; preds = %166
  br label %194

194:                                              ; preds = %193, %157
  %195 = call i32 (...) @wtmp()
  %196 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @dateconv(i8*) #1

declare dso_local i32 @hostconv(i8*) #1

declare dso_local i32 @addarg(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @xo_errx(i32, i8*, i8*) #1

declare dso_local i8* @ttyconv(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @xo_err(i32, i8*, ...) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @caph_cache_tzdata(...) #1

declare dso_local i64 @setutxdb(i32, i8*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @wtmp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
