; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"rip6_detach: inp == NULL\00", align 1
@V_ip6_mrouter = common dso_local global %struct.socket* null, align 8
@V_ripcbinfo = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @rip6_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rip6_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.inpcb* @sotoinpcb(%struct.socket* %4)
  store %struct.inpcb* %5, %struct.inpcb** %3, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = icmp ne %struct.inpcb* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.socket*, %struct.socket** %2, align 8
  %11 = load %struct.socket*, %struct.socket** @V_ip6_mrouter, align 8
  %12 = icmp eq %struct.socket* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  br i1 true, label %14, label %16

14:                                               ; preds = %13
  %15 = call i32 (...) @ip6_mrouter_done()
  br label %16

16:                                               ; preds = %14, %13, %1
  %17 = call i32 @INP_INFO_WLOCK(i32* @V_ripcbinfo)
  %18 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %19 = call i32 @INP_WLOCK(%struct.inpcb* %18)
  %20 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @M_PCB, align 4
  %24 = call i32 @free(i32 %22, i32 %23)
  %25 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %26 = call i32 @in_pcbdetach(%struct.inpcb* %25)
  %27 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %28 = call i32 @in_pcbfree(%struct.inpcb* %27)
  %29 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ip6_mrouter_done(...) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbfree(%struct.inpcb*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
