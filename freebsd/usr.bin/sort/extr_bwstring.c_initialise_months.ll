; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_initialise_months.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_initialise_months.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABMON_1 = common dso_local global i32 0, align 4
@ABMON_2 = common dso_local global i32 0, align 4
@ABMON_3 = common dso_local global i32 0, align 4
@ABMON_4 = common dso_local global i32 0, align 4
@ABMON_5 = common dso_local global i32 0, align 4
@ABMON_6 = common dso_local global i32 0, align 4
@ABMON_7 = common dso_local global i32 0, align 4
@ABMON_8 = common dso_local global i32 0, align 4
@ABMON_9 = common dso_local global i32 0, align 4
@ABMON_10 = common dso_local global i32 0, align 4
@ABMON_11 = common dso_local global i32 0, align 4
@ABMON_12 = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@cmonths = common dso_local global i8** null, align 8
@debug_sort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"month[%d]=%s\0A\00", align 1
@wmonths = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialise_months() #0 {
  %1 = alloca [12 x i32], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds [12 x i32], [12 x i32]* %1, i64 0, i64 0
  %11 = load i32, i32* @ABMON_1, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @ABMON_2, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @ABMON_3, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @ABMON_4, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @ABMON_5, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @ABMON_6, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @ABMON_7, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @ABMON_8, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @ABMON_9, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @ABMON_10, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @ABMON_11, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @ABMON_12, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i32, i32* @MB_CUR_MAX, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %103

36:                                               ; preds = %0
  %37 = load i8**, i8*** @cmonths, align 8
  %38 = icmp eq i8** %37, null
  br i1 %38, label %39, label %102

39:                                               ; preds = %36
  %40 = call i8* @sort_malloc(i32 96)
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** @cmonths, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %98, %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 12
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load i8**, i8*** @cmonths, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* null, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %1, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nl_langinfo(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %2, align 8
  %56 = load i64, i64* @debug_sort, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i8*, i8** %2, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %98

68:                                               ; preds = %62
  %69 = load i8*, i8** %2, align 8
  %70 = call i8* @sort_strdup(i8* %69)
  store i8* %70, i8** %4, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = call i64 @strlen(i8* %71)
  store i64 %72, i64* %3, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %89, %68
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %3, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call zeroext i8 @toupper(i8 zeroext %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load i8*, i8** %4, align 8
  %94 = load i8**, i8*** @cmonths, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %93, i8** %97, align 8
  br label %98

98:                                               ; preds = %92, %67
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %42

101:                                              ; preds = %42
  br label %102

102:                                              ; preds = %101, %36
  br label %185

103:                                              ; preds = %0
  %104 = load i32**, i32*** @wmonths, align 8
  %105 = icmp eq i32** %104, null
  br i1 %105, label %106, label %184

106:                                              ; preds = %103
  %107 = call i8* @sort_malloc(i32 96)
  %108 = bitcast i8* %107 to i32**
  store i32** %108, i32*** @wmonths, align 8
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %180, %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 12
  br i1 %111, label %112, label %183

112:                                              ; preds = %109
  %113 = load i32**, i32*** @wmonths, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [12 x i32], [12 x i32]* %1, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @nl_langinfo(i32 %120)
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %2, align 8
  %123 = load i64, i64* @debug_sort, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** %2, align 8
  %128 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %126, i8* %127)
  br label %129

129:                                              ; preds = %125, %112
  %130 = load i8*, i8** %2, align 8
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %180

135:                                              ; preds = %129
  %136 = load i8*, i8** %2, align 8
  %137 = call i64 @strlen(i8* %136)
  store i64 %137, i64* %3, align 8
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 1
  %140 = call i32 @SIZEOF_WCHAR_STRING(i64 %139)
  %141 = call i8* @sort_malloc(i32 %140)
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i8*, i8** %2, align 8
  %145 = load i64, i64* %3, align 8
  %146 = call i64 @mbstowcs(i32* %143, i8* %144, i64 %145)
  %147 = icmp eq i64 %146, -1
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @sort_free(i32* %149)
  br label %180

151:                                              ; preds = %135
  %152 = load i32*, i32** %7, align 8
  %153 = load i64, i64* %3, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 0, i32* %154, align 4
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %171, %151
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %3, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @towupper(i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %155

174:                                              ; preds = %155
  %175 = load i32*, i32** %7, align 8
  %176 = load i32**, i32*** @wmonths, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  store i32* %175, i32** %179, align 8
  br label %180

180:                                              ; preds = %174, %148, %134
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %109

183:                                              ; preds = %109
  br label %184

184:                                              ; preds = %183, %103
  br label %185

185:                                              ; preds = %184, %102
  ret void
}

declare dso_local i8* @sort_malloc(i32) #1

declare dso_local i64 @nl_langinfo(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i8* @sort_strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @SIZEOF_WCHAR_STRING(i64) #1

declare dso_local i64 @mbstowcs(i32*, i8*, i64) #1

declare dso_local i32 @sort_free(i32*) #1

declare dso_local i32 @towupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
