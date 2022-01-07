; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32, i32, i32, i32, i32*, i32**, i64* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtl8366rb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366rb_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %5)
  store %struct.rtl8366rb_softc* %6, %struct.rtl8366rb_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %7
  %14 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %14, i32 0, i32 6
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %24, i32 0, i32 6
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @device_delete_child(i32 %23, i64 %30)
  br label %32

32:                                               ; preds = %22, %13
  %33 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %33, i32 0, i32 5
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %42, i32 0, i32 5
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @if_free(i32* %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %52 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %7

63:                                               ; preds = %7
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @bus_generic_detach(i32 %64)
  %66 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %67 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %66, i32 0, i32 3
  %68 = call i32 @callout_drain(i32* %67)
  %69 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %69, i32 0, i32 2
  %71 = call i32 @mtx_destroy(i32* %70)
  %72 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %73 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %72, i32 0, i32 1
  %74 = call i32 @mtx_destroy(i32* %73)
  ret i32 0
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
