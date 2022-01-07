; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.bwi_softc* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.bwi_softc = type { i32 }

@BWI_FWHDR_SZ = common dso_local global i32 0, align 4
@BWI_MOBJ_CTRL = common dso_local global i32 0, align 4
@BWI_FW_UCODE_MOBJ = common dso_local global i32 0, align 4
@BWI_WR_MOBJ_AUTOINC = common dso_local global i32 0, align 4
@BWI_MOBJ_DATA = common dso_local global i32 0, align 4
@BWI_FW_PCM_MOBJ = common dso_local global i32 0, align 4
@BWI_MAC_INTR_STATUS = common dso_local global i32 0, align 4
@BWI_ALL_INTRS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_UCODE_START = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_IHREN = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_INFRA = common dso_local global i32 0, align 4
@BWI_INTR_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"firmware (ucode&pcm) loading timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_FWREV = common dso_local global i32 0, align 4
@BWI_FW_VERSION3_REVMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"firmware version 4 is not supported yet\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"firmware rev 0x%04x, patch level 0x%04x\0A\00", align 1
@BWI_COMM_MOBJ_FWPATCHLV = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_mac_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_fw_load(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 2
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %11, align 8
  store %struct.bwi_softc* %12, %struct.bwi_softc** %4, align 8
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* @BWI_FWHDR_SZ, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = bitcast i32* %21 to i64*
  store i64* %22, i64** %5, align 8
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %24 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BWI_FWHDR_SZ, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %34 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %35 = load i32, i32* @BWI_FW_UCODE_MOBJ, align 4
  %36 = load i32, i32* @BWI_WR_MOBJ_AUTOINC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %37, i32 0)
  %39 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %33, i32 %34, i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %55, %1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %46 = load i32, i32* @BWI_MOBJ_DATA, align 4
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @be32toh(i64 %51)
  %53 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %45, i32 %46, i32 %52)
  %54 = call i32 @DELAY(i32 10)
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %60 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* @BWI_FWHDR_SZ, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = bitcast i32* %67 to i64*
  store i64* %68, i64** %5, align 8
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %70 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BWI_FWHDR_SZ, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %80 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %81 = load i32, i32* @BWI_FW_PCM_MOBJ, align 4
  %82 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %81, i32 490)
  %83 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %79, i32 %80, i32 %82)
  %84 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %85 = load i32, i32* @BWI_MOBJ_DATA, align 4
  %86 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %84, i32 %85, i32 16384)
  %87 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %88 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %89 = load i32, i32* @BWI_FW_PCM_MOBJ, align 4
  %90 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %89, i32 491)
  %91 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %87, i32 %88, i32 %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %107, %58
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %98 = load i32, i32* @BWI_MOBJ_DATA, align 4
  %99 = load i64*, i64** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @be32toh(i64 %103)
  %105 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %97, i32 %98, i32 %104)
  %106 = call i32 @DELAY(i32 10)
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %112 = load i32, i32* @BWI_MAC_INTR_STATUS, align 4
  %113 = load i32, i32* @BWI_ALL_INTRS, align 4
  %114 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %116 = load i32, i32* @BWI_MAC_STATUS, align 4
  %117 = load i32, i32* @BWI_MAC_STATUS_UCODE_START, align 4
  %118 = load i32, i32* @BWI_MAC_STATUS_IHREN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @BWI_MAC_STATUS_INFRA, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %115, i32 %116, i32 %121)
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %136, %110
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 200
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %128 = load i32, i32* @BWI_MAC_INTR_STATUS, align 4
  %129 = call i64 @CSR_READ_4(%struct.bwi_softc* %127, i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @BWI_INTR_READY, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %139

134:                                              ; preds = %126
  %135 = call i32 @DELAY(i32 10)
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %123

139:                                              ; preds = %133, %123
  %140 = load i32, i32* %8, align 4
  %141 = icmp eq i32 %140, 200
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %144 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %147 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %147, i32* %2, align 4
  br label %175

148:                                              ; preds = %139
  %149 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %150 = load i32, i32* @BWI_MAC_INTR_STATUS, align 4
  %151 = call i64 @CSR_READ_4(%struct.bwi_softc* %149, i32 %150)
  %152 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %153 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %154 = load i32, i32* @BWI_COMM_MOBJ_FWREV, align 4
  %155 = call i64 @MOBJ_READ_2(%struct.bwi_mac* %152, i32 %153, i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @BWI_FW_VERSION3_REVMAX, align 8
  %158 = icmp sgt i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %161 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @device_printf(i32 %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @ENODEV, align 4
  store i32 %164, i32* %2, align 4
  br label %175

165:                                              ; preds = %148
  %166 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %167 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %6, align 8
  %170 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %171 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %172 = load i32, i32* @BWI_COMM_MOBJ_FWPATCHLV, align 4
  %173 = call i64 @MOBJ_READ_2(%struct.bwi_mac* %170, i32 %171, i32 %172)
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %169, i64 %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %165, %159, %142
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @BWI_MOBJ_CTRL_VAL(i32, i32) #1

declare dso_local i32 @be32toh(i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @MOBJ_READ_2(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
