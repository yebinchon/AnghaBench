; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_kqread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_kqread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.beri_softc* }
%struct.beri_softc = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CDES_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @beri_kqread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_kqread(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.beri_softc*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.knote*, %struct.knote** %4, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 1
  %12 = load %struct.beri_softc*, %struct.beri_softc** %11, align 8
  store %struct.beri_softc* %12, %struct.beri_softc** %6, align 8
  %13 = load %struct.beri_softc*, %struct.beri_softc** %6, align 8
  %14 = call i64 @get_control_reg(%struct.beri_softc* %13, i32 0)
  %15 = bitcast %struct.TYPE_5__* %9 to i64*
  store i64 %14, i64* %15, align 4
  %16 = bitcast %struct.TYPE_5__* %7 to i8*
  %17 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = load %struct.beri_softc*, %struct.beri_softc** %6, align 8
  %19 = call i32 @get_stock(%struct.beri_softc* %18, i32 0, %struct.TYPE_5__* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.knote*, %struct.knote** %4, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 1, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @CDES_INT_EN, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load %struct.beri_softc*, %struct.beri_softc** %6, align 8
  %35 = call i32 @set_control_reg(%struct.beri_softc* %34, i32 0, %struct.TYPE_5__* %7)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @get_control_reg(%struct.beri_softc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_stock(%struct.beri_softc*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @set_control_reg(%struct.beri_softc*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
