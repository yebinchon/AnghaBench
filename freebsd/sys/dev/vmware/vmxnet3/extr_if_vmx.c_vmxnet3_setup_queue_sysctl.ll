; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_queue_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_queue_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*)* @vmxnet3_setup_queue_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_setup_queue_sysctl(%struct.vmxnet3_softc* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid_list* %2) #0 {
  %4 = alloca %struct.vmxnet3_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid_list* %2, %struct.sysctl_oid_list** %6, align 8
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %27 = call i32 @vmxnet3_setup_txq_sysctl(i32* %24, %struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %12

31:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %47 = call i32 @vmxnet3_setup_rxq_sysctl(i32* %44, %struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %55 = call i32 @vmxnet3_setup_debug_sysctl(%struct.vmxnet3_softc* %52, %struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54)
  ret void
}

declare dso_local i32 @vmxnet3_setup_txq_sysctl(i32*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*) #1

declare dso_local i32 @vmxnet3_setup_rxq_sysctl(i32*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*) #1

declare dso_local i32 @vmxnet3_setup_debug_sysctl(%struct.vmxnet3_softc*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
