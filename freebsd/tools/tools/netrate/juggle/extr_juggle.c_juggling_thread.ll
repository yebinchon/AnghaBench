; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_juggling_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_juggling_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@threaded_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"juggling_thread: pthread_mutex_lock\00", align 1
@threaded_child_ready = common dso_local global i32 0, align 4
@threaded_cond = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"juggling_thread: pthread_cond_signal\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"juggling_thread: pthread_mutex_unlock\00", align 1
@NUMCYCLES = common dso_local global i32 0, align 4
@threaded_pipeline = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"message_recv fd2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"message_send fd2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @juggling_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @juggling_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = call i64 @pthread_mutex_lock(i32* @threaded_mtx)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  store i32 1, i32* @threaded_child_ready, align 4
  %14 = call i64 @pthread_cond_signal(i32* @threaded_cond)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = call i64 @pthread_mutex_unlock(i32* @threaded_mtx)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NUMCYCLES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @threaded_pipeline, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @message_recv(i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @message_send(i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %29

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %24

53:                                               ; preds = %24
  ret i8* null
}

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @pthread_cond_signal(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @message_recv(i32) #1

declare dso_local i64 @message_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
