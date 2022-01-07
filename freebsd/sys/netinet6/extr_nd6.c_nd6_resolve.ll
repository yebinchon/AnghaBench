; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, i64, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@LLE_UNLOCKED = common dso_local global i32 0, align 4
@RLLE_VALID = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@RLLE_IFADDR = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_resolve(%struct.ifnet* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, i32* %4, i32* %5, %struct.llentry** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.llentry**, align 8
  %16 = alloca %struct.llentry*, align 8
  %17 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mbuf* %2, %struct.mbuf** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.llentry** %6, %struct.llentry*** %15, align 8
  store %struct.llentry* null, %struct.llentry** %16, align 8
  %18 = call i32 (...) @NET_EPOCH_ASSERT()
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32*, i32** %14, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %7
  %24 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %25, %struct.sockaddr_in6** %17, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %27 = call %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  %36 = load i32, i32* @ENETDOWN, align 4
  store i32 %36, i32* %8, align 4
  br label %146

37:                                               ; preds = %23
  %38 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @M_MCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %56 [
    i32 129, label %51
    i32 128, label %51
    i32 130, label %51
  ]

51:                                               ; preds = %47, %47, %47
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 0
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @ETHER_MAP_IPV6_MULTICAST(i32* %53, i32* %54)
  store i32 0, i32* %8, align 4
  br label %146

56:                                               ; preds = %47
  %57 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  %59 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %59, i32* %8, align 4
  br label %146

60:                                               ; preds = %40, %37
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 0
  %63 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %64 = icmp ne %struct.llentry** %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @LLE_EXCLUSIVE, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @LLE_UNLOCKED, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %72 = call %struct.llentry* @nd6_lookup(i32* %62, i32 %70, %struct.ifnet* %71)
  store %struct.llentry* %72, %struct.llentry** %16, align 8
  %73 = load %struct.llentry*, %struct.llentry** %16, align 8
  %74 = icmp ne %struct.llentry* %73, null
  br i1 %74, label %75, label %128

75:                                               ; preds = %69
  %76 = load %struct.llentry*, %struct.llentry** %16, align 8
  %77 = getelementptr inbounds %struct.llentry, %struct.llentry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RLLE_VALID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %75
  %83 = load %struct.llentry*, %struct.llentry** %16, align 8
  %84 = getelementptr inbounds %struct.llentry, %struct.llentry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.llentry*, %struct.llentry** %16, align 8
  %88 = getelementptr inbounds %struct.llentry, %struct.llentry* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bcopy(i32 %85, i32* %86, i32 %89)
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load i32, i32* @LLE_VALID, align 4
  %95 = load %struct.llentry*, %struct.llentry** %16, align 8
  %96 = getelementptr inbounds %struct.llentry, %struct.llentry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RLLE_IFADDR, align 4
  %99 = and i32 %97, %98
  %100 = or i32 %94, %99
  %101 = load i32*, i32** %14, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %82
  %103 = load %struct.llentry*, %struct.llentry** %16, align 8
  %104 = getelementptr inbounds %struct.llentry, %struct.llentry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.llentry*, %struct.llentry** %16, align 8
  %109 = call i32 @LLE_REQ_LOCK(%struct.llentry* %108)
  %110 = load %struct.llentry*, %struct.llentry** %16, align 8
  %111 = getelementptr inbounds %struct.llentry, %struct.llentry* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @time_uptime, align 4
  %113 = load %struct.llentry*, %struct.llentry** %16, align 8
  %114 = getelementptr inbounds %struct.llentry, %struct.llentry* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.llentry*, %struct.llentry** %16, align 8
  %116 = call i32 @LLE_REQ_UNLOCK(%struct.llentry* %115)
  br label %117

117:                                              ; preds = %107, %102
  %118 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %119 = icmp ne %struct.llentry** %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.llentry*, %struct.llentry** %16, align 8
  %122 = call i32 @LLE_ADDREF(%struct.llentry* %121)
  %123 = load %struct.llentry*, %struct.llentry** %16, align 8
  %124 = load %struct.llentry**, %struct.llentry*** %15, align 8
  store %struct.llentry* %123, %struct.llentry** %124, align 8
  %125 = load %struct.llentry*, %struct.llentry** %16, align 8
  %126 = call i32 @LLE_WUNLOCK(%struct.llentry* %125)
  br label %127

127:                                              ; preds = %120, %117
  store i32 0, i32* %8, align 4
  br label %146

128:                                              ; preds = %75, %69
  %129 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %130 = icmp ne %struct.llentry** %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.llentry*, %struct.llentry** %16, align 8
  %133 = icmp ne %struct.llentry* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.llentry*, %struct.llentry** %16, align 8
  %136 = call i32 @LLE_WUNLOCK(%struct.llentry* %135)
  br label %137

137:                                              ; preds = %134, %131, %128
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %141 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %145 = call i32 @nd6_resolve_slow(%struct.ifnet* %139, i32 0, %struct.mbuf* %140, %struct.sockaddr_in6* %141, i32* %142, i32* %143, %struct.llentry** %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %138, %127, %56, %51, %33
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ETHER_MAP_IPV6_MULTICAST(i32*, i32*) #1

declare dso_local %struct.llentry* @nd6_lookup(i32*, i32, %struct.ifnet*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @LLE_REQ_LOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_REQ_UNLOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @nd6_resolve_slow(%struct.ifnet*, i32, %struct.mbuf*, %struct.sockaddr_in6*, i32*, i32*, %struct.llentry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
