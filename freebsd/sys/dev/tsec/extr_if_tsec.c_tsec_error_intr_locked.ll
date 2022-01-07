; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_error_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_error_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@TSEC_REG_IEVENT = common dso_local global i32 0, align 4
@TSEC_IEVENT_RXC = common dso_local global i32 0, align 4
@TSEC_IEVENT_BSY = common dso_local global i32 0, align 4
@TSEC_IEVENT_EBERR = common dso_local global i32 0, align 4
@TSEC_IEVENT_MSRO = common dso_local global i32 0, align 4
@TSEC_IEVENT_BABT = common dso_local global i32 0, align 4
@TSEC_IEVENT_TXC = common dso_local global i32 0, align 4
@TSEC_IEVENT_TXE = common dso_local global i32 0, align 4
@TSEC_IEVENT_LC = common dso_local global i32 0, align 4
@TSEC_IEVENT_CRL = common dso_local global i32 0, align 4
@TSEC_IEVENT_XFUN = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@TSEC_REG_TSTAT = common dso_local global i32 0, align 4
@TSEC_TSTAT_THLT = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"tsec_error_intr(): event flags: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"System bus error occurred duringDMA transaction (flags: 0x%x)\0A\00", align 1
@TSEC_IEVENT_BABR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*, i32)* @tsec_error_intr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_error_intr_locked(%struct.tsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %8 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %7)
  %9 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %10 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %5, align 8
  %12 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %13 = load i32, i32* @TSEC_REG_IEVENT, align 4
  %14 = call i32 @TSEC_READ(%struct.tsec_softc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %16 = load i32, i32* @TSEC_REG_IEVENT, align 4
  %17 = load i32, i32* @TSEC_IEVENT_RXC, align 4
  %18 = load i32, i32* @TSEC_IEVENT_BSY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TSEC_IEVENT_EBERR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TSEC_IEVENT_MSRO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TSEC_IEVENT_BABT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TSEC_IEVENT_TXC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TSEC_IEVENT_TXE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TSEC_IEVENT_LC, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TSEC_IEVENT_CRL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TSEC_IEVENT_XFUN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @TSEC_WRITE(%struct.tsec_softc* %15, i32 %16, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TSEC_IEVENT_TXE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %2
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(%struct.ifnet* %42, i32 %43, i32 1)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TSEC_IEVENT_LC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %52 = call i32 @if_inc_counter(%struct.ifnet* %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %55 = load i32, i32* @TSEC_REG_TSTAT, align 4
  %56 = load i32, i32* @TSEC_TSTAT_THLT, align 4
  %57 = call i32 @TSEC_WRITE(%struct.tsec_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @TSEC_IEVENT_BSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %65 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %66 = call i32 @if_inc_counter(%struct.ifnet* %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IFF_DEBUG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @if_printf(%struct.ifnet* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @TSEC_IEVENT_EBERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @if_printf(%struct.ifnet* %84, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %88 = call i32 @tsec_init_locked(%struct.tsec_softc* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @TSEC_IEVENT_BABT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %96 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %97 = call i32 @if_inc_counter(%struct.ifnet* %95, i32 %96, i32 1)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TSEC_IEVENT_BABR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %105 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %106 = call i32 @if_inc_counter(%struct.ifnet* %104, i32 %105, i32 1)
  br label %107

107:                                              ; preds = %103, %98
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @tsec_init_locked(%struct.tsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
