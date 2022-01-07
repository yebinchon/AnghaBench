; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_quoted_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_quoted_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_quoted_word.line = internal global [256 x i8] zeroinitializer, align 16
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"config: missing quote reading `%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_quoted_word(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %40, %33, %1
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @getc(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 32
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 9
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17, %14
  br label %9

22:                                               ; preds = %20, %9
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @EOF, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %2, align 8
  br label %135

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %8

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %8

41:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %135

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_quoted_word.line, i64 0, i64 0), i8** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 39
  br i1 %47, label %48, label %96

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %90, %79, %48
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @getc(i32* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @EOF, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %95

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  %71 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_quoted_word.line, i64 0, i64 0))
  %72 = call i32 @exit(i32 2) #3
  unreachable

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  br label %50

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  store i8 92, i8* %88, align 1
  br label %90

90:                                               ; preds = %87, %84, %80
  %91 = load i32, i32* %4, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  store i32 0, i32* %6, align 4
  br label %50

95:                                               ; preds = %62, %50
  br label %125

96:                                               ; preds = %45
  %97 = load i32, i32* %4, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %111, %96
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @getc(i32* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @EOF, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @isspace(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  store i8 %113, i8* %114, align 1
  br label %101

116:                                              ; preds = %110, %101
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @EOF, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @ungetc(i32 %121, i32* %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %95
  %126 = load i8*, i8** %5, align 8
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @EOF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @EOF, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %2, align 8
  br label %135

134:                                              ; preds = %125
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_quoted_word.line, i64 0, i64 0), i8** %2, align 8
  br label %135

135:                                              ; preds = %134, %130, %41, %26
  %136 = load i8*, i8** %2, align 8
  ret i8* %136
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
