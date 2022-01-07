; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_get_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_get_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcov_info = type { i32 }
%struct.thread = type { i64, %struct.kcov_info*, i32* }

@KCOV_STATE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kcov_info* (%struct.thread*)* @get_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kcov_info* @get_kinfo(%struct.thread* %0) #0 {
  %2 = alloca %struct.kcov_info*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.kcov_info*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = icmp eq %struct.thread* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.kcov_info* null, %struct.kcov_info** %2, align 8
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8
  store %struct.kcov_info* null, %struct.kcov_info** %2, align 8
  br label %34

19:                                               ; preds = %13
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 1
  %22 = load %struct.kcov_info*, %struct.kcov_info** %21, align 8
  store %struct.kcov_info* %22, %struct.kcov_info** %4, align 8
  %23 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %24 = icmp eq %struct.kcov_info* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %27 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %26, i32 0, i32 0
  %28 = call i64 @atomic_load_acq_int(i32* %27)
  %29 = load i64, i64* @KCOV_STATE_RUNNING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store %struct.kcov_info* null, %struct.kcov_info** %2, align 8
  br label %34

32:                                               ; preds = %25
  %33 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  store %struct.kcov_info* %33, %struct.kcov_info** %2, align 8
  br label %34

34:                                               ; preds = %32, %31, %18, %7
  %35 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  ret %struct.kcov_info* %35
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
