; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.dev_event_info = type { %struct.dev_event_info* }

@devsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EAGAIN = common dso_local global i32 0, align 4
@dei_link = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @devread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_event_info*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0))
  br label %11

11:                                               ; preds = %27, %3
  %12 = call i64 @TAILQ_EMPTY(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 2))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 4), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0))
  %19 = load i32, i32* @EAGAIN, align 4
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %14
  %21 = call i32 @cv_wait_sig(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0))
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0))
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %20
  br label %11

28:                                               ; preds = %11
  %29 = call %struct.dev_event_info* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 2))
  store %struct.dev_event_info* %29, %struct.dev_event_info** %8, align 8
  %30 = load %struct.dev_event_info*, %struct.dev_event_info** %8, align 8
  %31 = load i32, i32* @dei_link, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 2), %struct.dev_event_info* %30, i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 1), align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 1), align 4
  %35 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0))
  %36 = load %struct.dev_event_info*, %struct.dev_event_info** %8, align 8
  %37 = getelementptr inbounds %struct.dev_event_info, %struct.dev_event_info* %36, i32 0, i32 0
  %38 = load %struct.dev_event_info*, %struct.dev_event_info** %37, align 8
  %39 = load %struct.dev_event_info*, %struct.dev_event_info** %8, align 8
  %40 = getelementptr inbounds %struct.dev_event_info, %struct.dev_event_info* %39, i32 0, i32 0
  %41 = load %struct.dev_event_info*, %struct.dev_event_info** %40, align 8
  %42 = call i32 @strlen(%struct.dev_event_info* %41)
  %43 = load %struct.uio*, %struct.uio** %6, align 8
  %44 = call i32 @uiomove(%struct.dev_event_info* %38, i32 %42, %struct.uio* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.dev_event_info*, %struct.dev_event_info** %8, align 8
  %46 = getelementptr inbounds %struct.dev_event_info, %struct.dev_event_info* %45, i32 0, i32 0
  %47 = load %struct.dev_event_info*, %struct.dev_event_info** %46, align 8
  %48 = load i32, i32* @M_BUS, align 4
  %49 = call i32 @free(%struct.dev_event_info* %47, i32 %48)
  %50 = load %struct.dev_event_info*, %struct.dev_event_info** %8, align 8
  %51 = load i32, i32* @M_BUS, align 4
  %52 = call i32 @free(%struct.dev_event_info* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %28, %24, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local %struct.dev_event_info* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.dev_event_info*, i32) #1

declare dso_local i32 @uiomove(%struct.dev_event_info*, i32, %struct.uio*) #1

declare dso_local i32 @strlen(%struct.dev_event_info*) #1

declare dso_local i32 @free(%struct.dev_event_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
