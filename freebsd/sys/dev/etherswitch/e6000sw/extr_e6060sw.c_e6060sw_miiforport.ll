; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_miiforport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_miiforport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_data = type { i32 }
%struct.e6060sw_softc = type { i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mii_data* (%struct.e6060sw_softc*, i32)* @e6060sw_miiforport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mii_data* @e6060sw_miiforport(%struct.e6060sw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.e6060sw_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.e6060sw_softc* %0, %struct.e6060sw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %4, align 8
  %11 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  store %struct.mii_data* null, %struct.mii_data** %3, align 8
  br label %32

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %4, align 8
  %18 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.mii_data* null, %struct.mii_data** %3, align 8
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %4, align 8
  %24 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mii_data* @device_get_softc(i32 %30)
  store %struct.mii_data* %31, %struct.mii_data** %3, align 8
  br label %32

32:                                               ; preds = %22, %21, %14
  %33 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  ret %struct.mii_data* %33
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
