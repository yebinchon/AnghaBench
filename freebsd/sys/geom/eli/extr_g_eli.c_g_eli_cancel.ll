; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_softc = type { i32, i32 }
%struct.bio = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@G_ELI_NEW_BIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Not new bio when canceling (bp=%p).\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_eli_softc*)* @g_eli_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_cancel(%struct.g_eli_softc* %0) #0 {
  %2 = alloca %struct.g_eli_softc*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.g_eli_softc* %0, %struct.g_eli_softc** %2, align 8
  %4 = load %struct.g_eli_softc*, %struct.g_eli_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.g_eli_softc*, %struct.g_eli_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %9, i32 0, i32 0
  %11 = call %struct.bio* @bioq_takefirst(i32* %10)
  store %struct.bio* %11, %struct.bio** %3, align 8
  %12 = icmp ne %struct.bio* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @G_ELI_NEW_BIO, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = bitcast %struct.bio* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = load i32, i32* @ENXIO, align 4
  %25 = call i32 @g_io_deliver(%struct.bio* %23, i32 %24)
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
