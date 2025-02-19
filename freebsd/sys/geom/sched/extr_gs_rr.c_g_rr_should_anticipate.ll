; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_should_anticipate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_should_anticipate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.g_rr_queue = type { i32, i32 }
%struct.bio = type { i64 }

@me = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_rr_queue*, %struct.bio*)* @g_rr_should_anticipate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_rr_should_anticipate(%struct.g_rr_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_rr_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.g_rr_queue* %0, %struct.g_rr_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = call i32 @get_bounded(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 1), i32 2)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BIO_WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %41

17:                                               ; preds = %10, %2
  %18 = load %struct.g_rr_queue*, %struct.g_rr_queue** %4, align 8
  %19 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %18, i32 0, i32 1
  %20 = call i64 @g_savg_valid(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.g_rr_queue*, %struct.g_rr_queue** %4, align 8
  %24 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %23, i32 0, i32 1
  %25 = call i32 @g_savg_read(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %41

29:                                               ; preds = %22, %17
  %30 = load %struct.g_rr_queue*, %struct.g_rr_queue** %4, align 8
  %31 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %30, i32 0, i32 0
  %32 = call i64 @g_savg_valid(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.g_rr_queue*, %struct.g_rr_queue** %4, align 8
  %36 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %35, i32 0, i32 0
  %37 = call i32 @g_savg_read(i32* %36)
  %38 = icmp sgt i32 %37, 8192
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %41

40:                                               ; preds = %34, %29
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %28, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @get_bounded(i32*, i32) #1

declare dso_local i64 @g_savg_valid(i32*) #1

declare dso_local i32 @g_savg_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
