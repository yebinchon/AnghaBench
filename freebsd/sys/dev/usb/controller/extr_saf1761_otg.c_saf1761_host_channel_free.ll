; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_channel_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32, i32*, i32, i32, i32*, i32, i32, i32* }
%struct.saf1761_otg_td = type { i64, i32 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_INT_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@SOTG_ISO_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@SOTG_ATL_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_host_channel_free(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca %struct.saf1761_otg_td*, align 8
  %5 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %3, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %4, align 8
  %6 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %7 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %144

12:                                               ; preds = %2
  %13 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %14 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %99 [
    i32 129, label %16
    i32 128, label %58
  ]

16:                                               ; preds = %12
  %17 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %18 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 32
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %23 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %24 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %29 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %36 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %48 = load i32, i32* @SOTG_INT_PTD_SKIP_PTD, align 4
  %49 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %50 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, -1
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %47, i32 %48, i32 %56)
  br label %141

58:                                               ; preds = %12
  %59 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %60 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %64 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %65 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %70 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %5, align 4
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %77 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %5, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %83 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %89 = load i32, i32* @SOTG_ISO_PTD_SKIP_PTD, align 4
  %90 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %91 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = xor i32 %92, -1
  %94 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %95 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  %98 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %88, i32 %89, i32 %97)
  br label %141

99:                                               ; preds = %12
  %100 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %101 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 64
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %106 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %4, align 8
  %107 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %5, align 4
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %112 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %5, align 4
  %116 = shl i32 1, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %119 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %5, align 4
  %123 = shl i32 1, %122
  %124 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %125 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %131 = load i32, i32* @SOTG_ATL_PTD_SKIP_PTD, align 4
  %132 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %133 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = xor i32 %134, -1
  %136 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %137 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %135, %138
  %140 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %130, i32 %131, i32 %139)
  br label %141

141:                                              ; preds = %99, %58, %16
  %142 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %143 = call i32 @saf1761_otg_enable_psof(%struct.saf1761_otg_softc* %142, i32 1)
  br label %144

144:                                              ; preds = %141, %11
  ret void
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @saf1761_otg_enable_psof(%struct.saf1761_otg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
