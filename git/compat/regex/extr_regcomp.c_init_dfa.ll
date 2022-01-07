; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_init_dfa.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_init_dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32*, i32*, i32*, i32 }

@BIN_TREE_STORAGE_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@re_token_t = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_NOERROR = common dso_local global i32 0, align 4
@BITSET_WORDS = common dso_local global i32 0, align 4
@BITSET_WORD_BITS = common dso_local global i32 0, align 4
@BITSET_WORD_MAX = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@_NL_CTYPE_CODESET_NAME = common dso_local global i32 0, align 4
@_NL_CTYPE_MAP_TO_NONASCII = common dso_local global i32 0, align 4
@utf8_sb_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @init_dfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dfa(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call i32 @memset(%struct.TYPE_4__* %8, i8 signext 0, i32 56)
  %10 = load i32, i32* @BIN_TREE_STORAGE_SIZE, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SIZE_MAX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @REG_ESPACE, align 4
  store i32 %17, i32* %3, align 4
  br label %177

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @re_token_t, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @re_malloc(i32 %23, i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  store i32* %27, i32** %29, align 8
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %37, %18
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %30

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32* @calloc(i32 4, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MB_CUR_MAX, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %40
  %62 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %63
  %73 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %87

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 46)
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 46)
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 85
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 117
  br i1 %98, label %99, label %156

99:                                               ; preds = %93, %87
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 84
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 116
  br i1 %110, label %111, label %156

111:                                              ; preds = %105, %99
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 70
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 102
  br i1 %122, label %123, label %156

123:                                              ; preds = %117, %111
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 45
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 56
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %156

141:                                              ; preds = %123
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 56
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147, %135
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %147, %141, %135, %129, %117, %105, %93
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i32 0, i32* %158, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %156
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br label %168

168:                                              ; preds = %163, %156
  %169 = phi i1 [ true, %156 ], [ %167, %163 ]
  %170 = zext i1 %169 to i32
  %171 = call i64 @BE(i32 %170, i32 0)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* @REG_ESPACE, align 4
  store i32 %174, i32* %3, align 4
  br label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @REG_NOERROR, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %173, %16
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

declare dso_local i32* @re_malloc(i32, i64) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @BE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
