; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_monobit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rndtest/extr_rndtest.c_rndtest_monobit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rndtest_state = type { i32* }

@RNDTEST_NBYTES = common dso_local global i32 0, align 4
@RNDTEST_MONOBIT_MINONES = common dso_local global i32 0, align 4
@RNDTEST_MONOBIT_MAXONES = common dso_local global i32 0, align 4
@rndtest_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"monobit pass (%d < %d < %d)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"monobit failed (%d ones)\00", align 1
@rndstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndtest_state*)* @rndtest_monobit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndtest_monobit(%struct.rndtest_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rndtest_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rndtest_state* %0, %struct.rndtest_state** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RNDTEST_NBYTES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %14 = getelementptr inbounds %struct.rndtest_state, %struct.rndtest_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %31, %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RNDTEST_MONOBIT_MINONES, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RNDTEST_MONOBIT_MAXONES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* @rndtest_verbose, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %53 = load i32, i32* @RNDTEST_MONOBIT_MINONES, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @RNDTEST_MONOBIT_MAXONES, align 4
  %56 = call i32 (%struct.rndtest_state*, i32, i8*, i32, ...) @rndtest_report(%struct.rndtest_state* %52, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  store i32 0, i32* %2, align 4
  br label %68

58:                                               ; preds = %44, %40
  %59 = load i32, i32* @rndtest_verbose, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.rndtest_state*, %struct.rndtest_state** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (%struct.rndtest_state*, i32, i8*, i32, ...) @rndtest_report(%struct.rndtest_state* %62, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rndstats, i32 0, i32 0), align 4
  store i32 -1, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @rndtest_report(%struct.rndtest_state*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
