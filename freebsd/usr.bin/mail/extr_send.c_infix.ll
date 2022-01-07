; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_infix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_infix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header = type { i32 }

@PATHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/mail.RsXXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@GTO = common dso_local global i32 0, align 4
@GSUBJECT = common dso_local global i32 0, align 4
@GCC = common dso_local global i32 0, align 4
@GBCC = common dso_local global i32 0, align 4
@GREPLYTO = common dso_local global i32 0, align 4
@GINREPLYTO = common dso_local global i32 0, align 4
@GNL = common dso_local global i32 0, align 4
@GCOMMA = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @infix(%struct.header* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.header*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.header* %0, %struct.header** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @PATHSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i8*, i8** @tmpdir, align 8
  %19 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @mkstemp(i8* %16)
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i32* @Fdopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %2
  %27 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %102

29:                                               ; preds = %22
  %30 = call i32* @Fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @Fclose(i32* %34)
  %36 = call i32 @rm(i8* %16)
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %102

38:                                               ; preds = %29
  %39 = call i32 @rm(i8* %16)
  %40 = load %struct.header*, %struct.header** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @GTO, align 4
  %43 = load i32, i32* @GSUBJECT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @GCC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @GBCC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @GREPLYTO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @GINREPLYTO, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @GNL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GCOMMA, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @puthead(%struct.header* %40, i32* %41, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @getc(i32* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %64, %38
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @EOF, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @putc(i32 %65, i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @getc(i32* %68)
  store i32 %69, i32* %8, align 4
  br label %60

70:                                               ; preds = %60
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @ferror(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = call i32 @warnx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @rewind(i32* %76)
  %78 = load i32*, i32** %5, align 8
  store i32* %78, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %102

79:                                               ; preds = %70
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fflush(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @ferror(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @Fclose(i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @Fclose(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @rewind(i32* %91)
  %93 = load i32*, i32** %5, align 8
  store i32* %93, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %102

94:                                               ; preds = %79
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @Fclose(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @Fclose(i32* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @rewind(i32* %99)
  %101 = load i32*, i32** %7, align 8
  store i32* %101, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %102

102:                                              ; preds = %94, %85, %74, %32, %26
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32*, i32** %3, align 8
  ret i32* %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32* @Fdopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32* @Fopen(i8*, i8*) #2

declare dso_local i32 @Fclose(i32*) #2

declare dso_local i32 @rm(i8*) #2

declare dso_local i32 @puthead(%struct.header*, i32*, i32) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32 @fflush(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
