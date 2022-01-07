; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.pqisrc_softstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @smartpqi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.pqisrc_softstate*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call %struct.pqisrc_softstate* @cam_sim_softc(%struct.cam_sim* %5)
  store %struct.pqisrc_softstate* %6, %struct.pqisrc_softstate** %3, align 8
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %10 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pqisrc_process_response_queue(%struct.pqisrc_softstate* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %7

20:                                               ; preds = %7
  ret void
}

declare dso_local %struct.pqisrc_softstate* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @pqisrc_process_response_queue(%struct.pqisrc_softstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
