; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_fifo_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"pthread_mutex_init() failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pthread_cond_init() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkuz_fifo_queue* @mkuz_fqueue_ctor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mkuz_fifo_queue*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.mkuz_fifo_queue* @mkuz_safe_zmalloc(i32 12)
  store %struct.mkuz_fifo_queue* %4, %struct.mkuz_fifo_queue** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %7 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %9 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %8, i32 0, i32 2
  %10 = call i64 @pthread_mutex_init(i32* %9, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  %16 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %15, i32 0, i32 1
  %17 = call i64 @pthread_cond_init(i32* %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %3, align 8
  ret %struct.mkuz_fifo_queue* %22
}

declare dso_local %struct.mkuz_fifo_queue* @mkuz_safe_zmalloc(i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
