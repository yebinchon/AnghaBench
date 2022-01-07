; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_Popen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_Popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ = common dso_local global i64 0, align 8
@F_SETFD = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Popen(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %15 = call i64 @pipe(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %78

18:                                               ; preds = %2
  %19 = load i64, i64* @READ, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @F_SETFD, align 4
  %23 = call i32 @fcntl(i32 %21, i32 %22, i32 1)
  %24 = load i64, i64* @WRITE, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @F_SETFD, align 4
  %28 = call i32 @fcntl(i32 %26, i32 %27, i32 1)
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 114
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load i64, i64* @READ, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* @WRITE, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  store i32 %39, i32* %9, align 4
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %18
  %41 = load i64, i64* @WRITE, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* @READ, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = call i32 @sigemptyset(i32* %12)
  %49 = call i32 @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @start_command(i32 %49, i32* %12, i32 %50, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32* null)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load i64, i64* @READ, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i64, i64* @WRITE, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  store i32* null, i32** %3, align 8
  br label %78

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32* @fdopen(i32 %68, i8* %69)
  store i32* %70, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32*, i32** %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @register_file(i32* %73, i32 1, i64 %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32*, i32** %13, align 8
  store i32* %77, i32** %3, align 8
  br label %78

78:                                               ; preds = %76, %56, %17
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @start_command(i32, i32*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @value(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @register_file(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
