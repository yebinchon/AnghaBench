; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_get_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_get_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_filter(%struct.adapter* %0, %struct.t4_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_filter*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_filter* %1, %struct.t4_filter** %5, align 8
  %6 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %7 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %14 = call i32 @get_hashfilter(%struct.adapter* %12, %struct.t4_filter* %13)
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %18 = call i32 @get_tcamfilter(%struct.adapter* %16, %struct.t4_filter* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @get_hashfilter(%struct.adapter*, %struct.t4_filter*) #1

declare dso_local i32 @get_tcamfilter(%struct.adapter*, %struct.t4_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
