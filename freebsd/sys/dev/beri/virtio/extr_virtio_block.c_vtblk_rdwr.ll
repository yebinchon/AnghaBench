; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_rdwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.iovec = type { i32 }
%struct.mount = type { i32 }
%struct.uio = type { i32, i32, i32, i32, i32, i32, %struct.iovec* }

@.str = private unnamed_addr constant [16 x i8] c"file not opened\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*, %struct.iovec*, i32, i32, i32, i32)* @vtblk_rdwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_rdwr(%struct.beri_vtblk_softc* %0, %struct.iovec* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.beri_vtblk_softc*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = call i32 @bzero(%struct.uio* %15, i32 32)
  %18 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %7, align 8
  %19 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %18, i32 0, i32 1
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %13, align 8
  %21 = load %struct.vnode*, %struct.vnode** %13, align 8
  %22 = icmp ne %struct.vnode* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.iovec*, %struct.iovec** %8, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %25, %struct.iovec** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @UIO_SYSSPACE, align 4
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @curthread, align 4
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %6
  %42 = load %struct.vnode*, %struct.vnode** %13, align 8
  %43 = load i32, i32* @LK_EXCLUSIVE, align 4
  %44 = load i32, i32* @LK_RETRY, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vn_lock(%struct.vnode* %42, i32 %45)
  %47 = load %struct.vnode*, %struct.vnode** %13, align 8
  %48 = load i32, i32* @IO_DIRECT, align 4
  %49 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %7, align 8
  %50 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @VOP_READ(%struct.vnode* %47, %struct.uio* %15, i32 %48, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.vnode*, %struct.vnode** %13, align 8
  %54 = call i32 @VOP_UNLOCK(%struct.vnode* %53, i32 0)
  br label %74

55:                                               ; preds = %6
  %56 = load %struct.vnode*, %struct.vnode** %13, align 8
  %57 = load i32, i32* @V_WAIT, align 4
  %58 = call i32 @vn_start_write(%struct.vnode* %56, %struct.mount** %14, i32 %57)
  %59 = load %struct.vnode*, %struct.vnode** %13, align 8
  %60 = load i32, i32* @LK_EXCLUSIVE, align 4
  %61 = load i32, i32* @LK_RETRY, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @vn_lock(%struct.vnode* %59, i32 %62)
  %64 = load %struct.vnode*, %struct.vnode** %13, align 8
  %65 = load i32, i32* @IO_SYNC, align 4
  %66 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %7, align 8
  %67 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @VOP_WRITE(%struct.vnode* %64, %struct.uio* %15, i32 %65, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load %struct.vnode*, %struct.vnode** %13, align 8
  %71 = call i32 @VOP_UNLOCK(%struct.vnode* %70, i32 0)
  %72 = load %struct.mount*, %struct.mount** %14, align 8
  %73 = call i32 @vn_finished_write(%struct.mount* %72)
  br label %74

74:                                               ; preds = %55, %41
  %75 = load i32, i32* %16, align 4
  ret i32 %75
}

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
