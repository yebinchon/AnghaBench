; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_atu_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_atu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque

@MA_OWNED = common dso_local global i32 0, align 4
@MTKSWITCH_ATC = common dso_local global i32 0, align 4
@ATC_BUSY = common dso_local global i32 0, align 4
@ATC_AC_MAT_NON_STATIC_MACS = common dso_local global i32 0, align 4
@ATC_AC_CMD_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*)* @mtkswitch_atu_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_atu_flush(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  %3 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %3, i32 %4)
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %9, align 8
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %12 = bitcast %struct.mtkswitch_softc* %11 to %struct.mtkswitch_softc.0*
  %13 = load i32, i32* @MTKSWITCH_ATC, align 4
  %14 = call i32 %10(%struct.mtkswitch_softc.0* %12, i32 %13)
  %15 = load i32, i32* @ATC_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %22, align 8
  %24 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %25 = bitcast %struct.mtkswitch_softc* %24 to %struct.mtkswitch_softc.1*
  %26 = load i32, i32* @MTKSWITCH_ATC, align 4
  %27 = load i32, i32* @ATC_BUSY, align 4
  %28 = load i32, i32* @ATC_AC_MAT_NON_STATIC_MACS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATC_AC_CMD_CLEAN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 %23(%struct.mtkswitch_softc.1* %25, i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %45, %19
  %34 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %36, align 8
  %38 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %39 = bitcast %struct.mtkswitch_softc* %38 to %struct.mtkswitch_softc.0*
  %40 = load i32, i32* @MTKSWITCH_ATC, align 4
  %41 = call i32 %37(%struct.mtkswitch_softc.0* %39, i32 %40)
  %42 = load i32, i32* @ATC_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %33

46:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
