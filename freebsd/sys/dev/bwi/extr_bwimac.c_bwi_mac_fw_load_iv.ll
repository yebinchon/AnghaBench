; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_load_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_load_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.bwi_fwhdr = type { i32 }
%struct.bwi_fw_iv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@BWI_DBG_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IV count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid IV image, ofs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BWI_FW_IV_OFS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid ofs (0x%04x) for %dth iv\0A\00", align 1
@BWI_FW_IV_IS_32BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid IV image, val32\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid IV image, val16\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"invalid IV image, size left %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, %struct.firmware*)* @bwi_mac_fw_load_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_fw_load_iv(%struct.bwi_mac* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.bwi_softc*, align 8
  %7 = alloca %struct.bwi_fwhdr*, align 8
  %8 = alloca %struct.bwi_fw_iv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 0
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  store %struct.bwi_softc* %19, %struct.bwi_softc** %6, align 8
  %20 = load %struct.firmware*, %struct.firmware** %5, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bwi_fwhdr*
  store %struct.bwi_fwhdr* %23, %struct.bwi_fwhdr** %7, align 8
  %24 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %7, align 8
  %25 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @be32toh(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %30 = load i32, i32* @BWI_DBG_MAC, align 4
  %31 = load i32, i32* @BWI_DBG_INIT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BWI_DBG_FIRMWARE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @DPRINTF(%struct.bwi_softc* %29, i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.firmware*, %struct.firmware** %5, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = bitcast i32* %47 to %struct.bwi_fw_iv*
  store %struct.bwi_fw_iv* %48, %struct.bwi_fw_iv** %8, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %157, %2
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %160

53:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %59 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %3, align 4
  br label %171

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load %struct.bwi_fw_iv*, %struct.bwi_fw_iv** %8, align 8
  %73 = getelementptr inbounds %struct.bwi_fw_iv, %struct.bwi_fw_iv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be16toh(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @BWI_FW_IV_OFS_MASK, align 4
  %78 = call i32 @__SHIFTOUT(i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %79, 4096
  br i1 %80, label %81, label %89

81:                                               ; preds = %63
  %82 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %83 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %63
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @BWI_FW_IV_IS_32BIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %100 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %3, align 4
  br label %171

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, 4
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %14, align 4
  %113 = load %struct.bwi_fw_iv*, %struct.bwi_fw_iv** %8, align 8
  %114 = getelementptr inbounds %struct.bwi_fw_iv, %struct.bwi_fw_iv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @be32toh(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %118, i32 %119, i8* %120)
  br label %150

122:                                              ; preds = %89
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 4
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %128 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %3, align 4
  br label %171

132:                                              ; preds = %122
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 4
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load %struct.bwi_fw_iv*, %struct.bwi_fw_iv** %8, align 8
  %142 = getelementptr inbounds %struct.bwi_fw_iv, %struct.bwi_fw_iv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be16toh(i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %132, %104
  %151 = load %struct.bwi_fw_iv*, %struct.bwi_fw_iv** %8, align 8
  %152 = bitcast %struct.bwi_fw_iv* %151 to i32*
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = bitcast i32* %155 to %struct.bwi_fw_iv*
  store %struct.bwi_fw_iv* %156, %struct.bwi_fw_iv** %8, align 8
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %49

160:                                              ; preds = %49
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %165 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 (i32, i8*, ...) @device_printf(i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %3, align 4
  br label %171

170:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %163, %126, %98, %81, %57
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i8* @be32toh(i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
