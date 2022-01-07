; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_consumer_is_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_consumer_is_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_consumer_is_open(%struct.g_consumer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_consumer*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  %4 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %5 = icmp eq %struct.g_consumer* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %9 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %14 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %19 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %7
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
