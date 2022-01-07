; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.kqueue* }
%struct.kqueue = type { i32, i32 }

@KN_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"knote already queued\00", align 1
@kn_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_enqueue(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 1
  %6 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  store %struct.kqueue* %6, %struct.kqueue** %3, align 8
  %7 = load %struct.knote*, %struct.knote** %2, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 1
  %9 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %10 = call i32 @KQ_OWNED(%struct.kqueue* %9)
  %11 = load %struct.knote*, %struct.knote** %2, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KN_QUEUED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %20 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %19, i32 0, i32 1
  %21 = load %struct.knote*, %struct.knote** %2, align 8
  %22 = load i32, i32* @kn_tqe, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* %20, %struct.knote* %21, i32 %22)
  %24 = load i32, i32* @KN_QUEUED, align 4
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %30 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %34 = call i32 @kqueue_wakeup(%struct.kqueue* %33)
  ret void
}

declare dso_local i32 @KQ_OWNED(%struct.kqueue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.knote*, i32) #1

declare dso_local i32 @kqueue_wakeup(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
