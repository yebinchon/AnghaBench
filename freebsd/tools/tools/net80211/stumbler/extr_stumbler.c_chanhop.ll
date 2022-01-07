; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_chanhop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_chanhop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@hopfreq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chanhop(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.timeval*, %struct.timeval** %2, align 8
  %6 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @die(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.timeval*, %struct.timeval** %2, align 8
  %12 = call i64 @elapsed_ms(%struct.timeval* %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 1))
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @hopfreq, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 11
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @set_chan(i32 %23)
  %25 = load i64, i64* @hopfreq, align 8
  store i64 %25, i64* %3, align 8
  br label %30

26:                                               ; preds = %10
  %27 = load i64, i64* @hopfreq, align 8
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %3, align 8
  %32 = udiv i64 %31, 1000
  %33 = load %struct.timeval*, %struct.timeval** %2, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.timeval*, %struct.timeval** %2, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 1000
  %40 = sub i64 %35, %39
  %41 = mul i64 %40, 1000
  %42 = load %struct.timeval*, %struct.timeval** %2, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i64 @elapsed_ms(%struct.timeval*, i32*) #1

declare dso_local i32 @set_chan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
