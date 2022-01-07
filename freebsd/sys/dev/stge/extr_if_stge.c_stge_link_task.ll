; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_link_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_link_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@MC_DuplexSelect = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@MC_RxFlowControlEnable = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@MC_TxFlowControlEnable = common dso_local global i32 0, align 4
@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@STGE_AsicCtrl = common dso_local global i32 0, align 4
@AC_TxReset = common dso_local global i32 0, align 4
@AC_RxReset = common dso_local global i32 0, align 4
@STGE_TIMEOUT = common dso_local global i32 0, align 4
@AC_ResetBusy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reset failed to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @stge_link_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_link_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stge_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.stge_softc*
  store %struct.stge_softc* %11, %struct.stge_softc** %5, align 8
  %12 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %13 = call i32 @STGE_LOCK(%struct.stge_softc* %12)
  %14 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %15 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mii_data* @device_get_softc(i32 %16)
  store %struct.mii_data* %17, %struct.mii_data** %6, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFM_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %26 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IFM_SUBTYPE(i32 %27)
  %29 = load i64, i64* @IFM_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %33 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %37 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %40 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %42 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_GMASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @IFM_FDX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @MC_DuplexSelect, align 4
  %51 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %52 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %38
  %56 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFM_GMASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32, i32* @MC_RxFlowControlEnable, align 4
  %66 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %67 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %72 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFM_GMASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load i32, i32* @MC_TxFlowControlEnable, align 4
  %81 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %82 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %70
  %86 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %87 = load i32, i32* @STGE_MACCtrl, align 4
  %88 = call i32 @CSR_READ_4(%struct.stge_softc* %86, i32 %87)
  %89 = load i32, i32* @MC_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %8, align 4
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @MC_DuplexSelect, align 4
  %92 = load i32, i32* @MC_RxFlowControlEnable, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @MC_TxFlowControlEnable, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %100 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %105 = load i32, i32* @STGE_MACCtrl, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @CSR_WRITE_4(%struct.stge_softc* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %110 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %108, %111
  %113 = load i32, i32* @MC_DuplexSelect, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %156

116:                                              ; preds = %85
  %117 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %118 = load i32, i32* @STGE_AsicCtrl, align 4
  %119 = call i32 @CSR_READ_4(%struct.stge_softc* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @AC_TxReset, align 4
  %121 = load i32, i32* @AC_RxReset, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %126 = load i32, i32* @STGE_AsicCtrl, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @CSR_WRITE_4(%struct.stge_softc* %125, i32 %126, i32 %127)
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %143, %116
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @STGE_TIMEOUT, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = call i32 @DELAY(i32 100)
  %135 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %136 = load i32, i32* @STGE_AsicCtrl, align 4
  %137 = call i32 @CSR_READ_4(%struct.stge_softc* %135, i32 %136)
  %138 = load i32, i32* @AC_ResetBusy, align 4
  %139 = and i32 %137, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %146

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %129

146:                                              ; preds = %141, %129
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @STGE_TIMEOUT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %152 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %85
  %157 = load %struct.stge_softc*, %struct.stge_softc** %5, align 8
  %158 = call i32 @STGE_UNLOCK(%struct.stge_softc* %157)
  ret void
}

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
