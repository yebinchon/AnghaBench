; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_toomuch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_toomuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@overfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@truncofs = common dso_local global i64 0, align 8
@lineno = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: can't seek\00", align 1
@currfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"can't read overflowed output\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @toomuch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toomuch(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32*, i32** @overfile, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load i32*, i32** @overfile, align 8
  %18 = call i64 @fflush(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32*, i32** @overfile, align 8
  %24 = call i32 @fileno(i32* %23)
  %25 = load i64, i64* @truncofs, align 8
  %26 = call i64 @ftruncate(i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32*, i32** @overfile, align 8
  %32 = call i64 @fclose(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  store i32* null, i32** @overfile, align 8
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %128

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @lineno, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* @lineno, align 8
  br label %45

45:                                               ; preds = %109, %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @ftello(i32* %46)
  %48 = icmp slt i64 %47, %11
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @rewind(i32* %50)
  br label %57

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = sub nsw i64 0, %11
  %55 = load i32, i32* @SEEK_CUR, align 4
  %56 = call i64 @fseeko(i32* %53, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @ferror(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @currfile, align 4
  %63 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = trunc i64 %11 to i32
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @fread(i8* %13, i32 1, i32 %65, i32* %66)
  store i64 %67, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32*, i32** %3, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 0, %73
  %75 = load i32, i32* @SEEK_CUR, align 4
  %76 = call i64 @fseeko(i32* %72, i64 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @currfile, align 4
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  store i64 1, i64* %7, align 8
  br label %82

82:                                               ; preds = %100, %81
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds i8, i8* %13, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i64, i64* %4, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %4, align 8
  %97 = icmp eq i64 %95, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %103

99:                                               ; preds = %94, %86
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %82

103:                                              ; preds = %98, %82
  %104 = load i32*, i32** %3, align 8
  %105 = call i64 @ftello(i32* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %112

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %4, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %45, label %112

112:                                              ; preds = %109, %107
  %113 = load i32*, i32** %3, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %114, %115
  %117 = add i64 %116, 1
  %118 = load i32, i32* @SEEK_CUR, align 4
  %119 = call i64 @fseeko(i32* %113, i64 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* @currfile, align 4
  %123 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %112
  %125 = load i32*, i32** %3, align 8
  store i32* %125, i32** @overfile, align 8
  %126 = load i32*, i32** @overfile, align 8
  %127 = call i64 @ftello(i32* %126)
  store i64 %127, i64* @truncofs, align 8
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %40
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %9, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fflush(i32*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @ftruncate(i32, i64) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i64 @ftello(i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fseeko(i32*, i64, i32) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
