; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32 }

@PCATCH = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"prd\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtblk_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.beri_vtblk_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.beri_vtblk_softc*
  store %struct.beri_vtblk_softc* %6, %struct.beri_vtblk_softc** %3, align 8
  %7 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %8 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %7, i32 0, i32 0
  %9 = call i32 @sx_xlock(i32* %8)
  br label %10

10:                                               ; preds = %10, %1
  %11 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %12 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %13 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @PCATCH, align 4
  %15 = load i32, i32* @PZERO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @hz, align 4
  %18 = call i32 @msleep(%struct.beri_vtblk_softc* %11, i32* %13, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %20 = call i32 @vtblk_notify(%struct.beri_vtblk_softc* %19)
  br label %10
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @msleep(%struct.beri_vtblk_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @vtblk_notify(%struct.beri_vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
