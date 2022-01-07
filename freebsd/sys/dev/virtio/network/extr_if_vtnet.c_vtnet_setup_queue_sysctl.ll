; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_queue_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_queue_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32*, i32*, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_setup_queue_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_setup_queue_sysctl(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %13)
  store %struct.sysctl_oid* %14, %struct.sysctl_oid** %5, align 8
  %15 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %16 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %15)
  store %struct.sysctl_oid_list* %16, %struct.sysctl_oid_list** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %42, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %20 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %26 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @vtnet_setup_rxq_sysctl(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32* %31)
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %35 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @vtnet_setup_txq_sysctl(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32* %40)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %17

45:                                               ; preds = %17
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @vtnet_setup_rxq_sysctl(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32*) #1

declare dso_local i32 @vtnet_setup_txq_sysctl(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
