; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@FEC_IEM_REG = common dso_local global i32 0, align 4
@FEC_IER_REG = common dso_local global i32 0, align 4
@FEC_TFWR_REG = common dso_local global i32 0, align 4
@FEC_TFWR_STRFWD = common dso_local global i32 0, align 4
@FEC_TFWR_TWFR_128BYTE = common dso_local global i32 0, align 4
@FEC_RCR_REG = common dso_local global i32 0, align 4
@FEC_RCR_MAX_FL_SHIFT = common dso_local global i32 0, align 4
@FEC_TCR_REG = common dso_local global i32 0, align 4
@FEC_OPD_REG = common dso_local global i32 0, align 4
@FEC_MRBR_REG = common dso_local global i32 0, align 4
@FEC_MRBR_R_BUF_SIZE_SHIFT = common dso_local global i32 0, align 4
@FEC_FTRL_REG = common dso_local global i32 0, align 4
@FEC_RDSR_REG = common dso_local global i32 0, align 4
@FEC_TDSR_REG = common dso_local global i32 0, align 4
@FEC_IER_TXF = common dso_local global i32 0, align 4
@FEC_IER_RXF = common dso_local global i32 0, align 4
@FEC_IER_EBERR = common dso_local global i32 0, align 4
@FEC_MIBC_REG = common dso_local global i32 0, align 4
@FEC_MIBC_DIS = common dso_local global i32 0, align 4
@FECFLAG_RACC = common dso_local global i32 0, align 4
@FEC_RACC_REG = common dso_local global i32 0, align 4
@FEC_RACC_SHIFT16 = common dso_local global i32 0, align 4
@FEC_ECR_REG = common dso_local global i32 0, align 4
@FEC_ECR_DBSWP = common dso_local global i32 0, align 4
@FEC_ECR_ETHEREN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ffec_tick = common dso_local global i32 0, align 4
@FEC_RDAR_REG = common dso_local global i32 0, align 4
@FEC_RDAR_RDAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_init_locked(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %7 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %7, i32 0, i32 10
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %11 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %10)
  %12 = load i32, i32* @MCLBYTES, align 4
  %13 = load i32, i32* @ETHER_ALIGN, align 4
  %14 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @roundup(i32 %13, i32 %16)
  %18 = sub nsw i32 %12, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @min(i32 %19, i32 2047)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %160

28:                                               ; preds = %1
  %29 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %30 = load i32, i32* @FEC_IEM_REG, align 4
  %31 = call i32 @WR4(%struct.ffec_softc* %29, i32 %30, i32 0)
  %32 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %33 = load i32, i32* @FEC_IER_REG, align 4
  %34 = call i32 @WR4(%struct.ffec_softc* %32, i32 %33, i32 -1)
  %35 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %36 = call i32 @ffec_setup_rxfilter(%struct.ffec_softc* %35)
  %37 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %38 = load i32, i32* @FEC_TFWR_REG, align 4
  %39 = load i32, i32* @FEC_TFWR_STRFWD, align 4
  %40 = load i32, i32* @FEC_TFWR_TWFR_128BYTE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WR4(%struct.ffec_softc* %37, i32 %38, i32 %41)
  %43 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %44 = load i32, i32* @FEC_RCR_REG, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @FEC_RCR_MAX_FL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @WR4(%struct.ffec_softc* %43, i32 %44, i32 %47)
  %49 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %50 = load i32, i32* @FEC_TCR_REG, align 4
  %51 = call i32 @WR4(%struct.ffec_softc* %49, i32 %50, i32 0)
  %52 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %53 = load i32, i32* @FEC_OPD_REG, align 4
  %54 = call i32 @WR4(%struct.ffec_softc* %52, i32 %53, i32 65568)
  %55 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %56 = load i32, i32* @FEC_MRBR_REG, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @FEC_MRBR_R_BUF_SIZE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = call i32 @WR4(%struct.ffec_softc* %55, i32 %56, i32 %59)
  %61 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %62 = load i32, i32* @FEC_FTRL_REG, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WR4(%struct.ffec_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %74 = load i32, i32* @FEC_RDSR_REG, align 4
  %75 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @WR4(%struct.ffec_softc* %73, i32 %74, i32 %77)
  %79 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %80 = load i32, i32* @FEC_TDSR_REG, align 4
  %81 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @WR4(%struct.ffec_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %86 = load i32, i32* @FEC_IEM_REG, align 4
  %87 = load i32, i32* @FEC_IER_TXF, align 4
  %88 = load i32, i32* @FEC_IER_RXF, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FEC_IER_EBERR, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @WR4(%struct.ffec_softc* %85, i32 %86, i32 %91)
  %93 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %94 = load i32, i32* @FEC_MIBC_REG, align 4
  %95 = call i32 @RD4(%struct.ffec_softc* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %97 = load i32, i32* @FEC_MIBC_REG, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @FEC_MIBC_DIS, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @WR4(%struct.ffec_softc* %96, i32 %97, i32 %100)
  %102 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %103 = call i32 @ffec_clear_stats(%struct.ffec_softc* %102)
  %104 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %105 = load i32, i32* @FEC_MIBC_REG, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @FEC_MIBC_DIS, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @WR4(%struct.ffec_softc* %104, i32 %105, i32 %109)
  %111 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FECFLAG_RACC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %28
  %118 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %119 = load i32, i32* @FEC_RACC_REG, align 4
  %120 = call i32 @RD4(%struct.ffec_softc* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %122 = load i32, i32* @FEC_RACC_REG, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @FEC_RACC_SHIFT16, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @WR4(%struct.ffec_softc* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %117, %28
  %128 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %129 = load i32, i32* @FEC_ECR_REG, align 4
  %130 = call i32 @RD4(%struct.ffec_softc* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @FEC_ECR_DBSWP, align 4
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @FEC_ECR_ETHEREN, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  %137 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %138 = load i32, i32* @FEC_ECR_REG, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @WR4(%struct.ffec_softc* %137, i32 %138, i32 %139)
  %141 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %142 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %147 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @mii_mediachg(i32 %148)
  %150 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %151 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %150, i32 0, i32 3
  %152 = load i32, i32* @hz, align 4
  %153 = load i32, i32* @ffec_tick, align 4
  %154 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %155 = call i32 @callout_reset(i32* %151, i32 %152, i32 %153, %struct.ffec_softc* %154)
  %156 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %157 = load i32, i32* @FEC_RDAR_REG, align 4
  %158 = load i32, i32* @FEC_RDAR_RDAR, align 4
  %159 = call i32 @WR4(%struct.ffec_softc* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %127, %27
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

declare dso_local i32 @ffec_setup_rxfilter(%struct.ffec_softc*) #1

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @ffec_clear_stats(%struct.ffec_softc*) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
