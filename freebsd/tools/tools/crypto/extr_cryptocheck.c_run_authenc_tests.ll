; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_authenc_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_authenc_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i64, i64 }

@algs = common dso_local global %struct.alg* null, align 8
@T_BLKCIPHER = common dso_local global i64 0, align 8
@T_HMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64)* @run_authenc_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_authenc_tests(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alg*, align 8
  %6 = alloca %struct.alg*, align 8
  %7 = alloca %struct.alg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.alg*, %struct.alg** @algs, align 8
  %13 = call i64 @nitems(%struct.alg* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = load %struct.alg*, %struct.alg** @algs, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.alg, %struct.alg* %16, i64 %17
  store %struct.alg* %18, %struct.alg** %6, align 8
  %19 = load %struct.alg*, %struct.alg** %6, align 8
  %20 = getelementptr inbounds %struct.alg, %struct.alg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @T_BLKCIPHER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %58

25:                                               ; preds = %15
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.alg*, %struct.alg** @algs, align 8
  %29 = call i64 @nitems(%struct.alg* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load %struct.alg*, %struct.alg** @algs, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.alg, %struct.alg* %32, i64 %33
  store %struct.alg* %34, %struct.alg** %7, align 8
  %35 = load %struct.alg*, %struct.alg** %7, align 8
  %36 = getelementptr inbounds %struct.alg, %struct.alg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @T_HMAC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %54

41:                                               ; preds = %31
  %42 = load %struct.alg*, %struct.alg** %6, align 8
  %43 = load %struct.alg*, %struct.alg** %7, align 8
  %44 = call %struct.alg* @build_authenc(%struct.alg* %42, %struct.alg* %43)
  store %struct.alg* %44, %struct.alg** %5, align 8
  %45 = load %struct.alg*, %struct.alg** %5, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @run_test_sizes(%struct.alg* %45, i64* %46, i64 %47)
  %49 = load %struct.alg*, %struct.alg** %5, align 8
  %50 = getelementptr inbounds %struct.alg, %struct.alg* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @free(i8* %52)
  br label %54

54:                                               ; preds = %41, %40
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %26

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local i64 @nitems(%struct.alg*) #1

declare dso_local %struct.alg* @build_authenc(%struct.alg*, %struct.alg*) #1

declare dso_local i32 @run_test_sizes(%struct.alg*, i64*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
