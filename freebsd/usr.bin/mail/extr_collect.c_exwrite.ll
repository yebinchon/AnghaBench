; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_exwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_collect.c_exwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"\22%s\22 \00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%d/%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exwrite(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %12)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISREG(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

39:                                               ; preds = %24, %20
  %40 = load i8*, i8** %5, align 8
  %41 = call i32* @Fopen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %41, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @warn(i8* null)
  store i32 -1, i32* %4, align 4
  br label %80

45:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @getc(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @putc(i32 %60, i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @ferror(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @Fclose(i32* %69)
  store i32 -1, i32* %4, align 4
  br label %80

71:                                               ; preds = %59
  br label %46

72:                                               ; preds = %46
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @Fclose(i32* %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %75, i64 %76)
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @fflush(i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %66, %43, %36
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @Fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @Fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
