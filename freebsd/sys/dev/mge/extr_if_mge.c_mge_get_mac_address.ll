; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@MGE_MAC_ADDR_L = common dso_local global i32 0, align 4
@MGE_MAC_ADDR_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, i64*)* @mge_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_get_mac_address(%struct.mge_softc* %0, i64* %1) #0 {
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %14 = bitcast i64* %13 to i8*
  %15 = call i32 @OF_getprop(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14, i32 6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %19

33:                                               ; preds = %28, %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %38 = load i64*, i64** %4, align 8
  %39 = call i32 @bcopy(i64* %37, i64* %38, i32 6)
  br label %82

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %43 = load i32, i32* @MGE_MAC_ADDR_L, align 4
  %44 = call i32 @MGE_READ(%struct.mge_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %46 = load i32, i32* @MGE_MAC_ADDR_H, align 4
  %47 = call i32 @MGE_READ(%struct.mge_softc* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, -16777216
  %50 = lshr i32 %49, 24
  %51 = zext i32 %50 to i64
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 16711680
  %56 = ashr i32 %55, 16
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 65280
  %73 = ashr i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %4, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 4
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 255
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

declare dso_local i32 @MGE_READ(%struct.mge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
