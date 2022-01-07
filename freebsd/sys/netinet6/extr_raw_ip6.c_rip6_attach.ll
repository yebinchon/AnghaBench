; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.thread = type { i32 }
%struct.inpcb = type { i64, i32, i32, %struct.icmp6_filter*, i32 }
%struct.icmp6_filter = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"rip6_attach: inp != NULL\00", align 1
@PRIV_NETINET_RAW = common dso_local global i32 0, align 4
@rip_sendspace = common dso_local global i32 0, align 4
@rip_recvspace = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V_ripcbinfo = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @rip6_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.icmp6_filter*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %8, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %14 = icmp eq %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = load i32, i32* @PRIV_NETINET_RAW, align 4
  %19 = call i32 @priv_check(%struct.thread* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = load i32, i32* @rip_sendspace, align 4
  %27 = load i32, i32* @rip_recvspace, align 4
  %28 = call i32 @soreserve(%struct.socket* %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %24
  %34 = load i32, i32* @M_PCB, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = call %struct.icmp6_filter* @malloc(i32 4, i32 %34, i32 %35)
  store %struct.icmp6_filter* %36, %struct.icmp6_filter** %9, align 8
  %37 = load %struct.icmp6_filter*, %struct.icmp6_filter** %9, align 8
  %38 = icmp eq %struct.icmp6_filter* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %33
  %42 = call i32 @INP_INFO_WLOCK(i32* @V_ripcbinfo)
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = call i32 @in_pcballoc(%struct.socket* %43, i32* @V_ripcbinfo)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  %49 = load %struct.icmp6_filter*, %struct.icmp6_filter** %9, align 8
  %50 = load i32, i32* @M_PCB, align 4
  %51 = call i32 @free(%struct.icmp6_filter* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %81

53:                                               ; preds = %41
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.inpcb*
  store %struct.inpcb* %57, %struct.inpcb** %8, align 8
  %58 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  %59 = load i32, i32* @INP_IPV6, align 4
  %60 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %67 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %69 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 8
  %70 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %71 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 4
  %72 = load %struct.icmp6_filter*, %struct.icmp6_filter** %9, align 8
  %73 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 3
  store %struct.icmp6_filter* %72, %struct.icmp6_filter** %74, align 8
  %75 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 3
  %77 = load %struct.icmp6_filter*, %struct.icmp6_filter** %76, align 8
  %78 = call i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter* %77)
  %79 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %80 = call i32 @INP_WUNLOCK(%struct.inpcb* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %53, %47, %39, %31, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.icmp6_filter* @malloc(i32, i32, i32) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

declare dso_local i32 @free(%struct.icmp6_filter*, i32) #1

declare dso_local i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
