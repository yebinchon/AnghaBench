; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.musbotg_td = type { i32, i64 }

@MUSB2_DEVICE_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"No available channels. Mask: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_softc*, %struct.musbotg_td*, i64)* @musbotg_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_channel_alloc(%struct.musbotg_softc* %0, %struct.musbotg_td* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca %struct.musbotg_td*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %5, align 8
  store %struct.musbotg_td* %1, %struct.musbotg_td** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.musbotg_td*, %struct.musbotg_td** %6, align 8
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %14 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MUSB2_DEVICE_MODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @musbotg_ep_int_set(%struct.musbotg_softc* %19, i32 %20, i32 1)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %109

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %28 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %109

33:                                               ; preds = %26
  %34 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %35 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @musbotg_ep_int_set(%struct.musbotg_softc* %38, i32 %39, i32 1)
  store i32 0, i32* %4, align 4
  br label %109

41:                                               ; preds = %23
  %42 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %43 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %101, %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %45
  %49 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %50 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %101

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.musbotg_td*, %struct.musbotg_td** %6, align 8
  %62 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %65 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %63, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %101

74:                                               ; preds = %60
  br label %90

75:                                               ; preds = %57
  %76 = load %struct.musbotg_td*, %struct.musbotg_td** %6, align 8
  %77 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %80 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %78, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %101

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %94 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @musbotg_ep_int_set(%struct.musbotg_softc* %97, i32 %98, i32 1)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %109

101:                                              ; preds = %88, %73, %56
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %8, align 4
  br label %45

104:                                              ; preds = %45
  %105 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %106 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @DPRINTFN(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %90, %33, %32, %18
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @musbotg_ep_int_set(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
