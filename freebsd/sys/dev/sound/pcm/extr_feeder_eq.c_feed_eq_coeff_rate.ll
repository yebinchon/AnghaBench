; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_coeff_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_coeff_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.feed_eq_coeff* }
%struct.feed_eq_coeff = type { i32 }

@FEEDEQ_RATE_MIN = common dso_local global i64 0, align 8
@FEEDEQ_RATE_MAX = common dso_local global i64 0, align 8
@FEEDEQ_TAB_SIZE = common dso_local global i32 0, align 4
@feed_eq_tab = common dso_local global %struct.TYPE_2__* null, align 8
@feeder_eq_exact_rate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.feed_eq_coeff* (i64)* @feed_eq_coeff_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.feed_eq_coeff* @feed_eq_coeff_rate(i64 %0) #0 {
  %2 = alloca %struct.feed_eq_coeff*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @FEEDEQ_RATE_MIN, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @FEEDEQ_RATE_MAX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store %struct.feed_eq_coeff* null, %struct.feed_eq_coeff** %2, align 8
  br label %79

15:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %75, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FEEDEQ_TAB_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feed_eq_tab, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FEEDEQ_TAB_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %20
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feed_eq_tab, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feed_eq_tab, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = sub nsw i64 %49, %50
  %52 = ashr i64 %51, 1
  br label %54

53:                                               ; preds = %32, %20
  br label %54

54:                                               ; preds = %53, %42
  %55 = phi i64 [ %52, %42 ], [ 0, %53 ]
  %56 = add nsw i64 %27, %55
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @feeder_eq_exact_rate, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63, %54
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feed_eq_tab, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.feed_eq_coeff*, %struct.feed_eq_coeff** %72, align 8
  store %struct.feed_eq_coeff* %73, %struct.feed_eq_coeff** %2, align 8
  br label %79

74:                                               ; preds = %63, %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %16

78:                                               ; preds = %16
  store %struct.feed_eq_coeff* null, %struct.feed_eq_coeff** %2, align 8
  br label %79

79:                                               ; preds = %78, %67, %14
  %80 = load %struct.feed_eq_coeff*, %struct.feed_eq_coeff** %2, align 8
  ret %struct.feed_eq_coeff* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
