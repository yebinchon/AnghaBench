; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VV_MD = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*, %struct.thread*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_file(%struct.beri_vtblk_softc* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beri_vtblk_softc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %7 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %8 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %13 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* @LK_EXCLUSIVE, align 4
  %16 = load i32, i32* @LK_RETRY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @vn_lock(%struct.TYPE_4__* %14, i32 %17)
  %19 = load i32, i32* @VV_MD, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %22 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %28 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @VOP_UNLOCK(%struct.TYPE_4__* %29, i32 0)
  %31 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %32 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* @FREAD, align 4
  %35 = load i32, i32* @FWRITE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %38 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = call i32 @vn_close(%struct.TYPE_4__* %33, i32 %36, i32* %39, %struct.thread* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %11
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %11
  %47 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %48 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %47, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %48, align 8
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %51 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %56 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @crfree(i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @vn_lock(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @vn_close(%struct.TYPE_4__*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @crfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
