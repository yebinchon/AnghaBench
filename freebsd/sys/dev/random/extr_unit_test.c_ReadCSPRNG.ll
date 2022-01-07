; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_ReadCSPRNG.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_ReadCSPRNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32)*, i32 (...)*, i32 (...)* }

@.str = private unnamed_addr constant [20 x i8] c"Thread #%zd starts\0A\00", align 1
@random_alg_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RANDOM_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Thread read %zd - %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ERROR!! Compressible RNG output!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Thread #%zd ends\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ReadCSPRNG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadCSPRNG(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 2), align 8
  %15 = call i32 (...) %14()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 1), align 8
  %20 = call i32 (...) %19()
  %21 = call i32 @usleep(i32 100)
  br label %13

22:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %78, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 100000
  br i1 %25, label %26, label %81

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RANDOM_BLOCKSIZE, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RANDOM_BLOCKSIZE, align 4
  %32 = srem i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32* @malloc(i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 1024
  %40 = call i32* @malloc(i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = srem i32 %41, 1000
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %26
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 1), align 8
  %56 = call i32 (...) %55()
  %57 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 0), align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 %57(i32* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @block_deflate(i32* %61, i32* %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %54
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @free(i32* %74)
  br label %76

76:                                               ; preds = %71, %51, %48
  %77 = call i32 @usleep(i32 100)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %23

81:                                               ; preds = %23
  %82 = load i64, i64* %3, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  %84 = call i32 @thrd_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @block_deflate(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @thrd_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
