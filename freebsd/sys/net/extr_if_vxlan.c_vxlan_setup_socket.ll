; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_setup_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_setup_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32, %struct.vxlan_socket*, i32, %union.vxlan_sockaddr, %union.vxlan_sockaddr, %struct.ifnet* }
%struct.vxlan_socket = type { i32 }
%union.vxlan_sockaddr = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"cannot create socket (error: %d), and no existing socket found\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"network identifier %d already exists in this socket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*)* @vxlan_setup_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_setup_socket(%struct.vxlan_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca %struct.vxlan_socket*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.vxlan_sockaddr*, align 8
  %7 = alloca %union.vxlan_sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  store %struct.vxlan_socket* null, %struct.vxlan_socket** %4, align 8
  %10 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %10, i32 0, i32 6
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %13, i32 0, i32 5
  store %union.vxlan_sockaddr* %14, %union.vxlan_sockaddr** %6, align 8
  %15 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %15, i32 0, i32 4
  store %union.vxlan_sockaddr* %16, %union.vxlan_sockaddr** %7, align 8
  %17 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %18 = call i32 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %28 = call i32 @vxlan_socket_create(%struct.ifnet* %25, i32 %26, %union.vxlan_sockaddr* %27, %struct.vxlan_socket** %4)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %36 = call %struct.vxlan_socket* @vxlan_socket_mc_lookup(%union.vxlan_sockaddr* %35)
  store %struct.vxlan_socket* %36, %struct.vxlan_socket** %4, align 8
  br label %40

37:                                               ; preds = %31
  %38 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %39 = call %struct.vxlan_socket* @vxlan_socket_lookup(%union.vxlan_sockaddr* %38)
  store %struct.vxlan_socket* %39, %struct.vxlan_socket** %4, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %42 = icmp eq %struct.vxlan_socket* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @if_printf(%struct.ifnet* %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %89

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %53 = call i32 @vxlan_setup_multicast(%struct.vxlan_softc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %89

57:                                               ; preds = %51
  %58 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %59 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %60 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %61 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %62 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %64, i32 0, i32 0
  %66 = call i32 @vxlan_socket_mc_add_group(%struct.vxlan_socket* %58, %union.vxlan_sockaddr* %59, %union.vxlan_sockaddr* %60, i32 %63, i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %89

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %73 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %74 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %73, i32 0, i32 2
  store %struct.vxlan_socket* %72, %struct.vxlan_socket** %74, align 8
  %75 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %76 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %77 = call i32 @vxlan_socket_insert_softc(%struct.vxlan_socket* %75, %struct.vxlan_softc* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %82 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %81, i32 0, i32 2
  store %struct.vxlan_socket* null, %struct.vxlan_socket** %82, align 8
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %85 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @if_printf(%struct.ifnet* %83, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %89

88:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %116

89:                                               ; preds = %80, %69, %56, %43
  %90 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %91 = icmp ne %struct.vxlan_socket* %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %94 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %99 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %100 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @vxlan_socket_mc_release_group_by_idx(%struct.vxlan_socket* %98, i32 %101)
  %103 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %104 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %110 = call i32 @vxlan_free_multicast(%struct.vxlan_softc* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %113 = call i32 @vxlan_socket_release(%struct.vxlan_socket* %112)
  br label %114

114:                                              ; preds = %111, %89
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %88
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vxlan_socket_create(%struct.ifnet*, i32, %union.vxlan_sockaddr*, %struct.vxlan_socket**) #1

declare dso_local %struct.vxlan_socket* @vxlan_socket_mc_lookup(%union.vxlan_sockaddr*) #1

declare dso_local %struct.vxlan_socket* @vxlan_socket_lookup(%union.vxlan_sockaddr*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @vxlan_setup_multicast(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_socket_mc_add_group(%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32, i32*) #1

declare dso_local i32 @vxlan_socket_insert_softc(%struct.vxlan_socket*, %struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_socket_mc_release_group_by_idx(%struct.vxlan_socket*, i32) #1

declare dso_local i32 @vxlan_free_multicast(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_socket_release(%struct.vxlan_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
