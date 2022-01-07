; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_setup_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_setup_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %union.vxlan_sockaddr }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%union.vxlan_sockaddr = type { i32 }

@M_VXLAN = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*)* @vxlan_setup_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_setup_multicast(%struct.vxlan_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca %union.vxlan_sockaddr*, align 8
  %5 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  %6 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %6, i32 0, i32 5
  store %union.vxlan_sockaddr* %7, %union.vxlan_sockaddr** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %17 = call i32 @vxlan_setup_multicast_interface(%struct.vxlan_softc* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %4, align 8
  %25 = call i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i32, i32* @M_VXLAN, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @malloc(i32 4, i32 %28, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_3__*
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %34, i32 0, i32 4
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %47 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %51 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 4
  br label %82

54:                                               ; preds = %23
  %55 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %4, align 8
  %56 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32, i32* @M_VXLAN, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @malloc(i32 4, i32 %59, i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_4__*
  %65 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %66 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %65, i32 0, i32 2
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %66, align 8
  %67 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %68 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %71 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %75 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %78 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %58, %54
  br label %82

82:                                               ; preds = %81, %27
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %20
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @vxlan_setup_multicast_interface(%struct.vxlan_softc*) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
