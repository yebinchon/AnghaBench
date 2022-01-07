; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_enq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_fifo_queue = type { i64, i64, i32, i32, %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link* }
%struct.mkuz_bchain_link = type { %struct.mkuz_bchain_link*, %struct.mkuz_blk* }
%struct.mkuz_blk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkuz_fqueue_enq(%struct.mkuz_fifo_queue* %0, %struct.mkuz_blk* %1) #0 {
  %3 = alloca %struct.mkuz_fifo_queue*, align 8
  %4 = alloca %struct.mkuz_blk*, align 8
  %5 = alloca %struct.mkuz_bchain_link*, align 8
  store %struct.mkuz_fifo_queue* %0, %struct.mkuz_fifo_queue** %3, align 8
  store %struct.mkuz_blk* %1, %struct.mkuz_blk** %4, align 8
  %6 = call %struct.mkuz_bchain_link* @mkuz_safe_zmalloc(i32 16)
  store %struct.mkuz_bchain_link* %6, %struct.mkuz_bchain_link** %5, align 8
  %7 = load %struct.mkuz_blk*, %struct.mkuz_blk** %4, align 8
  %8 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %5, align 8
  %9 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %8, i32 0, i32 1
  store %struct.mkuz_blk* %7, %struct.mkuz_blk** %9, align 8
  %10 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %11 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %10, i32 0, i32 2
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %14 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %13, i32 0, i32 4
  %15 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %14, align 8
  %16 = icmp ne %struct.mkuz_bchain_link* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %5, align 8
  %19 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %20 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %19, i32 0, i32 4
  %21 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %20, align 8
  %22 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %21, i32 0, i32 0
  store %struct.mkuz_bchain_link* %18, %struct.mkuz_bchain_link** %22, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %5, align 8
  %25 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %26 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %25, i32 0, i32 5
  store %struct.mkuz_bchain_link* %24, %struct.mkuz_bchain_link** %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %5, align 8
  %29 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %30 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %29, i32 0, i32 4
  store %struct.mkuz_bchain_link* %28, %struct.mkuz_bchain_link** %30, align 8
  %31 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %36 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %44 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %43, i32 0, i32 3
  %45 = call i32 @pthread_cond_signal(i32* %44)
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %48 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %47, i32 0, i32 2
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  ret void
}

declare dso_local %struct.mkuz_bchain_link* @mkuz_safe_zmalloc(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
