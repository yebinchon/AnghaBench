; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.bwi_mac = type { i32 }
%struct.bwi_myaddr_bssid = type { i32, i32 }

@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@BWI_ADDR_FILTER_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32*)* @bwi_set_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_set_bssid(%struct.bwi_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca %struct.bwi_myaddr_bssid, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %19, i8* %25)
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = bitcast %struct.TYPE_3__* %29 to %struct.bwi_mac*
  store %struct.bwi_mac* %30, %struct.bwi_mac** %5, align 8
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %32 = load i32, i32* @BWI_ADDR_FILTER_BSSID, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @bwi_set_addr_filter(%struct.bwi_softc* %31, i32 %32, i32* %33)
  %35 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %struct.bwi_myaddr_bssid, %struct.bwi_myaddr_bssid* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bcopy(i32* %38, i32 %40, i32 4)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds %struct.bwi_myaddr_bssid, %struct.bwi_myaddr_bssid* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcopy(i32* %42, i32 %44, i32 4)
  store i32 2, i32* %9, align 4
  %46 = bitcast %struct.bwi_myaddr_bssid* %6 to i32*
  store i32* %46, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %77, %2
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  %59 = load i32, i32* %57, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 8
  %62 = shl i32 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 32, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @TMPLT_WRITE_4(%struct.bwi_mac* %69, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %47

80:                                               ; preds = %47
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_set_addr_filter(%struct.bwi_softc*, i32, i32*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @TMPLT_WRITE_4(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
