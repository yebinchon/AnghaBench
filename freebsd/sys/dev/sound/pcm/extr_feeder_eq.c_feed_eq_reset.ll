; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feed_eq_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i64*, i64*, i64* }
%struct.TYPE_3__ = type { i64*, i64*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.feed_eq_info*)* @feed_eq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feed_eq_reset(%struct.feed_eq_info* %0) #0 {
  %2 = alloca %struct.feed_eq_info*, align 8
  %3 = alloca i64, align 8
  store %struct.feed_eq_info* %0, %struct.feed_eq_info** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %7 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  %11 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %12 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %18 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %24 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %30 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %36 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %42 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %48 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.feed_eq_info*, %struct.feed_eq_info** %2, align 8
  %54 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %10
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %4

62:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
