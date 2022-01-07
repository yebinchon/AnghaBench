; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_gate_softc* }
%struct.g_gate_softc = type { i32 }

@G_GATE_FLAG_DESTROY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@G_GATE_FLAG_WRITEONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_gate_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gate_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_gate_softc*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %50

20:                                               ; preds = %16, %13, %4
  %21 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.g_gate_softc*, %struct.g_gate_softc** %24, align 8
  store %struct.g_gate_softc* %25, %struct.g_gate_softc** %10, align 8
  %26 = load %struct.g_gate_softc*, %struct.g_gate_softc** %10, align 8
  %27 = icmp eq %struct.g_gate_softc* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load %struct.g_gate_softc*, %struct.g_gate_softc** %10, align 8
  %30 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %20
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %28
  %38 = load %struct.g_gate_softc*, %struct.g_gate_softc** %10, align 8
  %39 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @G_GATE_FLAG_WRITEONLY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EPERM, align 4
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %44, %37
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %47, %35, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
