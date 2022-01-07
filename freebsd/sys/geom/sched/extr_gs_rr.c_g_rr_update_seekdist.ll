; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_update_seekdist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_update_seekdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_rr_queue = type { i64, i32, i32 }
%struct.bio = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_rr_queue*, %struct.bio*)* @g_rr_update_seekdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_rr_update_seekdist(%struct.g_rr_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_rr_queue*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.g_rr_queue* %0, %struct.g_rr_queue** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %7 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %15 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %27 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %22, %13
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 65536
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 65536, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %45 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %47 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 7
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.g_rr_queue*, %struct.g_rr_queue** %3, align 8
  %52 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @g_savg_add_sample(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %35
  ret void
}

declare dso_local i32 @g_savg_add_sample(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
