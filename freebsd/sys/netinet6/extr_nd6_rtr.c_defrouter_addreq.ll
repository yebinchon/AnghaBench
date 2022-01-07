; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_addreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_addreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.rtentry = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_defrouter*)* @defrouter_addreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defrouter_addreq(%struct.nd_defrouter* %0) #0 {
  %2 = alloca %struct.nd_defrouter*, align 8
  %3 = alloca %struct.sockaddr_in6, align 4
  %4 = alloca %struct.sockaddr_in6, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %2, align 8
  store %struct.rtentry* null, %struct.rtentry** %6, align 8
  %8 = call i32 @bzero(%struct.sockaddr_in6* %3, i32 12)
  %9 = call i32 @bzero(%struct.sockaddr_in6* %4, i32 12)
  %10 = call i32 @bzero(%struct.sockaddr_in6* %5, i32 12)
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 12, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %4, i32 0, i32 0
  store i32 12, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i32, i32* @AF_INET6, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %18 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @RTM_ADD, align 4
  %22 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %23 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %24 = bitcast %struct.sockaddr_in6* %4 to %struct.sockaddr*
  %25 = load i32, i32* @RTF_GATEWAY, align 4
  %26 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %27 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @in6_rtrequest(i32 %21, %struct.sockaddr* %22, %struct.sockaddr* %23, %struct.sockaddr* %24, i32 %25, %struct.rtentry** %6, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %33 = icmp ne %struct.rtentry* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @RTM_ADD, align 4
  %36 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %37 = call i32 @nd6_rtmsg(i32 %35, %struct.rtentry* %36)
  %38 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %39 = call i32 @RTFREE(%struct.rtentry* %38)
  br label %40

40:                                               ; preds = %34, %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %45 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @in6_rtrequest(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.rtentry**, i32) #1

declare dso_local i32 @nd6_rtmsg(i32, %struct.rtentry*) #1

declare dso_local i32 @RTFREE(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
