; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.vtblk_softc* }
%struct.vtblk_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @vtblk_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_dump(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.disk*, align 8
  %13 = alloca %struct.vtblk_softc*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.disk*
  store %struct.disk* %16, %struct.disk** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.disk*, %struct.disk** %12, align 8
  %18 = getelementptr inbounds %struct.disk, %struct.disk* %17, i32 0, i32 0
  %19 = load %struct.vtblk_softc*, %struct.vtblk_softc** %18, align 8
  store %struct.vtblk_softc* %19, %struct.vtblk_softc** %13, align 8
  %20 = icmp eq %struct.vtblk_softc* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %6, align 4
  br label %52

23:                                               ; preds = %5
  %24 = load %struct.vtblk_softc*, %struct.vtblk_softc** %13, align 8
  %25 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %24)
  %26 = load %struct.vtblk_softc*, %struct.vtblk_softc** %13, align 8
  %27 = call i32 @vtblk_dump_quiesce(%struct.vtblk_softc* %26)
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.vtblk_softc*, %struct.vtblk_softc** %13, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @vtblk_dump_write(%struct.vtblk_softc* %31, i8* %32, i64 %33, i64 %34)
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %36
  %46 = load %struct.vtblk_softc*, %struct.vtblk_softc** %13, align 8
  %47 = call i32 @vtblk_dump_complete(%struct.vtblk_softc* %46)
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = load %struct.vtblk_softc*, %struct.vtblk_softc** %13, align 8
  %50 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %49)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_dump_quiesce(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_dump_write(%struct.vtblk_softc*, i8*, i64, i64) #1

declare dso_local i32 @vtblk_dump_complete(%struct.vtblk_softc*) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
