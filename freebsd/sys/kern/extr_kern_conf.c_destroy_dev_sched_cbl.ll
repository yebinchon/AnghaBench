; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_sched_cbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_sched_cbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.cdev_priv = type { i32, void (i8*)*, i8* }

@devmtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@CDP_SCHED_DTR = common dso_local global i32 0, align 4
@dev_ddtr = common dso_local global i32 0, align 4
@cdp_dtr_list = common dso_local global i32 0, align 4
@taskqueue_swi_giant = common dso_local global i32 0, align 4
@dev_dtr_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, void (i8*)*, i8*)* @destroy_dev_sched_cbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_dev_sched_cbl(%struct.cdev* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cdev_priv*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* @devmtx, i32 %9)
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %11)
  store %struct.cdev_priv* %12, %struct.cdev_priv** %8, align 8
  %13 = load %struct.cdev_priv*, %struct.cdev_priv** %8, align 8
  %14 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CDP_SCHED_DTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (...) @dev_unlock()
  store i32 0, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.cdev*, %struct.cdev** %5, align 8
  %23 = call i32 @dev_refl(%struct.cdev* %22)
  %24 = load i32, i32* @CDP_SCHED_DTR, align 4
  %25 = load %struct.cdev_priv*, %struct.cdev_priv** %8, align 8
  %26 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load void (i8*)*, void (i8*)** %6, align 8
  %30 = load %struct.cdev_priv*, %struct.cdev_priv** %8, align 8
  %31 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %30, i32 0, i32 1
  store void (i8*)* %29, void (i8*)** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.cdev_priv*, %struct.cdev_priv** %8, align 8
  %34 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cdev_priv*, %struct.cdev_priv** %8, align 8
  %36 = load i32, i32* @cdp_dtr_list, align 4
  %37 = call i32 @TAILQ_INSERT_TAIL(i32* @dev_ddtr, %struct.cdev_priv* %35, i32 %36)
  %38 = call i32 (...) @dev_unlock()
  %39 = load i32, i32* @taskqueue_swi_giant, align 4
  %40 = call i32 @taskqueue_enqueue(i32 %39, i32* @dev_dtr_task)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @dev_refl(%struct.cdev*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cdev_priv*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
