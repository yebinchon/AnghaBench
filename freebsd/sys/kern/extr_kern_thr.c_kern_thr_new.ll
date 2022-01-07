; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thr_param = type { i64 }
%struct.rtprio = type { i32 }

@thr_new_initthr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_thr_new(%struct.thread* %0, %struct.thr_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thr_param*, align 8
  %6 = alloca %struct.rtprio, align 4
  %7 = alloca %struct.rtprio*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thr_param* %1, %struct.thr_param** %5, align 8
  store %struct.rtprio* null, %struct.rtprio** %7, align 8
  %9 = load %struct.thr_param*, %struct.thr_param** %5, align 8
  %10 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.thr_param*, %struct.thr_param** %5, align 8
  %15 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @copyin(i64 %16, %struct.rtprio* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %13
  store %struct.rtprio* %6, %struct.rtprio** %7, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load %struct.rtprio*, %struct.rtprio** %7, align 8
  %26 = load i32, i32* @thr_new_initthr, align 4
  %27 = load %struct.thr_param*, %struct.thr_param** %5, align 8
  %28 = call i32 @thread_create(%struct.thread* %24, %struct.rtprio* %25, i32 %26, %struct.thr_param* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @copyin(i64, %struct.rtprio*, i32) #1

declare dso_local i32 @thread_create(%struct.thread*, %struct.rtprio*, i32, %struct.thr_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
