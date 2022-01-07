; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pppctl/extr_pppctl.c_Monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pppctl/extr_pppctl.c_Monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i64 }

@sem_select = common dso_local global i32 0, align 4
@timetogo = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Monitor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.thread_data*
  store %struct.thread_data* %7, %struct.thread_data** %3, align 8
  %8 = call i32 @FD_ZERO(i32* %4)
  %9 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %10 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @FD_SET(i64 %11, i32* %4)
  %13 = call i32 @sem_wait(i32* @sem_select)
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* @timetogo, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %20 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @select(i64 %22, i32* %4, i32* null, i32* null, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %27 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SIGUSR1, align 4
  %30 = call i32 @pthread_kill(i32 %28, i32 %29)
  %31 = call i32 @sem_wait(i32* @sem_select)
  br label %32

32:                                               ; preds = %25, %18
  br label %14

33:                                               ; preds = %14
  ret i8* null
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
