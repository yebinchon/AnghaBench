; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.kqueue = type { i32, i32, i64 }

@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@KQ_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @kqueue_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_poll(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.kqueue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call i32 @kqueue_acquire(%struct.file* %13, %struct.kqueue** %10)
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @POLLERR, align 4
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %20 = call i32 @KQ_LOCK(%struct.kqueue* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = load i32, i32* @POLLRDNORM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %18
  %28 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %29 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @POLLIN, align 4
  %35 = load i32, i32* @POLLRDNORM, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %56

40:                                               ; preds = %27
  %41 = load %struct.thread*, %struct.thread** %9, align 8
  %42 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %43 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %42, i32 0, i32 1
  %44 = call i32 @selrecord(%struct.thread* %41, i32* %43)
  %45 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %46 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %45, i32 0, i32 1
  %47 = call i64 @SEL_WAITING(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @KQ_SEL, align 4
  %51 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %52 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %18
  %58 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %59 = call i32 @kqueue_release(%struct.kqueue* %58, i32 1)
  %60 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %61 = call i32 @KQ_UNLOCK(%struct.kqueue* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @kqueue_acquire(%struct.file*, %struct.kqueue**) #1

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i64 @SEL_WAITING(i32*) #1

declare dso_local i32 @kqueue_release(%struct.kqueue*, i32) #1

declare dso_local i32 @KQ_UNLOCK(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
