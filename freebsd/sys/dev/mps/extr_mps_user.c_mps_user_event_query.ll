; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_event_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_event_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32* }
%struct.TYPE_3__ = type { i32*, i32 }

@MPS_EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, %struct.TYPE_3__*)* @mps_user_event_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_user_event_query(%struct.mps_softc* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %7 = call i32 @mps_lock(%struct.mps_softc* %6)
  %8 = load i32, i32* @MPS_EVENT_QUEUE_SIZE, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %33 = call i32 @mps_unlock(%struct.mps_softc* %32)
  ret void
}

declare dso_local i32 @mps_lock(%struct.mps_softc*) #1

declare dso_local i32 @mps_unlock(%struct.mps_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
