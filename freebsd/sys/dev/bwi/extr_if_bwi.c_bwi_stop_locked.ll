; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, i32, i64, %struct.bwi_mac*, %struct.TYPE_2__*, i64, i32, i32 }
%struct.bwi_mac = type { i32, %struct.bwi_regwin }
%struct.bwi_regwin = type { i32 }
%struct.TYPE_2__ = type { i64 }

@BWI_F_STOP = common dso_local global i32 0, align 4
@BWI_F_RUNNING = common dso_local global i32 0, align 4
@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@BWI_ALL_INTRS = common dso_local global i32 0, align 4
@BWI_MAC_INTR_MASK = common dso_local global i32 0, align 4
@BWI_MAC_F_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32)* @bwi_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_stop_locked(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwi_regwin*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %11 = call i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc* %10)
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 8
  %14 = call i32 @callout_stop(i32* %13)
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %15, i32 0, i32 7
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @BWI_F_STOP, align 4
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BWI_F_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %2
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %39, i8* %45)
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = bitcast %struct.TYPE_2__* %49 to %struct.bwi_mac*
  store %struct.bwi_mac* %50, %struct.bwi_mac** %5, align 8
  %51 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %52 = load i32, i32* @BWI_ALL_INTRS, align 4
  %53 = call i32 @bwi_disable_intrs(%struct.bwi_softc* %51, i32 %52)
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %55 = load i32, i32* @BWI_MAC_INTR_MASK, align 4
  %56 = call i32 @CSR_READ_4(%struct.bwi_softc* %54, i32 %55)
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %58 = call i32 @bwi_mac_stop(%struct.bwi_mac* %57)
  br label %59

59:                                               ; preds = %31, %2
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %68 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %67, i32 0, i32 4
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %69, i64 %71
  store %struct.bwi_mac* %72, %struct.bwi_mac** %5, align 8
  %73 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %74 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BWI_MAC_F_INITED, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %94

80:                                               ; preds = %66
  %81 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %83 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %82, i32 0, i32 1
  %84 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %81, %struct.bwi_regwin* %83, %struct.bwi_regwin** %9)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %94

88:                                               ; preds = %80
  %89 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %90 = call i32 @bwi_mac_shutdown(%struct.bwi_mac* %89)
  store i32 1, i32* %8, align 4
  %91 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %92 = load %struct.bwi_regwin*, %struct.bwi_regwin** %9, align 8
  %93 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %91, %struct.bwi_regwin* %92, %struct.bwi_regwin** null)
  br label %94

94:                                               ; preds = %88, %87, %79
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %60

97:                                               ; preds = %60
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %102 = call i32 @bwi_bbp_power_off(%struct.bwi_softc* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %107 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %106, i32 0, i32 2
  %108 = call i32 @callout_stop(i32* %107)
  %109 = load i32, i32* @BWI_F_RUNNING, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %112 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  ret void
}

declare dso_local i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_disable_intrs(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_mac_stop(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @bwi_mac_shutdown(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_bbp_power_off(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
