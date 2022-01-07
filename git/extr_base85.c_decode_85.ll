; ModuleID = '/home/carl/AnghaBench/git/extr_base85.c_decode_85.c'
source_filename = "/home/carl/AnghaBench/git/extr_base85.c_decode_85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"decode 85 <%.*s>\00", align 1
@de85 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid base85 alphabet %c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid base85 sequence %.5s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_85(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @prep_base85()
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 4
  %15 = mul nsw i32 %14, 5
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @say2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  br label %18

18:                                               ; preds = %106, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i32 4, i32* %10, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %11, align 1
  %26 = load i32*, i32** @de85, align 8
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %109

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = mul i32 %39, 85
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %22, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %11, align 1
  %51 = load i32*, i32** @de85, align 8
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %4, align 4
  br label %109

63:                                               ; preds = %47
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 50529027, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = sub i32 -1, %67
  %69 = load i32, i32* %8, align 4
  %70 = mul i32 %69, 85
  store i32 %70, i32* %8, align 4
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66, %63
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -5
  %75 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %4, align 4
  br label %109

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @say1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 4, %86 ]
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %102, %87
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 8
  %95 = load i32, i32* %8, align 4
  %96 = lshr i32 %95, 24
  %97 = or i32 %94, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %92, label %106

106:                                              ; preds = %102
  br label %18

107:                                              ; preds = %18
  %108 = call i32 @say(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %72, %59, %34
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @prep_base85(...) #1

declare dso_local i32 @say2(i8*, i32, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @say1(i8*, i32) #1

declare dso_local i32 @say(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
