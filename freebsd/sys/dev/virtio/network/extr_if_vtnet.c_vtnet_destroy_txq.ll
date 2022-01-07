; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_destroy_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_destroy_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i32, i32, i32*, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_txq*)* @vtnet_destroy_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_destroy_txq(%struct.vtnet_txq* %0) #0 {
  %2 = alloca %struct.vtnet_txq*, align 8
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %2, align 8
  %3 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %4 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %3, i32 0, i32 4
  store i32* null, i32** %4, align 8
  %5 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %6 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %8 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %13 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @sglist_free(i32* %14)
  %16 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %17 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %20 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %25 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = call i32 @buf_ring_free(i32* %26, i32 %27)
  %29 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %30 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %33 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %32, i32 0, i32 1
  %34 = call i64 @mtx_initialized(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %38 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %37, i32 0, i32 1
  %39 = call i32 @mtx_destroy(i32* %38)
  br label %40

40:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @sglist_free(i32*) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
