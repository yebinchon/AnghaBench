; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32 }
%struct.mly_command = type { void (%struct.mly_command*)*, i32 }

@MLY_CMD_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_complete(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca %struct.mly_command*, align 8
  %4 = alloca void (%struct.mly_command*)*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %5 = call i32 @debug_called(i32 2)
  br label %6

6:                                                ; preds = %29, %1
  %7 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %8 = call %struct.mly_command* @mly_dequeue_complete(%struct.mly_softc* %7)
  store %struct.mly_command* %8, %struct.mly_command** %3, align 8
  %9 = icmp ne %struct.mly_command* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %12 = call i32 @mly_unmap_command(%struct.mly_command* %11)
  %13 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %14 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %13, i32 0, i32 0
  %15 = load void (%struct.mly_command*)*, void (%struct.mly_command*)** %14, align 8
  store void (%struct.mly_command*)* %15, void (%struct.mly_command*)** %4, align 8
  %16 = load i32, i32* @MLY_CMD_COMPLETE, align 4
  %17 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %18 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load void (%struct.mly_command*)*, void (%struct.mly_command*)** %4, align 8
  %22 = icmp ne void (%struct.mly_command*)* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load void (%struct.mly_command*)*, void (%struct.mly_command*)** %4, align 8
  %25 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  call void %24(%struct.mly_command* %25)
  br label %29

26:                                               ; preds = %10
  %27 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %28 = call i32 @wakeup(%struct.mly_command* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.mly_command* @mly_dequeue_complete(%struct.mly_softc*) #1

declare dso_local i32 @mly_unmap_command(%struct.mly_command*) #1

declare dso_local i32 @wakeup(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
