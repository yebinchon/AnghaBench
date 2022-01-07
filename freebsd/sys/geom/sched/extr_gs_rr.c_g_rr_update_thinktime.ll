; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_update_thinktime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_update_thinktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.g_rr_queue = type { i8*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_rr_queue* }

@ticks = common dso_local global i8* null, align 8
@me = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_rr_queue*)* @g_rr_update_thinktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_rr_update_thinktime(%struct.g_rr_queue* %0) #0 {
  %2 = alloca %struct.g_rr_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.g_rr_queue* %0, %struct.g_rr_queue** %2, align 8
  %5 = load i8*, i8** @ticks, align 8
  %6 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %7 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %5 to i64
  %10 = ptrtoint i8* %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = call i32 @get_bounded(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @me, i32 0, i32 0), i32 2)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %15 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.g_rr_queue*, %struct.g_rr_queue** %17, align 8
  %19 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %20 = icmp ne %struct.g_rr_queue* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %46

22:                                               ; preds = %1
  %23 = load i8*, i8** @ticks, align 8
  %24 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %25 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 2, %27
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 2, %31
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  store i32 %36, i32* %3, align 4
  %37 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %38 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.g_rr_queue*, %struct.g_rr_queue** %2, align 8
  %43 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @g_savg_add_sample(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %21, %41, %35
  ret void
}

declare dso_local i32 @get_bounded(i32*, i32) #1

declare dso_local i32 @g_savg_add_sample(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
