; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_delreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_delreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.rtentry = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_defrouter*)* @defrouter_delreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defrouter_delreq(%struct.nd_defrouter* %0) #0 {
  %2 = alloca %struct.nd_defrouter*, align 8
  %3 = alloca %struct.sockaddr_in6, align 4
  %4 = alloca %struct.sockaddr_in6, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.rtentry*, align 8
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %2, align 8
  store %struct.rtentry* null, %struct.rtentry** %6, align 8
  %7 = call i32 @bzero(%struct.sockaddr_in6* %3, i32 12)
  %8 = call i32 @bzero(%struct.sockaddr_in6* %4, i32 12)
  %9 = call i32 @bzero(%struct.sockaddr_in6* %5, i32 12)
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 12, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %4, i32 0, i32 0
  store i32 12, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 0
  store i32 12, i32* %12, align 4
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %17 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @RTM_DELETE, align 4
  %21 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %22 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %23 = bitcast %struct.sockaddr_in6* %4 to %struct.sockaddr*
  %24 = load i32, i32* @RTF_GATEWAY, align 4
  %25 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %26 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @in6_rtrequest(i32 %20, %struct.sockaddr* %21, %struct.sockaddr* %22, %struct.sockaddr* %23, i32 %24, %struct.rtentry** %6, i32 %29)
  %31 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %32 = icmp ne %struct.rtentry* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @RTM_DELETE, align 4
  %35 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %36 = call i32 @nd6_rtmsg(i32 %34, %struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = call i32 @RTFREE(%struct.rtentry* %37)
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %41 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
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
