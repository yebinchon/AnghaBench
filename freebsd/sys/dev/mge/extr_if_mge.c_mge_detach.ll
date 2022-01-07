; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mge_softc = type { i32, i32, i32, i32*, i64, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not release %s\0A\00", align 1
@mge_intrs = common dso_local global %struct.TYPE_2__* null, align 8
@res_spec = common dso_local global i32 0, align 4
@sx_smi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mge_softc* @device_get_softc(i32 %6)
  store %struct.mge_softc* %7, %struct.mge_softc** %3, align 8
  %8 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @mge_shutdown(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %16, i32 0, i32 6
  %18 = call i32 @callout_drain(i32* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %74, %15
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %19
  %26 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %74

35:                                               ; preds = %25
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bus_teardown_intr(i32 %36, i32 %44, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %35
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mge_intrs, align 8
  %58 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 0, %62 ], [ %65, %63 ]
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %35
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ether_ifdetach(i64 %85)
  %87 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @if_free(i64 %89)
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %93 = call i32 @mge_free_dma(%struct.mge_softc* %92)
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @res_spec, align 4
  %96 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resources(i32 %94, i32 %95, i32* %98)
  %100 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %101 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %100, i32 0, i32 2
  %102 = call i32 @mtx_destroy(i32* %101)
  %103 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %104 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %103, i32 0, i32 1
  %105 = call i32 @mtx_destroy(i32* %104)
  %106 = load i32, i32* %2, align 4
  %107 = call i64 @device_get_unit(i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %91
  %110 = call i32 @sx_destroy(i32* @sx_smi)
  br label %111

111:                                              ; preds = %109, %91
  ret i32 0
}

declare dso_local %struct.mge_softc* @device_get_softc(i32) #1

declare dso_local i32 @mge_shutdown(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ether_ifdetach(i64) #1

declare dso_local i32 @if_free(i64) #1

declare dso_local i32 @mge_free_dma(%struct.mge_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
