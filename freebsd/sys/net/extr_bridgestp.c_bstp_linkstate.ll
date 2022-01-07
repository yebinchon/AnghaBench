; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_linkstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, %struct.bstp_state* }
%struct.bstp_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstp_linkstate(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  %3 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  %4 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %5 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %4, i32 0, i32 1
  %6 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  store %struct.bstp_state* %6, %struct.bstp_state** %3, align 8
  %7 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %8 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %14 = call i32 @bstp_ifupdstatus(%struct.bstp_port* %13, i32 0)
  %15 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %16 = call i32 @BSTP_LOCK(%struct.bstp_state* %15)
  %17 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %18 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %19 = call i32 @bstp_update_state(%struct.bstp_state* %17, %struct.bstp_port* %18)
  %20 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %21 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @bstp_ifupdstatus(%struct.bstp_port*, i32) #1

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @bstp_update_state(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
