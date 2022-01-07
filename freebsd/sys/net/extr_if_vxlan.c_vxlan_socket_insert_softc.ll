; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_insert_softc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_insert_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket = type { i32* }
%struct.vxlan_softc = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@vxl_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %struct.vxlan_softc*)* @vxlan_socket_insert_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_insert_softc(%struct.vxlan_socket* %0, %struct.vxlan_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_socket*, align 8
  %5 = alloca %struct.vxlan_softc*, align 8
  %6 = alloca %struct.vxlan_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %4, align 8
  store %struct.vxlan_softc* %1, %struct.vxlan_softc** %5, align 8
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %10 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @VXLAN_SO_VNI_HASH(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %15 = call i32 @VXLAN_SO_WLOCK(%struct.vxlan_socket* %14)
  %16 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.vxlan_softc* @vxlan_socket_lookup_softc_locked(%struct.vxlan_socket* %16, i64 %17)
  store %struct.vxlan_softc* %18, %struct.vxlan_softc** %6, align 8
  %19 = load %struct.vxlan_softc*, %struct.vxlan_softc** %6, align 8
  %20 = icmp ne %struct.vxlan_softc* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %23 = call i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket* %22)
  %24 = load %struct.vxlan_softc*, %struct.vxlan_softc** %6, align 8
  %25 = call i32 @vxlan_release(%struct.vxlan_softc* %24)
  %26 = load i32, i32* @EEXIST, align 4
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %29 = call i32 @VXLAN_ACQUIRE(%struct.vxlan_softc* %28)
  %30 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %31 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %36 = load i32, i32* @vxl_entry, align 4
  %37 = call i32 @LIST_INSERT_HEAD(i32* %34, %struct.vxlan_softc* %35, i32 %36)
  %38 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %39 = call i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @VXLAN_SO_VNI_HASH(i64) #1

declare dso_local i32 @VXLAN_SO_WLOCK(%struct.vxlan_socket*) #1

declare dso_local %struct.vxlan_softc* @vxlan_socket_lookup_softc_locked(%struct.vxlan_socket*, i64) #1

declare dso_local i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket*) #1

declare dso_local i32 @vxlan_release(%struct.vxlan_softc*) #1

declare dso_local i32 @VXLAN_ACQUIRE(%struct.vxlan_softc*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.vxlan_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
