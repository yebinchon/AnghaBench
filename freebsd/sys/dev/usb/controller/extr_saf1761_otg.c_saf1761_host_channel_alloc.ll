; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32*, i32, i32*, i32, i32* }
%struct.saf1761_otg_td = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %8 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %9 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

14:                                               ; preds = %2
  %15 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %16 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @SAF1761_OTG_PC2UDEV(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %142

24:                                               ; preds = %14
  %25 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %103 [
    i32 129, label %28
    i32 128, label %66
  ]

28:                                               ; preds = %24
  %29 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %33 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  %38 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %39 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %37, %42
  %44 = xor i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ffs(i32 %45)
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 31
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %28
  br label %141

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %58 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 32, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %65 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %142

66:                                               ; preds = %24
  %67 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %68 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %71 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %77 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %75, %80
  %82 = xor i32 %81, -1
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ffs(i32 %83)
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 31
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %66
  br label %141

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = shl i32 1, %93
  %95 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %96 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %102 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  store i32 0, i32* %3, align 4
  br label %142

103:                                              ; preds = %24
  %104 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %105 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %108 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %106, %111
  %113 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %114 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %112, %117
  %119 = xor i32 %118, -1
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ffs(i32 %120)
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %103
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %126, 31
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %103
  br label %141

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 1, %130
  %132 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %133 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 64, %136
  %138 = sext i32 %137 to i64
  %139 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %140 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  store i32 0, i32* %3, align 4
  br label %142

141:                                              ; preds = %128, %91, %53
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %129, %92, %54, %23, %13
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_4__* @SAF1761_OTG_PC2UDEV(i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
