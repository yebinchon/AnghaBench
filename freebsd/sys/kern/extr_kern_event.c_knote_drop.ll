; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.knote*)* }
%struct.thread = type { i32 }

@KN_DETACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, %struct.thread*)* @knote_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_drop(%struct.knote* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.knote*, %struct.knote** %3, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @KN_DETACHED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.knote*, %struct.knote** %3, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.knote*)*, i32 (%struct.knote*)** %15, align 8
  %17 = load %struct.knote*, %struct.knote** %3, align 8
  %18 = call i32 %16(%struct.knote* %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.knote*, %struct.knote** %3, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = call i32 @knote_drop_detached(%struct.knote* %20, %struct.thread* %21)
  ret void
}

declare dso_local i32 @knote_drop_detached(%struct.knote*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
