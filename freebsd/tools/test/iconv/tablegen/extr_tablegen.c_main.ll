; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_fallbacks = type { i32*, i32, i32, i32, i32 }

@optstr = common dso_local global i32 0, align 4
@long_options = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@uc_to_mb_fb = common dso_local global i32 0, align 4
@mb_to_wc_fb = common dso_local global i32 0, align 4
@mb_to_uc_fb = common dso_local global i32 0, align 4
@wc_to_mb_fb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"//TRASNLIT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"//IGNORE\00", align 1
@ICONV_SET_FALLBACKS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"//TRANSLIT\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"# $FreeBSD$\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"TYPE\09\09ROWCOL\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"NAME\09\09UCS/%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@citrus_common = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"UTF-32LE//TRANSLIT\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"NAME\09\09%s/UCS\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iconv_fallbacks, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @optstr, align 4
  %14 = load i32, i32* @long_options, align 4
  %15 = call signext i8 @getopt_long(i32 %11, i8** %12, i32 %13, i32 %14, i32* null)
  store i8 %15, i8* %9, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %27 [
    i32 99, label %21
    i32 100, label %22
    i32 105, label %23
    i32 108, label %24
    i32 114, label %25
    i32 116, label %26
  ]

21:                                               ; preds = %18
  store i32 1, i32* @cflag, align 4
  br label %27

22:                                               ; preds = %18
  store i32 1, i32* @dflag, align 4
  br label %27

23:                                               ; preds = %18
  store i32 1, i32* @iflag, align 4
  br label %27

24:                                               ; preds = %18
  store i32 1, i32* @lflag, align 4
  br label %27

25:                                               ; preds = %18
  store i32 1, i32* @rflag, align 4
  br label %27

26:                                               ; preds = %18
  store i32 1, i32* @tflag, align 4
  br label %27

27:                                               ; preds = %18, %26, %25, %24, %23, %22, %21
  br label %10

28:                                               ; preds = %10
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* @uc_to_mb_fb, align 4
  %43 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %6, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @mb_to_wc_fb, align 4
  %45 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %6, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @mb_to_uc_fb, align 4
  %47 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %6, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @wc_to_mb_fb, align 4
  %49 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %6, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %88

53:                                               ; preds = %41
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @tflag, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* @iflag, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %60, i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @iconv_open(i8* %66, i8* %69)
  store i32 %70, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = call i32 @err(i32 1, i32* null)
  br label %74

74:                                               ; preds = %72, %53
  %75 = load i32, i32* @dflag, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ICONV_SET_FALLBACKS, align 4
  %80 = call i64 @iconvctl(i32 %78, i32 %79, %struct.iconv_fallbacks* %6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @err(i32 1, i32* null)
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @do_conv(i32 %86, i32 0)
  br label %168

88:                                               ; preds = %41
  %89 = load i32, i32* @rflag, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @tflag, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %99 = load i32, i32* @iflag, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %103 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %98, i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @iconv_open(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %105, i32* %7, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = call i32 @err(i32 1, i32* null)
  br label %109

109:                                              ; preds = %107, %91
  %110 = load i32, i32* @dflag, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ICONV_SET_FALLBACKS, align 4
  %115 = call i64 @iconvctl(i32 %113, i32 %114, %struct.iconv_fallbacks* %6)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 @err(i32 1, i32* null)
  br label %119

119:                                              ; preds = %117, %112, %109
  %120 = load i32, i32* @cflag, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** @citrus_common, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @do_conv(i32 %132, i32 1)
  br label %167

134:                                              ; preds = %88
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @iconv_open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %137)
  store i32 %138, i32* %7, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 @err(i32 1, i32* null)
  br label %142

142:                                              ; preds = %140, %134
  %143 = load i32, i32* @dflag, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @ICONV_SET_FALLBACKS, align 4
  %148 = call i64 @iconvctl(i32 %146, i32 %147, %struct.iconv_fallbacks* %6)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @err(i32 1, i32* null)
  br label %152

152:                                              ; preds = %150, %145, %142
  %153 = load i32, i32* @cflag, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %160)
  %162 = load i8*, i8** @citrus_common, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %155, %152
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @do_conv(i32 %165, i32 0)
  br label %167

167:                                              ; preds = %164, %131
  br label %168

168:                                              ; preds = %167, %85
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @iconv_close(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 @err(i32 1, i32* null)
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %175
}

declare dso_local signext i8 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @iconv_open(i8*, i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i64 @iconvctl(i32, i32, %struct.iconv_fallbacks*) #1

declare dso_local i32 @do_conv(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @iconv_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
