; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arpresolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arpresolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@LLE_UNLOCKED = common dso_local global i32 0, align 4
@RLLE_VALID = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@RLLE_IFADDR = common dso_local global i32 0, align 4
@LLE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arpresolve(%struct.ifnet* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, i32* %4, i32* %5, %struct.llentry** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.llentry**, align 8
  %16 = alloca %struct.llentry*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mbuf* %2, %struct.mbuf** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.llentry** %6, %struct.llentry*** %15, align 8
  store %struct.llentry* null, %struct.llentry** %16, align 8
  %17 = call i32 (...) @NET_EPOCH_ASSERT()
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32*, i32** %14, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %7
  %23 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %24 = icmp ne %struct.llentry** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.llentry**, %struct.llentry*** %15, align 8
  store %struct.llentry* null, %struct.llentry** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @M_BCAST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %38, i32 %41, i32 %44)
  store i32 0, i32* %8, align 4
  br label %140

46:                                               ; preds = %30
  %47 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @M_MCAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %55 = call %struct.TYPE_2__* @SIN(%struct.sockaddr* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @ETHER_MAP_IP_MULTICAST(i32* %56, i32* %57)
  store i32 0, i32* %8, align 4
  br label %140

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %62 = call i32 @LLTABLE(%struct.ifnet* %61)
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
  %71 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %72 = call %struct.llentry* @lla_lookup(i32 %62, i32 %70, %struct.sockaddr* %71)
  store %struct.llentry* %72, %struct.llentry** %16, align 8
  %73 = load %struct.llentry*, %struct.llentry** %16, align 8
  %74 = icmp ne %struct.llentry* %73, null
  br i1 %74, label %75, label %115

75:                                               ; preds = %69
  %76 = load %struct.llentry*, %struct.llentry** %16, align 8
  %77 = getelementptr inbounds %struct.llentry, %struct.llentry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RLLE_VALID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %75
  %83 = load %struct.llentry*, %struct.llentry** %16, align 8
  %84 = getelementptr inbounds %struct.llentry, %struct.llentry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.llentry*, %struct.llentry** %16, align 8
  %88 = getelementptr inbounds %struct.llentry, %struct.llentry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bcopy(i32 %85, i32* %86, i32 %89)
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load i32, i32* @LLE_VALID, align 4
  %95 = load %struct.llentry*, %struct.llentry** %16, align 8
  %96 = getelementptr inbounds %struct.llentry, %struct.llentry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RLLE_IFADDR, align 4
  %99 = and i32 %97, %98
  %100 = or i32 %94, %99
  %101 = load i32*, i32** %14, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %82
  %103 = load %struct.llentry*, %struct.llentry** %16, align 8
  %104 = call i32 @llentry_mark_used(%struct.llentry* %103)
  %105 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %106 = icmp ne %struct.llentry** %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.llentry*, %struct.llentry** %16, align 8
  %109 = call i32 @LLE_ADDREF(%struct.llentry* %108)
  %110 = load %struct.llentry*, %struct.llentry** %16, align 8
  %111 = load %struct.llentry**, %struct.llentry*** %15, align 8
  store %struct.llentry* %110, %struct.llentry** %111, align 8
  %112 = load %struct.llentry*, %struct.llentry** %16, align 8
  %113 = call i32 @LLE_WUNLOCK(%struct.llentry* %112)
  br label %114

114:                                              ; preds = %107, %102
  store i32 0, i32* %8, align 4
  br label %140

115:                                              ; preds = %75, %69
  %116 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %117 = icmp ne %struct.llentry** %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.llentry*, %struct.llentry** %16, align 8
  %120 = icmp ne %struct.llentry* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.llentry*, %struct.llentry** %16, align 8
  %123 = call i32 @LLE_WUNLOCK(%struct.llentry* %122)
  br label %124

124:                                              ; preds = %121, %118, %115
  %125 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.llentry*, %struct.llentry** %16, align 8
  %128 = icmp eq %struct.llentry* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @LLE_CREATE, align 4
  br label %132

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %135 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.llentry**, %struct.llentry*** %15, align 8
  %139 = call i32 @arpresolve_full(%struct.ifnet* %125, i32 %126, i32 %133, %struct.mbuf* %134, %struct.sockaddr* %135, i32* %136, i32* %137, %struct.llentry** %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %132, %114, %53, %37
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ETHER_MAP_IP_MULTICAST(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @SIN(%struct.sockaddr*) #1

declare dso_local %struct.llentry* @lla_lookup(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE(%struct.ifnet*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @llentry_mark_used(%struct.llentry*) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @arpresolve_full(%struct.ifnet*, i32, i32, %struct.mbuf*, %struct.sockaddr*, i32*, i32*, %struct.llentry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
