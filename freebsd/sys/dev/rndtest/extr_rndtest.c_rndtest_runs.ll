; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_runs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_runs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rndtest_state = type { i32* }

@RNDTEST_RUNS_NINTERVAL = common dso_local global i32 0, align 4
@RNDTEST_NBYTES = common dso_local global i32 0, align 4
@rndstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndtest_state*)* @rndtest_runs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndtest_runs(%struct.rndtest_state* %0) #0 {
  %2 = alloca %struct.rndtest_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rndtest_state* %0, %struct.rndtest_state** %2, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @RNDTEST_RUNS_NINTERVAL, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @RNDTEST_RUNS_NINTERVAL, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = mul nuw i64 4, %13
  %20 = trunc i64 %19 to i32
  %21 = call i32 @bzero(i32* %15, i32 %20)
  %22 = mul nuw i64 4, %17
  %23 = trunc i64 %22 to i32
  %24 = call i32 @bzero(i32* %18, i32 %23)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %63, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RNDTEST_NBYTES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %31 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %57, %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rndtest_runs_record(%struct.rndtest_state* %47, i32 %48, i32* %18)
  store i32 0, i32* %6, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rndtest_runs_record(%struct.rndtest_state* %53, i32 %54, i32* %15)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %37

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @rndtest_runs_record(%struct.rndtest_state* %67, i32 %68, i32* %15)
  %70 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @rndtest_runs_record(%struct.rndtest_state* %70, i32 %71, i32* %18)
  %73 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %74 = call i32 @rndtest_runs_check(%struct.rndtest_state* %73, i32 0, i32* %18)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.rndtest_state*, %struct.rndtest_state** %2, align 8
  %78 = call i32 @rndtest_runs_check(%struct.rndtest_state* %77, i32 1, i32* %15)
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  br label %86

86:                                               ; preds = %83, %66
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @rndtest_runs_record(%struct.rndtest_state*, i32, i32*) #2

declare dso_local i32 @rndtest_runs_check(%struct.rndtest_state*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
