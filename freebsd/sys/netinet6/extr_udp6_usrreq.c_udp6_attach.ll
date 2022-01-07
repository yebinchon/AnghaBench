; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32, i32, i32, i32, i32 }
%struct.inpcbinfo = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"udp6_attach: inp != NULL\00", align 1
@udp_sendspace = common dso_local global i32 0, align 4
@udp_recvspace = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@V_ip_defttl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @udp6_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.inpcbinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inpcbinfo* @udp_get_inpcbinfo(i32 %15)
  store %struct.inpcbinfo* %16, %struct.inpcbinfo** %9, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call %struct.inpcb* @sotoinpcb(%struct.socket* %17)
  store %struct.inpcb* %18, %struct.inpcb** %8, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %20 = icmp eq %struct.inpcb* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28, %3
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = load i32, i32* @udp_sendspace, align 4
  %37 = load i32, i32* @udp_recvspace, align 4
  %38 = call i32 @soreserve(%struct.socket* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %103

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %46 = call i32 @INP_INFO_WLOCK(%struct.inpcbinfo* %45)
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %49 = call i32 @in_pcballoc(%struct.socket* %47, %struct.inpcbinfo* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %54 = call i32 @INP_INFO_WUNLOCK(%struct.inpcbinfo* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %103

56:                                               ; preds = %44
  %57 = load %struct.socket*, %struct.socket** %5, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.inpcb*
  store %struct.inpcb* %60, %struct.inpcb** %8, align 8
  %61 = load i32, i32* @INP_IPV6, align 4
  %62 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %67 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load i32, i32* @INP_IPV4, align 4
  %74 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %75 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %56
  %79 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %80 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  %81 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %82 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %81, i32 0, i32 2
  store i32 -1, i32* %82, align 4
  %83 = load i32, i32* @V_ip_defttl, align 4
  %84 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %85 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %87 = call i32 @udp_newudpcb(%struct.inpcb* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %92 = call i32 @in_pcbdetach(%struct.inpcb* %91)
  %93 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %94 = call i32 @in_pcbfree(%struct.inpcb* %93)
  %95 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %96 = call i32 @INP_INFO_WUNLOCK(%struct.inpcbinfo* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %103

98:                                               ; preds = %78
  %99 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %100 = call i32 @INP_WUNLOCK(%struct.inpcb* %99)
  %101 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  %102 = call i32 @INP_INFO_WUNLOCK(%struct.inpcbinfo* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %90, %52, %41
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.inpcbinfo* @udp_get_inpcbinfo(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @INP_INFO_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, %struct.inpcbinfo*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @udp_newudpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbfree(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
