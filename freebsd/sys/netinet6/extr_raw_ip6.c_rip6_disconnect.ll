; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"rip6_disconnect: inp == NULL\00", align 1
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @rip6_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = call %struct.inpcb* @sotoinpcb(%struct.socket* %5)
  store %struct.inpcb* %6, %struct.inpcb** %4, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = icmp ne %struct.inpcb* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SS_ISCONNECTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOTCONN, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @in6addr_any, align 4
  %21 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = call i32 @rip6_abort(%struct.socket* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rip6_abort(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
