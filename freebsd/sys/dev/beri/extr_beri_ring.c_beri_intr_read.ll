; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_intr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_intr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_softc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CDES_INT_EN = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @beri_intr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beri_intr_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.beri_softc*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.beri_softc*
  store %struct.beri_softc* %7, %struct.beri_softc** %3, align 8
  %8 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %9 = call i32 @get_control_reg(%struct.beri_softc* %8, i32 0)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = bitcast %struct.TYPE_5__* %4 to i8*
  %12 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CDES_INT_EN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @CDES_INT_EN, align 4
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %25 = call i32 @set_control_reg(%struct.beri_softc* %24, i32 0, %struct.TYPE_5__* %4)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %28 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %31 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %30, i32 0, i32 1
  %32 = load i64, i64* @PZERO, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @selwakeuppri(%struct.TYPE_6__* %31, i64 %33)
  %35 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %36 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @KNOTE_LOCKED(i32* %37, i32 0)
  %39 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %40 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  ret void
}

declare dso_local i32 @get_control_reg(%struct.beri_softc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_control_reg(%struct.beri_softc*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
