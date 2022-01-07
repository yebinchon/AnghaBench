; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_dequeue_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_dequeue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32* }

@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDO_AUX_OUTFULL = common dso_local global i32 0, align 4
@FIFOSZ = common dso_local global i32 0, align 4
@KBDO_KBD_OUTFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atkbdc_softc*, i32*)* @atkbdc_dequeue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbdc_dequeue_data(%struct.atkbdc_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 4
  %7 = call i32 @pthread_mutex_isowned_np(i32* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ps2mouse_read(i32 %11, i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ps2mouse_fifocnt(i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %29 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %43

36:                                               ; preds = %21
  %37 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %27
  %44 = load i32, i32* @KBDO_AUX_OUTFULL, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %15
  %51 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %52 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %51)
  br label %129

53:                                               ; preds = %2
  %54 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %53
  %60 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %72 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  %76 = load i32, i32* @FIFOSZ, align 4
  %77 = sext i32 %76 to i64
  %78 = urem i64 %75, %77
  %79 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %80 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %88 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %59
  %93 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @KBDO_KBD_OUTFULL, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %102 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %92, %59
  %106 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %107 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %106)
  br label %108

108:                                              ; preds = %105, %53
  %109 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %110 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ps2mouse_fifocnt(i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %116 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %122 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %126 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %50, %120, %114, %108
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i64 @ps2mouse_read(i32, i32*) #1

declare dso_local i64 @ps2mouse_fifocnt(i32) #1

declare dso_local i32 @atkbdc_poll(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
