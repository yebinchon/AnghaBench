; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"nfe_intr: interrupt register %x\0A\00", align 1
@NFE_IRQ_LINK = common dso_local global i32 0, align 4
@NFE_PHY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"link state changed\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nfe_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.nfe_softc*
  store %struct.nfe_softc* %10, %struct.nfe_softc** %5, align 8
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %15 = call i32 @NFE_LOCK(%struct.nfe_softc* %14)
  %16 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %17 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %18 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @NFE_READ(%struct.nfe_softc* %16, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %25 = call i32 @nfe_enable_intr(%struct.nfe_softc* %24)
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %27 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %26)
  br label %113

28:                                               ; preds = %2
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %30 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %31 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @NFE_WRITE(%struct.nfe_softc* %29, i32 %32, i32 %33)
  %35 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DPRINTFN(%struct.nfe_softc* %35, i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NFE_IRQ_LINK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %44 = load i32, i32* @NFE_PHY_STATUS, align 4
  %45 = call i64 @NFE_READ(%struct.nfe_softc* %43, i32 %44)
  %46 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %47 = load i32, i32* @NFE_PHY_STATUS, align 4
  %48 = call i32 @NFE_WRITE(%struct.nfe_softc* %46, i32 %47, i32 15)
  %49 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %50 = call i32 @DPRINTF(%struct.nfe_softc* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %42, %28
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @if_getdrvflags(i32 %52)
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %59 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %58)
  %60 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %61 = call i32 @nfe_disable_intr(%struct.nfe_softc* %60)
  br label %113

62:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  %63 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %64 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MCLBYTES, align 8
  %67 = load i64, i64* @ETHER_HDR_LEN, align 8
  %68 = sub nsw i64 %66, %67
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %72 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %73 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nfe_jrxeof(%struct.nfe_softc* %71, i32 %74, i32* null)
  store i32 %75, i32* %8, align 4
  br label %82

76:                                               ; preds = %62
  %77 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %78 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %79 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nfe_rxeof(%struct.nfe_softc* %77, i32 %80, i32* null)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %84 = call i32 @nfe_txeof(%struct.nfe_softc* %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @if_sendq_empty(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @nfe_start_locked(i32 %89)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %93 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %98 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %99 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @NFE_READ(%struct.nfe_softc* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96, %91
  %104 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %105 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %108 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %107, i32 0, i32 1
  %109 = call i32 @taskqueue_enqueue(i32 %106, i32* %108)
  br label %113

110:                                              ; preds = %96
  %111 = load %struct.nfe_softc*, %struct.nfe_softc** %5, align 8
  %112 = call i32 @nfe_enable_intr(%struct.nfe_softc* %111)
  br label %113

113:                                              ; preds = %110, %103, %57, %23
  ret void
}

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #1

declare dso_local i64 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @nfe_enable_intr(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(%struct.nfe_softc*, i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(%struct.nfe_softc*, i8*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @nfe_disable_intr(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_jrxeof(%struct.nfe_softc*, i32, i32*) #1

declare dso_local i32 @nfe_rxeof(%struct.nfe_softc*, i32, i32*) #1

declare dso_local i32 @nfe_txeof(%struct.nfe_softc*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @nfe_start_locked(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
