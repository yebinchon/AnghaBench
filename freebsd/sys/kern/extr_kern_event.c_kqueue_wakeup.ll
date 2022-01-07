; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KQ_SLEEP = common dso_local global i32 0, align 4
@KQ_SEL = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@KQ_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqueue_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_wakeup(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %3 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %4 = call i32 @KQ_OWNED(%struct.kqueue* %3)
  %5 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %6 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KQ_SLEEP, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @KQ_SLEEP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @KQ_SLEEP, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %20 = call i32 @wakeup(%struct.kqueue* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %23 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KQ_SEL, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @KQ_SEL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %31 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %30, i32 0, i32 2
  %32 = load i32, i32* @PSOCK, align 4
  %33 = call i32 @selwakeuppri(%struct.TYPE_3__* %31, i32 %32)
  %34 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %35 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %34, i32 0, i32 2
  %36 = call i32 @SEL_WAITING(%struct.TYPE_3__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @KQ_SEL, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %42 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %29
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %48 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @knlist_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %54 = call i32 @kqueue_schedtask(%struct.kqueue* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %57 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KQ_ASYNC, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @KQ_ASYNC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %65 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %64, i32 0, i32 1
  %66 = load i32, i32* @SIGIO, align 4
  %67 = call i32 @pgsigio(i32* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %63, %55
  ret void
}

declare dso_local i32 @KQ_OWNED(%struct.kqueue*) #1

declare dso_local i32 @wakeup(%struct.kqueue*) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SEL_WAITING(%struct.TYPE_3__*) #1

declare dso_local i32 @knlist_empty(i32*) #1

declare dso_local i32 @kqueue_schedtask(%struct.kqueue*) #1

declare dso_local i32 @pgsigio(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
