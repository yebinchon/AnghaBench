; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ifmedia_upd_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ifmedia_upd_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, %struct.ifmedia }
%struct.ifmedia = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TI_GLNK_RX_FLOWCTL_Y = common dso_local global i32 0, align 4
@TI_GCR_GLINK = common dso_local global i32 0, align 4
@TI_GLNK_PREF = common dso_local global i32 0, align 4
@TI_GLNK_1000MB = common dso_local global i32 0, align 4
@TI_GLNK_FULL_DUPLEX = common dso_local global i32 0, align 4
@TI_GLNK_AUTONEGENB = common dso_local global i32 0, align 4
@TI_GLNK_ENB = common dso_local global i32 0, align 4
@TI_LNK_RX_FLOWCTL_Y = common dso_local global i32 0, align 4
@TI_GCR_LINK = common dso_local global i32 0, align 4
@TI_LNK_100MB = common dso_local global i32 0, align 4
@TI_LNK_10MB = common dso_local global i32 0, align 4
@TI_LNK_FULL_DUPLEX = common dso_local global i32 0, align 4
@TI_LNK_HALF_DUPLEX = common dso_local global i32 0, align 4
@TI_LNK_AUTONEGENB = common dso_local global i32 0, align 4
@TI_LNK_ENB = common dso_local global i32 0, align 4
@TI_CMD_LINK_NEGOTIATION = common dso_local global i32 0, align 4
@TI_CMD_CODE_NEGOTIATE_BOTH = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@TI_CMD_CODE_NEGOTIATE_GIGABIT = common dso_local global i32 0, align 4
@TI_LNK_PREF = common dso_local global i32 0, align 4
@TI_CMD_CODE_NEGOTIATE_10_100 = common dso_local global i32 0, align 4
@TI_GLNK_TX_FLOWCTL_Y = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i32 0, align 4
@TI_LNK_TX_FLOWCTL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_ifmedia_upd_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ifmedia_upd_locked(%struct.ti_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.ifmedia*, align 8
  %5 = alloca %struct.ti_cmd_desc, align 4
  %6 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  %7 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %7, i32 0, i32 1
  store %struct.ifmedia* %8, %struct.ifmedia** %4, align 8
  %9 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %10 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IFM_TYPE(i32 %11)
  %13 = load i64, i64* @IFM_ETHER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %146

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %18 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %19 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IFM_SUBTYPE(i32 %20)
  switch i32 %21, label %145 [
    i32 128, label %22
    i32 134, label %58
    i32 133, label %58
    i32 132, label %89
    i32 130, label %89
    i32 131, label %89
    i32 129, label %89
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* @TI_GLNK_RX_FLOWCTL_Y, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %25 = load i32, i32* @TI_GCR_GLINK, align 4
  %26 = load i32, i32* @TI_GLNK_PREF, align 4
  %27 = load i32, i32* @TI_GLNK_1000MB, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TI_GLNK_FULL_DUPLEX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TI_GLNK_AUTONEGENB, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TI_GLNK_ENB, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @CSR_WRITE_4(%struct.ti_softc* %24, i32 %25, i32 %36)
  %38 = load i32, i32* @TI_LNK_RX_FLOWCTL_Y, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %40 = load i32, i32* @TI_GCR_LINK, align 4
  %41 = load i32, i32* @TI_LNK_100MB, align 4
  %42 = load i32, i32* @TI_LNK_10MB, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TI_LNK_FULL_DUPLEX, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TI_LNK_HALF_DUPLEX, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TI_LNK_AUTONEGENB, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TI_LNK_ENB, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @CSR_WRITE_4(%struct.ti_softc* %39, i32 %40, i32 %53)
  %55 = load i32, i32* @TI_CMD_LINK_NEGOTIATION, align 4
  %56 = load i32, i32* @TI_CMD_CODE_NEGOTIATE_BOTH, align 4
  %57 = call i32 @TI_DO_CMD(i32 %55, i32 %56, i32 0)
  br label %145

58:                                               ; preds = %17, %17
  %59 = load i32, i32* @TI_GLNK_RX_FLOWCTL_Y, align 4
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %61 = load i32, i32* @TI_GCR_GLINK, align 4
  %62 = load i32, i32* @TI_GLNK_PREF, align 4
  %63 = load i32, i32* @TI_GLNK_1000MB, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TI_GLNK_ENB, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @CSR_WRITE_4(%struct.ti_softc* %60, i32 %61, i32 %68)
  %70 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %71 = load i32, i32* @TI_GCR_LINK, align 4
  %72 = call i32 @CSR_WRITE_4(%struct.ti_softc* %70, i32 %71, i32 0)
  %73 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %74 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IFM_GMASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @IFM_FDX, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %58
  %81 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %82 = load i32, i32* @TI_GCR_GLINK, align 4
  %83 = load i32, i32* @TI_GLNK_FULL_DUPLEX, align 4
  %84 = call i32 @TI_SETBIT(%struct.ti_softc* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %58
  %86 = load i32, i32* @TI_CMD_LINK_NEGOTIATION, align 4
  %87 = load i32, i32* @TI_CMD_CODE_NEGOTIATE_GIGABIT, align 4
  %88 = call i32 @TI_DO_CMD(i32 %86, i32 %87, i32 0)
  br label %145

89:                                               ; preds = %17, %17, %17, %17
  %90 = load i32, i32* @TI_LNK_RX_FLOWCTL_Y, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %92 = load i32, i32* @TI_GCR_GLINK, align 4
  %93 = call i32 @CSR_WRITE_4(%struct.ti_softc* %91, i32 %92, i32 0)
  %94 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %95 = load i32, i32* @TI_GCR_LINK, align 4
  %96 = load i32, i32* @TI_LNK_ENB, align 4
  %97 = load i32, i32* @TI_LNK_PREF, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @CSR_WRITE_4(%struct.ti_softc* %94, i32 %95, i32 %100)
  %102 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %103 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @IFM_SUBTYPE(i32 %104)
  %106 = icmp eq i32 %105, 132
  br i1 %106, label %113, label %107

107:                                              ; preds = %89
  %108 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %109 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @IFM_SUBTYPE(i32 %110)
  %112 = icmp eq i32 %111, 131
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %89
  %114 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %115 = load i32, i32* @TI_GCR_LINK, align 4
  %116 = load i32, i32* @TI_LNK_100MB, align 4
  %117 = call i32 @TI_SETBIT(%struct.ti_softc* %114, i32 %115, i32 %116)
  br label %123

118:                                              ; preds = %107
  %119 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %120 = load i32, i32* @TI_GCR_LINK, align 4
  %121 = load i32, i32* @TI_LNK_10MB, align 4
  %122 = call i32 @TI_SETBIT(%struct.ti_softc* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %125 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IFM_GMASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @IFM_FDX, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %133 = load i32, i32* @TI_GCR_LINK, align 4
  %134 = load i32, i32* @TI_LNK_FULL_DUPLEX, align 4
  %135 = call i32 @TI_SETBIT(%struct.ti_softc* %132, i32 %133, i32 %134)
  br label %141

136:                                              ; preds = %123
  %137 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %138 = load i32, i32* @TI_GCR_LINK, align 4
  %139 = load i32, i32* @TI_LNK_HALF_DUPLEX, align 4
  %140 = call i32 @TI_SETBIT(%struct.ti_softc* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %131
  %142 = load i32, i32* @TI_CMD_LINK_NEGOTIATION, align 4
  %143 = load i32, i32* @TI_CMD_CODE_NEGOTIATE_10_100, align 4
  %144 = call i32 @TI_DO_CMD(i32 %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %17, %141, %85, %22
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %15
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #1

declare dso_local i32 @TI_SETBIT(%struct.ti_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
