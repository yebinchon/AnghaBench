; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_peer_spad_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_peer_spad_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ntb_plx_peer_spad_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_peer_spad_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_plx_softc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ntb_plx_softc* @device_get_softc(i32 %10)
  store %struct.ntb_plx_softc* %11, %struct.ntb_plx_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %14 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %17 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  %20 = icmp uge i32 %12, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %75

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %26 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %31 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = mul i32 %33, 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %9, align 8
  br label %49

37:                                               ; preds = %23
  %38 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %39 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %43 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub i32 %41, %44
  %46 = mul i32 %45, 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %40, %47
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %37, %29
  %50 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %51 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %56 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %59 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bus_write_4(i32 %63, i64 %64, i32 %65)
  br label %74

67:                                               ; preds = %49
  %68 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %69 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @bus_write_4(i32 %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %54
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
