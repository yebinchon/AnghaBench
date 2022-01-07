; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_do_rexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_do_rexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: missing trailing %c\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: bad offset\00", align 1
@REG_BASIC = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: bad regular expression\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"%s: no match\00", align 1
@truncofs = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@currfile = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_rexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rexp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i8* @strrchr(i8* %21, i8 signext %23)
  store i8* %24, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %38

32:                                               ; preds = %26, %18
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  store i8 0, i8* %39, align 1
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  store i64 0, i64* @errno, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strtol(i8* %46, i8** %8, i32 10)
  store i64 %47, i64* %5, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* @errno, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %45
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %60

59:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* @REG_BASIC, align 4
  %63 = load i32, i32* @REG_NOSUB, align 4
  %64 = or i32 %62, %63
  %65 = call i64 @regcomp(i32* %3, i8* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32* (...) @newfile()
  store i32* %76, i32** %12, align 8
  br label %83

77:                                               ; preds = %70
  %78 = call i32* (...) @tmpfile()
  store i32* %78, i32** %12, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %75
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = call i8* (...) @get_line()
  store i8* %85, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i64 @fputs(i8* %88, i32* %89)
  %91 = load i64, i64* @EOF, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %103

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @regexec(i32* %3, i8* %98, i32 0, i32* null, i32 0)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %103

102:                                              ; preds = %97, %94
  store i32 0, i32* %6, align 4
  br label %84

103:                                              ; preds = %101, %93, %84
  %104 = load i8*, i8** %9, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = call i32 @toomuch(i32* null, i64 0)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i64, i64* %5, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32*, i32** %12, align 8
  %118 = load i64, i64* %5, align 8
  %119 = sub nsw i64 0, %118
  %120 = add nsw i64 %119, 1
  %121 = call i32 @toomuch(i32* %117, i64 %120)
  %122 = load i64, i64* @truncofs, align 8
  store i64 %122, i64* %4, align 8
  br label %126

123:                                              ; preds = %113
  %124 = load i32*, i32** %12, align 8
  %125 = call i64 @ftello(i32* %124)
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %123, %116
  br label %152

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %137, %127
  %129 = load i64, i64* %5, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %5, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = call i8* (...) @get_line()
  store i8* %133, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i1 [ false, %128 ], [ %134, %132 ]
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = load i8*, i8** %9, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = call i64 @fputs(i8* %138, i32* %139)
  br label %128

141:                                              ; preds = %135
  %142 = call i32 @toomuch(i32* null, i64 0)
  %143 = load i32*, i32** %12, align 8
  %144 = call i64 @ftello(i32* %143)
  store i64 %144, i64* %4, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i64 @fclose(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @currfile, align 4
  %150 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %148, %141
  br label %152

152:                                              ; preds = %151, %126
  %153 = load i32, i32* @sflag, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %2, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %161)
  br label %163

163:                                              ; preds = %160, %155, %152
  %164 = call i32 @regfree(i32* %3)
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @free(i8* %165)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32* @newfile(...) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i8* @get_line(...) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @toomuch(i32*, i64) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
