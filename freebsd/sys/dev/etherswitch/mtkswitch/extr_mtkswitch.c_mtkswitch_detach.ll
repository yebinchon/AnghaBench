; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, i32*, i32**, i32**, i32 }

@MTKSWITCH_MAX_PHYS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtkswitch_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mtkswitch_softc* @device_get_softc(i32 %5)
  store %struct.mtkswitch_softc* %6, %struct.mtkswitch_softc** %3, align 8
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %7, i32 0, i32 4
  %9 = call i32 @callout_drain(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MTKSWITCH_MAX_PHYS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @device_delete_child(i32 %24, i32* %31)
  br label %33

33:                                               ; preds = %23, %14
  %34 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @if_free(i32* %49)
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @bus_generic_detach(i32 %65)
  %67 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %67, i32 0, i32 0
  %69 = call i32 @mtx_destroy(i32* %68)
  ret i32 0
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

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
