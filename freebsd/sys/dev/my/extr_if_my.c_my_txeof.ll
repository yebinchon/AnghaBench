; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.TYPE_2__, i64, %struct.ifnet* }
%struct.TYPE_2__ = type { %struct.my_chain*, %struct.my_chain* }
%struct.my_chain = type { %struct.my_chain*, i32* }
%struct.ifnet = type { i32 }

@MY_OWNByNIC = common dso_local global i32 0, align 4
@MY_UNSENT = common dso_local global i32 0, align 4
@MY_TCRRCR = common dso_local global i32 0, align 4
@MY_Enhanced = common dso_local global i32 0, align 4
@MY_TXERR = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@MY_EC = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@MY_LC = common dso_local global i32 0, align 4
@MY_NCRMASK = common dso_local global i32 0, align 4
@MY_NCRShift = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@MY_TSR = common dso_local global i32 0, align 4
@MY_NCRMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_txeof(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca %struct.my_chain*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %6 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %7 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %6)
  %8 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %9 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %12 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %14 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.my_chain*, %struct.my_chain** %15, align 8
  %17 = icmp eq %struct.my_chain* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %137

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %113, %19
  %21 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %22 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.my_chain*, %struct.my_chain** %23, align 8
  %25 = getelementptr inbounds %struct.my_chain, %struct.my_chain* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %120

28:                                               ; preds = %20
  %29 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %30 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.my_chain*, %struct.my_chain** %31, align 8
  store %struct.my_chain* %32, %struct.my_chain** %3, align 8
  %33 = load %struct.my_chain*, %struct.my_chain** %3, align 8
  %34 = call i32 @MY_TXSTATUS(%struct.my_chain* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MY_OWNByNIC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MY_UNSENT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %28
  br label %120

44:                                               ; preds = %39
  %45 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %46 = load i32, i32* @MY_TCRRCR, align 4
  %47 = call i32 @CSR_READ_4(%struct.my_softc* %45, i32 %46)
  %48 = load i32, i32* @MY_Enhanced, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MY_TXERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %59 = call i32 @if_inc_counter(%struct.ifnet* %57, i32 %58, i32 1)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MY_EC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %67 = call i32 @if_inc_counter(%struct.ifnet* %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MY_LC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %76 = call i32 @if_inc_counter(%struct.ifnet* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MY_NCRMASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @MY_NCRShift, align 4
  %85 = ashr i32 %83, %84
  %86 = call i32 @if_inc_counter(%struct.ifnet* %79, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %78, %44
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %90 = call i32 @if_inc_counter(%struct.ifnet* %88, i32 %89, i32 1)
  %91 = load %struct.my_chain*, %struct.my_chain** %3, align 8
  %92 = getelementptr inbounds %struct.my_chain, %struct.my_chain* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @m_freem(i32* %93)
  %95 = load %struct.my_chain*, %struct.my_chain** %3, align 8
  %96 = getelementptr inbounds %struct.my_chain, %struct.my_chain* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %98 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.my_chain*, %struct.my_chain** %99, align 8
  %101 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %102 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load %struct.my_chain*, %struct.my_chain** %103, align 8
  %105 = icmp eq %struct.my_chain* %100, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %87
  %107 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %108 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store %struct.my_chain* null, %struct.my_chain** %109, align 8
  %110 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %111 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store %struct.my_chain* null, %struct.my_chain** %112, align 8
  br label %120

113:                                              ; preds = %87
  %114 = load %struct.my_chain*, %struct.my_chain** %3, align 8
  %115 = getelementptr inbounds %struct.my_chain, %struct.my_chain* %114, i32 0, i32 0
  %116 = load %struct.my_chain*, %struct.my_chain** %115, align 8
  %117 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %118 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store %struct.my_chain* %116, %struct.my_chain** %119, align 8
  br label %20

120:                                              ; preds = %106, %43, %20
  %121 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %122 = load i32, i32* @MY_TCRRCR, align 4
  %123 = call i32 @CSR_READ_4(%struct.my_softc* %121, i32 %122)
  %124 = load i32, i32* @MY_Enhanced, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %129 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %130 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %131 = load i32, i32* @MY_TSR, align 4
  %132 = call i32 @CSR_READ_4(%struct.my_softc* %130, i32 %131)
  %133 = load i32, i32* @MY_NCRMask, align 4
  %134 = and i32 %132, %133
  %135 = call i32 @if_inc_counter(%struct.ifnet* %128, i32 %129, i32 %134)
  br label %136

136:                                              ; preds = %127, %120
  br label %137

137:                                              ; preds = %136, %18
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @MY_TXSTATUS(%struct.my_chain*) #1

declare dso_local i32 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
