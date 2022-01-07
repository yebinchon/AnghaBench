; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, i32, %struct.TYPE_2__, i32*, i32**, i32**, i32 }
%struct.TYPE_2__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arswitch_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.arswitch_softc* @device_get_softc(i32 %5)
  store %struct.arswitch_softc* %6, %struct.arswitch_softc** %3, align 8
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %8 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %7, i32 0, i32 6
  %9 = call i32 @callout_drain(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %63, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %13 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %18 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %17, i32 0, i32 5
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %28 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %27, i32 0, i32 5
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @device_delete_child(i32 %26, i32* %33)
  br label %35

35:                                               ; preds = %25, %16
  %36 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %37 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %36, i32 0, i32 4
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %46 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %45, i32 0, i32 4
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @if_free(i32* %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %55 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @M_DEVBUF, align 4
  %62 = call i32 @free(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %10

66:                                               ; preds = %10
  %67 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %68 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(i32 %70, i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @bus_generic_detach(i32 %73)
  %75 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %76 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %75, i32 0, i32 1
  %77 = call i32 @mtx_destroy(i32* %76)
  ret i32 0
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
