; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"illegal number: %s\00", align 1
@MAXNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"number too large, max %d digits.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"minus%s\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%sand%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"zero%s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %63, %1
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 10
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %66

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isblank(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %2, align 8
  br label %63

33:                                               ; preds = %26
  br label %59

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isdigit(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %63

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %58 [
    i32 46, label %44
    i32 45, label %52
  ]

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %59

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  store i8 0, i8* %51, align 1
  br label %62

52:                                               ; preds = %40
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %62

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %40, %57
  br label %59

59:                                               ; preds = %58, %47, %33
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %56, %48
  br label %63

63:                                               ; preds = %62, %39, %30
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  br label %9

66:                                               ; preds = %19
  %67 = load i8*, i8** %6, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @MAXNUM, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @MAXNUM, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %66
  %81 = load i32, i32* @MAXNUM, align 4
  %82 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %75, %72
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i64, i64* @lflag, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %88, %83
  %99 = load i32, i32* %4, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @unit(i32 %102, i8* %103)
  br label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i32 [ %104, %101 ], [ 0, %105 ]
  store i32 %107, i32* %5, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %157

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  store i8* %114, i8** %6, align 8
  br label %115

115:                                              ; preds = %153, %113
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 48
  br i1 %124, label %125, label %152

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i64, i64* @lflag, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %133 = load i64, i64* @lflag, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %132, i8* %136)
  br label %138

138:                                              ; preds = %128, %125
  %139 = load i32, i32* %3, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @unit(i32 %139, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load i64, i64* @lflag, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @pfract(i32 %149)
  store i32 1, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %138
  br label %156

152:                                              ; preds = %120
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %6, align 8
  br label %115

156:                                              ; preds = %151, %115
  br label %157

157:                                              ; preds = %156, %110, %106
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* @lflag, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %160, %157
  %167 = load i64, i64* @lflag, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %166
  ret void
}

declare dso_local i64 @isblank(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @unit(i32, i8*) #1

declare dso_local i32 @pfract(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
