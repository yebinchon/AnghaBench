; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_out_upd_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_out_upd_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i32, i32, i32, i32, i32 }
%struct.pfsync_upd_c = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*, i8*)* @pfsync_out_upd_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_out_upd_c(%struct.pf_state* %0, i8* %1) #0 {
  %3 = alloca %struct.pf_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfsync_upd_c*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pfsync_upd_c*
  store %struct.pfsync_upd_c* %7, %struct.pfsync_upd_c** %5, align 8
  %8 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %9 = call i32 @bzero(%struct.pfsync_upd_c* %8, i32 20)
  %10 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %11 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %14 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %16 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %15, i32 0, i32 3
  %17 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %18 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %17, i32 0, i32 3
  %19 = call i32 @pf_state_peer_hton(i32* %16, i32* %18)
  %20 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %21 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %20, i32 0, i32 2
  %22 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %23 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %22, i32 0, i32 2
  %24 = call i32 @pf_state_peer_hton(i32* %21, i32* %23)
  %25 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %26 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %29 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %31 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %5, align 8
  %34 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.pfsync_upd_c*, i32) #1

declare dso_local i32 @pf_state_peer_hton(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
