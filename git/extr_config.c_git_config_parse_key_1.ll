; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_parse_key_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_parse_key_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"key does not contain a section: %s\00", align 1
@CONFIG_NO_SECTION_OR_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"key does not contain variable name: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid key: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid key (newline): %s\00", align 1
@CONFIG_INVALID_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, i32)* @git_config_parse_key_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_config_parse_key_1(i8* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @error(i32 %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @CONFIG_NO_SECTION_OR_NAME, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %155

33:                                               ; preds = %19
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @error(i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @CONFIG_NO_SECTION_OR_NAME, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %155

48:                                               ; preds = %33
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i8**, i8*** %7, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = call i8* @xmallocz(i32 %65)
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %60
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %141, %68
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %144

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %14, align 1
  %82 = load i8, i8* %14, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %89, %86
  %94 = load i8, i8* %14, align 1
  %95 = call i32 @iskeychar(i8 zeroext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i8, i8* %14, align 1
  %104 = call i32 @isalpha(i8 zeroext %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102, %93
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @error(i32 %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %106
  br label %145

114:                                              ; preds = %102, %97
  %115 = load i8, i8* %14, align 1
  %116 = call zeroext i8 @tolower(i8 zeroext %115)
  store i8 %116, i8* %14, align 1
  br label %130

117:                                              ; preds = %89
  %118 = load i8, i8* %14, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @error(i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  br label %145

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i8**, i8*** %7, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i8, i8* %14, align 1
  %135 = load i8**, i8*** %7, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %134, i8* %139, align 1
  br label %140

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %69

144:                                              ; preds = %69
  store i32 0, i32* %5, align 4
  br label %155

145:                                              ; preds = %128, %113
  %146 = load i8**, i8*** %7, align 8
  %147 = icmp ne i8** %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i8**, i8*** %7, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @FREE_AND_NULL(i8* %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i32, i32* @CONFIG_INVALID_KEY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %152, %144, %45, %30
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @iskeychar(i8 zeroext) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
