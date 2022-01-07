; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_tq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_tq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev_priv = type { i32, void (i8*)*, i8*, %struct.cdev }
%struct.cdev = type { i32 }

@dev_ddtr = common dso_local global i32 0, align 4
@CDP_SCHED_DTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cdev %p in dev_destroy_tq without CDP_SCHED_DTR\00", align 1
@cdp_dtr_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @destroy_dev_tq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_dev_tq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev_priv*, align 8
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @dev_lock()
  br label %10

10:                                               ; preds = %45, %2
  %11 = call i32 @TAILQ_EMPTY(i32* @dev_ddtr)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = call %struct.cdev_priv* @TAILQ_FIRST(i32* @dev_ddtr)
  store %struct.cdev_priv* %15, %struct.cdev_priv** %5, align 8
  %16 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %17 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %16, i32 0, i32 3
  store %struct.cdev* %17, %struct.cdev** %6, align 8
  %18 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %19 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CDP_SCHED_DTR, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %24 = bitcast %struct.cdev_priv* %23 to i8*
  %25 = call i32 @KASSERT(i32 %22, i8* %24)
  %26 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %27 = load i32, i32* @cdp_dtr_list, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* @dev_ddtr, %struct.cdev_priv* %26, i32 %27)
  %29 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %30 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %29, i32 0, i32 1
  %31 = load void (i8*)*, void (i8*)** %30, align 8
  store void (i8*)* %31, void (i8*)** %7, align 8
  %32 = load %struct.cdev_priv*, %struct.cdev_priv** %5, align 8
  %33 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load %struct.cdev*, %struct.cdev** %6, align 8
  %36 = call i32 @destroy_devl(%struct.cdev* %35)
  %37 = call i32 (...) @dev_unlock_and_free()
  %38 = load %struct.cdev*, %struct.cdev** %6, align 8
  %39 = call i32 @dev_rel(%struct.cdev* %38)
  %40 = load void (i8*)*, void (i8*)** %7, align 8
  %41 = icmp ne void (i8*)* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %14
  %43 = load void (i8*)*, void (i8*)** %7, align 8
  %44 = load i8*, i8** %8, align 8
  call void %43(i8* %44)
  br label %45

45:                                               ; preds = %42, %14
  %46 = call i32 (...) @dev_lock()
  br label %10

47:                                               ; preds = %10
  %48 = call i32 (...) @dev_unlock()
  ret void
}

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cdev_priv* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cdev_priv*, i32) #1

declare dso_local i32 @destroy_devl(%struct.cdev*) #1

declare dso_local i32 @dev_unlock_and_free(...) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

declare dso_local i32 @dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
