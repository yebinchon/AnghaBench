; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_rtrequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_rtrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.ifnet*, i64 }
%struct.ifnet = type { i32 }
%struct.rt_addrinfo = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.nd_defrouter = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_rtrequest(i32 %0, %struct.rtentry* %1, %struct.rt_addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.rt_addrinfo*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.nd_defrouter*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rtentry* %1, %struct.rtentry** %5, align 8
  store %struct.rt_addrinfo* %2, %struct.rt_addrinfo** %6, align 8
  %10 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %7, align 8
  %14 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %15 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %9, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %52 [
    i32 129, label %18
    i32 128, label %19
  ]

18:                                               ; preds = %3
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %21 = icmp ne %struct.ifnet* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %52

23:                                               ; preds = %19
  %24 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RTF_GATEWAY, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %33 = call i32 @rt_key(%struct.rtentry* %32)
  %34 = call %struct.TYPE_2__* @SIN6(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @IN6_ARE_ADDR_EQUAL(i32* @in6addr_any, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %42 = call %struct.nd_defrouter* @defrouter_lookup(i32* %40, %struct.ifnet* %41)
  store %struct.nd_defrouter* %42, %struct.nd_defrouter** %8, align 8
  %43 = load %struct.nd_defrouter*, %struct.nd_defrouter** %8, align 8
  %44 = icmp ne %struct.nd_defrouter* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.nd_defrouter*, %struct.nd_defrouter** %8, align 8
  %47 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.nd_defrouter*, %struct.nd_defrouter** %8, align 8
  %49 = call i32 @defrouter_rele(%struct.nd_defrouter* %48)
  br label %50

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %22, %30, %3, %51, %18
  ret void
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @SIN6(i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local %struct.nd_defrouter* @defrouter_lookup(i32*, %struct.ifnet*) #1

declare dso_local i32 @defrouter_rele(%struct.nd_defrouter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
