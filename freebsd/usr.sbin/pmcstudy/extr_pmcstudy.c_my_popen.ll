; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_my_popen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_my_popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@environ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @my_popen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @my_popen(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca [1024 x i8], align 16
  %16 = alloca [4 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32* null, i32** %4, align 8
  br label %134

26:                                               ; preds = %20, %3
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %28 = call i64 @pipe(i32* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %134

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %33 = call i64 @pipe(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @close(i32 %37)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  store i32* null, i32** %4, align 8
  br label %134

42:                                               ; preds = %31
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* %50, i8** %51, align 16
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  store i8* %54, i8** %55, align 16
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 3
  store i8* null, i8** %56, align 8
  %57 = call i32 (...) @fork()
  store i32 %57, i32* %13, align 4
  switch i32 %57, label %100 [
    i32 -1, label %58
    i32 0, label %71
  ]

58:                                               ; preds = %42
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  store i32* null, i32** %4, align 8
  br label %134

71:                                               ; preds = %42
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  %78 = call i32 @close(i32 0)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dup(i32 %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @close(i32 %83)
  %85 = call i32 @close(i32 1)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dup(i32 %87)
  %89 = call i32 @close(i32 2)
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dup(i32 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @close(i32 %94)
  %96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %97 = load i32, i32* @environ, align 4
  %98 = call i32 @execve(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %96, i32 %97)
  %99 = call i32 @exit(i32 127) #3
  unreachable

100:                                              ; preds = %42
  %101 = load i32, i32* %13, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @fdopen(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %109, i32** %8, align 8
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 %114)
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @close(i32 %117)
  %119 = load i32*, i32** %8, align 8
  store i32* %119, i32** %4, align 8
  br label %134

120:                                              ; preds = %100
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32* @fdopen(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %123, i32** %9, align 8
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @close(i32 %125)
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @close(i32 %131)
  %133 = load i32*, i32** %9, align 8
  store i32* %133, i32** %4, align 8
  br label %134

134:                                              ; preds = %120, %106, %58, %35, %30, %24
  %135 = load i32*, i32** %4, align 8
  ret i32* %135
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @execve(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
