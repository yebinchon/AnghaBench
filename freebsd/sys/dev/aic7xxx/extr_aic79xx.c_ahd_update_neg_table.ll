; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_update_neg_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_update_neg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_transinfo = type { i32, i32, i32, i64 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@NEGOADDR = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ASYNC = common dso_local global i32 0, align 4
@AHD_SYNCRATE_160 = common dso_local global i32 0, align 4
@AHD_PACED_NEGTABLE_BUG = common dso_local global i32 0, align 4
@PPROPT_PACE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_REVA_160 = common dso_local global i32 0, align 4
@MSG_EXT_PPR_PCOMP_EN = common dso_local global i32 0, align 4
@AHD_PRECOMP_MASK = common dso_local global i32 0, align 4
@AHD_PRECOMP_SLEW_INDEX = common dso_local global i64 0, align 8
@AHD_NEW_IOCELL_OPTS = common dso_local global i32 0, align 4
@ENSLOWCRC = common dso_local global i32 0, align 4
@AHD_SLEWRATE_MASK = common dso_local global i32 0, align 4
@ANNEXCOL = common dso_local global i32 0, align 4
@AHD_ANNEXCOL_PRECOMP_SLEW = common dso_local global i32 0, align 4
@ANNEXDAT = common dso_local global i32 0, align 4
@AHD_ANNEXCOL_AMPLITUDE = common dso_local global i32 0, align 4
@AHD_AMPLITUDE_INDEX = common dso_local global i64 0, align 8
@NEGPERIOD = common dso_local global i32 0, align 4
@NEGPPROPTS = common dso_local global i32 0, align 4
@NEGOFFSET = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i64 0, align 8
@WIDEXFER = common dso_local global i32 0, align 4
@ENAUTOATNO = common dso_local global i32 0, align 4
@NEGCONOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_transinfo*)* @ahd_update_neg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_update_neg_table(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, %struct.ahd_transinfo* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_devinfo*, align 8
  %6 = alloca %struct.ahd_transinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %5, align 8
  store %struct.ahd_transinfo* %2, %struct.ahd_transinfo** %6, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %15 = call i32 @ahd_save_modes(%struct.ahd_softc* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %17 = load i32, i32* @AHD_MODE_SCSI, align 4
  %18 = load i32, i32* @AHD_MODE_SCSI, align 4
  %19 = call i32 @ahd_set_modes(%struct.ahd_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %21 = load i32, i32* @NEGOADDR, align 4
  %22 = call i32 @ahd_inb(%struct.ahd_softc* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %24 = load i32, i32* @NEGOADDR, align 4
  %25 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %26 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ahd_outb(%struct.ahd_softc* %23, i32 %24, i32 %27)
  %29 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %30 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %33 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %35, i32 %38, i32 4)
  %40 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %41 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %44 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %42, %49
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @AHD_SYNCRATE_ASYNC, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %3
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @AHD_SYNCRATE_160, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AHD_PACED_NEGTABLE_BUG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @PPROPT_PACE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @AHD_SYNCRATE_REVA_160, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %75 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MSG_EXT_PPR_PCOMP_EN, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* @AHD_PRECOMP_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i64, i64* @AHD_PRECOMP_SLEW_INDEX, align 8
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %73
  br label %130

88:                                               ; preds = %55
  %89 = load i32, i32* @AHD_PRECOMP_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i64, i64* @AHD_PRECOMP_SLEW_INDEX, align 8
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AHD_NEW_IOCELL_OPTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %88
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @ENSLOWCRC, align 4
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %106, %101, %88
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AHD_PACED_NEGTABLE_BUG, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i32, i32* @AHD_SLEWRATE_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load i64, i64* @AHD_PRECOMP_SLEW_INDEX, align 8
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %122, %115
  br label %130

130:                                              ; preds = %129, %87
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %132 = load i32, i32* @ANNEXCOL, align 4
  %133 = load i32, i32* @AHD_ANNEXCOL_PRECOMP_SLEW, align 4
  %134 = call i32 @ahd_outb(%struct.ahd_softc* %131, i32 %132, i32 %133)
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %136 = load i32, i32* @ANNEXDAT, align 4
  %137 = load i64, i64* @AHD_PRECOMP_SLEW_INDEX, align 8
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ahd_outb(%struct.ahd_softc* %135, i32 %136, i32 %139)
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %142 = load i32, i32* @ANNEXCOL, align 4
  %143 = load i32, i32* @AHD_ANNEXCOL_AMPLITUDE, align 4
  %144 = call i32 @ahd_outb(%struct.ahd_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %146 = load i32, i32* @ANNEXDAT, align 4
  %147 = load i64, i64* @AHD_AMPLITUDE_INDEX, align 8
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ahd_outb(%struct.ahd_softc* %145, i32 %146, i32 %149)
  %151 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %152 = load i32, i32* @NEGPERIOD, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @ahd_outb(%struct.ahd_softc* %151, i32 %152, i32 %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %156 = load i32, i32* @NEGPPROPTS, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ahd_outb(%struct.ahd_softc* %155, i32 %156, i32 %157)
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %160 = load i32, i32* @NEGOFFSET, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @ahd_outb(%struct.ahd_softc* %159, i32 %160, i32 %161)
  %163 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %164 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %130
  %169 = load i32, i32* @WIDEXFER, align 4
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %168, %130
  %173 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %6, align 8
  %174 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* @ENAUTOATNO, align 4
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %179, %172
  %184 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %185 = load i32, i32* @NEGCONOPTS, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @ahd_outb(%struct.ahd_softc* %184, i32 %185, i32 %186)
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %189 = load i32, i32* @NEGOADDR, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @ahd_outb(%struct.ahd_softc* %188, i32 %189, i32 %190)
  %192 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @ahd_restore_modes(%struct.ahd_softc* %192, i32 %193)
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
