; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_thread_juggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_thread_juggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@threaded_pipeline = common dso_local global i32 0, align 4
@threaded_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"thread_juggle: pthread_mutex_init\00", align 1
@juggling_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"thread_juggle: pthread_create\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"thread_juggle: pthread_mutex_lock\00", align 1
@threaded_child_ready = common dso_local global i32 0, align 4
@threaded_cond = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"thread_juggle: pthread_cond_wait\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"thread_juggle: pthread_mutex_unlock\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"thread_juggle: clock_gettime\00", align 1
@NUMCYCLES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"message_send fd1\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"message_recv fd1\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"thread_juggle: pthread_join\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @thread_juggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_juggle(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* @threaded_pipeline, align 4
  %13 = call i64 @pthread_mutex_init(i32* @threaded_mtx, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* @juggling_thread, align 4
  %19 = call i64 @pthread_create(i32* %9, i32* null, i32 %18, i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = call i64 @pthread_mutex_lock(i32* @threaded_mtx)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, i32* @threaded_child_ready, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i64 @pthread_cond_wait(i32* @threaded_cond, i32* @threaded_mtx)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @err(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  br label %29

39:                                               ; preds = %29
  %40 = call i64 @pthread_mutex_unlock(i32* @threaded_mtx)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @err(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @CLOCK_REALTIME, align 4
  %46 = call i64 @clock_gettime(i32 %45, %struct.timespec* %8)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @err(i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @NUMCYCLES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @message_send(i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %56

70:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @message_recv(i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %71

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load i32, i32* @CLOCK_REALTIME, align 4
  %91 = call i64 @clock_gettime(i32 %90, %struct.timespec* %4)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @err(i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @pthread_join(i32 %96, i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = call i32 @timespecsub(%struct.timespec* %4, %struct.timespec* %8, %struct.timespec* %4)
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  ret i32 %104
}

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @message_send(i32) #1

declare dso_local i64 @message_recv(i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
