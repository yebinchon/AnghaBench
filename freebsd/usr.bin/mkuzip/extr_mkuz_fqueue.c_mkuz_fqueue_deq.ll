; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_deq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { i32 }
%struct.mkuz_fifo_queue = type { i32, i32, i32*, %struct.mkuz_bchain_link*, i32 }
%struct.mkuz_bchain_link = type { %struct.mkuz_blk*, %struct.mkuz_bchain_link* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkuz_blk* @mkuz_fqueue_deq(%struct.mkuz_fifo_queue* %0) #0 {
  %2 = alloca %struct.mkuz_fifo_queue*, align 8
  %3 = alloca %struct.mkuz_bchain_link*, align 8
  %4 = alloca %struct.mkuz_blk*, align 8
  store %struct.mkuz_fifo_queue* %0, %struct.mkuz_fifo_queue** %2, align 8
  %5 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %6 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %10 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %9, i32 0, i32 3
  %11 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %10, align 8
  %12 = icmp eq %struct.mkuz_bchain_link* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %15 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %14, i32 0, i32 4
  %16 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %17 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %16, i32 0, i32 1
  %18 = call i32 @pthread_cond_wait(i32* %15, i32* %17)
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %21 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %20, i32 0, i32 3
  %22 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %21, align 8
  store %struct.mkuz_bchain_link* %22, %struct.mkuz_bchain_link** %3, align 8
  %23 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %3, align 8
  %24 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %23, i32 0, i32 1
  %25 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %24, align 8
  %26 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %27 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %26, i32 0, i32 3
  store %struct.mkuz_bchain_link* %25, %struct.mkuz_bchain_link** %27, align 8
  %28 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %29 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %28, i32 0, i32 3
  %30 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %29, align 8
  %31 = icmp eq %struct.mkuz_bchain_link* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %34 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %19
  %36 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %37 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %2, align 8
  %41 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %40, i32 0, i32 1
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  %43 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %3, align 8
  %44 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %43, i32 0, i32 0
  %45 = load %struct.mkuz_blk*, %struct.mkuz_blk** %44, align 8
  store %struct.mkuz_blk* %45, %struct.mkuz_blk** %4, align 8
  %46 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %3, align 8
  %47 = call i32 @free(%struct.mkuz_bchain_link* %46)
  %48 = load %struct.mkuz_blk*, %struct.mkuz_blk** %4, align 8
  ret %struct.mkuz_blk* %48
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.mkuz_bchain_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
