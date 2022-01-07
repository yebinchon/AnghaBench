; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kmq_notify_args = type { i32, i32* }
%struct.sigevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kmq_notify(%struct.thread* %0, %struct.kmq_notify_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kmq_notify_args*, align 8
  %6 = alloca %struct.sigevent, align 4
  %7 = alloca %struct.sigevent*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kmq_notify_args* %1, %struct.kmq_notify_args** %5, align 8
  %9 = load %struct.kmq_notify_args*, %struct.kmq_notify_args** %5, align 8
  %10 = getelementptr inbounds %struct.kmq_notify_args, %struct.kmq_notify_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.sigevent* null, %struct.sigevent** %7, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.kmq_notify_args*, %struct.kmq_notify_args** %5, align 8
  %16 = getelementptr inbounds %struct.kmq_notify_args, %struct.kmq_notify_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.sigevent* %6, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %14
  store %struct.sigevent* %6, %struct.sigevent** %7, align 8
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.kmq_notify_args*, %struct.kmq_notify_args** %5, align 8
  %27 = getelementptr inbounds %struct.kmq_notify_args, %struct.kmq_notify_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %30 = call i32 @kern_kmq_notify(%struct.thread* %25, i32 %28, %struct.sigevent* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @copyin(i32*, %struct.sigevent*, i32) #1

declare dso_local i32 @kern_kmq_notify(%struct.thread*, i32, %struct.sigevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
