; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i32, i32 (%struct.net_backend*, %struct.iovec*, i32)* }
%struct.iovec = type opaque
%struct.iovec.0 = type { %struct.virtio_net_rxhdr* }
%struct.virtio_net_rxhdr = type { i32 }

@VNET_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netbe_recv(%struct.net_backend* %0, %struct.iovec.0* %1, i32 %2) #0 {
  %4 = alloca %struct.net_backend*, align 8
  %5 = alloca %struct.iovec.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_net_rxhdr*, align 8
  store %struct.net_backend* %0, %struct.net_backend** %4, align 8
  store %struct.iovec.0* %1, %struct.iovec.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %11 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %14 = icmp ne %struct.net_backend* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %22 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %27 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.iovec.0*, %struct.iovec.0** %5, align 8
  %33 = getelementptr inbounds %struct.iovec.0, %struct.iovec.0* %32, i64 0
  %34 = getelementptr inbounds %struct.iovec.0, %struct.iovec.0* %33, i32 0, i32 0
  %35 = load %struct.virtio_net_rxhdr*, %struct.virtio_net_rxhdr** %34, align 8
  store %struct.virtio_net_rxhdr* %35, %struct.virtio_net_rxhdr** %9, align 8
  %36 = load %struct.iovec.0*, %struct.iovec.0** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.iovec.0* @iov_trim(%struct.iovec.0* %36, i32* %6, i32 %37)
  store %struct.iovec.0* %38, %struct.iovec.0** %5, align 8
  %39 = load %struct.virtio_net_rxhdr*, %struct.virtio_net_rxhdr** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memset(%struct.virtio_net_rxhdr* %39, i32 0, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VNET_HDR_LEN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load %struct.virtio_net_rxhdr*, %struct.virtio_net_rxhdr** %9, align 8
  %47 = getelementptr inbounds %struct.virtio_net_rxhdr, %struct.virtio_net_rxhdr* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %25
  br label %49

49:                                               ; preds = %48, %19, %3
  %50 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %51 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %50, i32 0, i32 2
  %52 = load i32 (%struct.net_backend*, %struct.iovec*, i32)*, i32 (%struct.net_backend*, %struct.iovec*, i32)** %51, align 8
  %53 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %54 = load %struct.iovec.0*, %struct.iovec.0** %5, align 8
  %55 = bitcast %struct.iovec.0* %54 to %struct.iovec*
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %52(%struct.net_backend* %53, %struct.iovec* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %49
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.iovec.0* @iov_trim(%struct.iovec.0*, i32*, i32) #1

declare dso_local i32 @memset(%struct.virtio_net_rxhdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
