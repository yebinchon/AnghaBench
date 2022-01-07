; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/bpf/bpf_filter/extr_bpf_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/bpf/bpf_filter/extr_bpf_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@BPF_NRUNS = common dso_local global i64 0, align 8
@nins = common dso_local global i64 0, align 8
@pc = common dso_local global i32* null, align 8
@pkt = common dso_local global i32 0, align 4
@wirelen = common dso_local global i32 0, align 4
@buflen = common dso_local global i32 0, align 4
@expect_signal = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Expected signal %d but got none:\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@expect = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected 0x%x but got 0x%x:\09\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Expected and got 0x%x:\09\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@PASSED = common dso_local global i32 0, align 4
@invalid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @SIGHUP, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SIGUSR2, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @sig_handler, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %6

17:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @BPF_NRUNS, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i64, i64* @nins, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** @pc, align 8
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32* [ %26, %25 ], [ null, %27 ]
  %30 = load i32, i32* @pkt, align 4
  %31 = load i32, i32* @wirelen, align 4
  %32 = load i32, i32* @buflen, align 4
  %33 = call i64 @bpf_filter(i32* %29, i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load i64, i64* @expect_signal, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, i32* @verbose, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @expect_signal, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @verbose, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* @FAILED, align 4
  store i32 %52, i32* %1, align 4
  br label %84

53:                                               ; preds = %37
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @expect, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32, i32* @verbose, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* @expect, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* @verbose, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* @FAILED, align 4
  store i32 %70, i32* %1, align 4
  br label %84

71:                                               ; preds = %53
  %72 = load i32, i32* @verbose, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %3, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @verbose, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* @PASSED, align 4
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %82, %69, %51
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @bpf_filter(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
