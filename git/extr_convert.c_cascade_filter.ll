; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_cascade_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_cascade_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.cascade_filter = type { %struct.TYPE_2__, i64, i64, %struct.stream_filter*, %struct.stream_filter* }
%struct.TYPE_2__ = type { i32* }

@cascade_vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stream_filter* (%struct.stream_filter*, %struct.stream_filter*)* @cascade_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stream_filter* @cascade_filter(%struct.stream_filter* %0, %struct.stream_filter* %1) #0 {
  %3 = alloca %struct.stream_filter*, align 8
  %4 = alloca %struct.stream_filter*, align 8
  %5 = alloca %struct.stream_filter*, align 8
  %6 = alloca %struct.cascade_filter*, align 8
  store %struct.stream_filter* %0, %struct.stream_filter** %4, align 8
  store %struct.stream_filter* %1, %struct.stream_filter** %5, align 8
  %7 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  %8 = icmp ne %struct.stream_filter* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  %11 = call i64 @is_null_stream_filter(%struct.stream_filter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load %struct.stream_filter*, %struct.stream_filter** %5, align 8
  store %struct.stream_filter* %14, %struct.stream_filter** %3, align 8
  br label %41

15:                                               ; preds = %9
  %16 = load %struct.stream_filter*, %struct.stream_filter** %5, align 8
  %17 = icmp ne %struct.stream_filter* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.stream_filter*, %struct.stream_filter** %5, align 8
  %20 = call i64 @is_null_stream_filter(%struct.stream_filter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %15
  %23 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  store %struct.stream_filter* %23, %struct.stream_filter** %3, align 8
  br label %41

24:                                               ; preds = %18
  %25 = call %struct.cascade_filter* @xmalloc(i32 40)
  store %struct.cascade_filter* %25, %struct.cascade_filter** %6, align 8
  %26 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  %27 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %28 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %27, i32 0, i32 4
  store %struct.stream_filter* %26, %struct.stream_filter** %28, align 8
  %29 = load %struct.stream_filter*, %struct.stream_filter** %5, align 8
  %30 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %31 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %30, i32 0, i32 3
  store %struct.stream_filter* %29, %struct.stream_filter** %31, align 8
  %32 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %33 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %35 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %37 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* @cascade_vtbl, i32** %38, align 8
  %39 = load %struct.cascade_filter*, %struct.cascade_filter** %6, align 8
  %40 = bitcast %struct.cascade_filter* %39 to %struct.stream_filter*
  store %struct.stream_filter* %40, %struct.stream_filter** %3, align 8
  br label %41

41:                                               ; preds = %24, %22, %13
  %42 = load %struct.stream_filter*, %struct.stream_filter** %3, align 8
  ret %struct.stream_filter* %42
}

declare dso_local i64 @is_null_stream_filter(%struct.stream_filter*) #1

declare dso_local %struct.cascade_filter* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
