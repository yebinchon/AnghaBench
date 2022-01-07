; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_atu_fetch_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_atu_fetch_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.arswitch_softc = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.arswitch_softc.0*, %struct.TYPE_10__*, i32)* }
%struct.arswitch_softc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @arswitch_atu_fetch_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_atu_fetch_table(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.arswitch_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.arswitch_softc* @device_get_softc(i32 %8)
  store %struct.arswitch_softc* %9, %struct.arswitch_softc** %5, align 8
  %10 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %11 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %10)
  store i32 0, i32* %7, align 4
  %12 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %13 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32 (%struct.arswitch_softc.0*, %struct.TYPE_10__*, i32)*, i32 (%struct.arswitch_softc.0*, %struct.TYPE_10__*, i32)** %14, align 8
  %16 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %17 = bitcast %struct.arswitch_softc* %16 to %struct.arswitch_softc.0*
  %18 = call i32 %15(%struct.arswitch_softc.0* %17, %struct.TYPE_10__* null, i32 0)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %25 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %61

31:                                               ; preds = %29
  %32 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %33 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (%struct.arswitch_softc.0*, %struct.TYPE_10__*, i32)*, i32 (%struct.arswitch_softc.0*, %struct.TYPE_10__*, i32)** %34, align 8
  %36 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %37 = bitcast %struct.arswitch_softc* %36 to %struct.arswitch_softc.0*
  %38 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %39 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = call i32 %35(%struct.arswitch_softc.0* %37, %struct.TYPE_10__* %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %51 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %49, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %48, %31
  br label %19

61:                                               ; preds = %29
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %64 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.arswitch_softc*, %struct.arswitch_softc** %5, align 8
  %67 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
