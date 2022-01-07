; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_decode_pst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_decode_pst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.psb_header = type { i32, i32, i32 }
%struct.pst_header = type { i32, i32, i32, i32, i32 }

@A0_ERRATA = common dso_local global i32 0, align 4
@MSR_AMDK7_FIDVID_STATUS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"STATUS: 0x%jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"STATUS: maxfid: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"STATUS: %s: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"startvid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"maxvid\00", align 1
@PSB_START = common dso_local global i32 0, align 4
@PSB_SIG = common dso_local global i32 0, align 4
@PSB_LEN = common dso_local global i32 0, align 4
@PSB_STEP = common dso_local global i32 0, align 4
@PSB_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"PSB: VST: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"PSB: RVO %x IRT %d MVS %d BATT %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no match for extended cpuid %.3x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pn_decode_pst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_decode_pst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.psb_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.pst_header*, align 8
  %15 = alloca %struct.pst_header*, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.pn_softc* @device_get_softc(i32 %16)
  store %struct.pn_softc* %17, %struct.pn_softc** %5, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %19 = call i32 @do_cpuid(i32 -2147483647, i32* %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 4095
  %24 = icmp eq i32 %23, 1888
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @A0_ERRATA, align 4
  %27 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %28 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i32, i32* @MSR_AMDK7_FIDVID_STATUS, align 4
  %33 = call i32 @rdmsr(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %35 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %47 [
    i32 129, label %37
    i32 128, label %42
  ]

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @PN7_STA_MFID(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @PN7_STA_SVID(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @PN8_STA_MFID(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @PN8_STA_MVID(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @ENODEV, align 4
  store i32 %48, i32* %2, align 4
  br label %262

49:                                               ; preds = %42, %37
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %61 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 129
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %52, %49
  %69 = load i32, i32* @PSB_START, align 4
  %70 = load i32, i32* @PSB_SIG, align 4
  %71 = load i32, i32* @PSB_LEN, align 4
  %72 = load i32, i32* @PSB_STEP, align 4
  %73 = load i32, i32* @PSB_OFF, align 4
  %74 = call i64 @bios_sigsearch(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %260

77:                                               ; preds = %68
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @BIOS_PADDRTOVADDR(i64 %78)
  %80 = inttoptr i64 %79 to %struct.psb_header*
  store %struct.psb_header* %80, %struct.psb_header** %10, align 8
  %81 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %82 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %84 [
    i32 20, label %86
    i32 18, label %146
  ]

84:                                               ; preds = %77
  %85 = load i32, i32* @ENODEV, align 4
  store i32 %85, i32* %2, align 4
  br label %262

86:                                               ; preds = %77
  %87 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %88 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 128
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %2, align 4
  br label %262

93:                                               ; preds = %86
  %94 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %95 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %98 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %100 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PN8_PSB_TO_RVO(i32 %101)
  %103 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %104 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %106 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PN8_PSB_TO_IRT(i32 %107)
  %109 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %110 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %112 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PN8_PSB_TO_MVS(i32 %113)
  %115 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %116 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %118 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @PN8_PSB_TO_BATT(i32 %119)
  %121 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %122 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %93
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %128 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %133 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %136 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %139 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %142 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32 %137, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %125, %93
  br label %179

146:                                              ; preds = %77
  %147 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %148 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 129
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %2, align 4
  br label %262

153:                                              ; preds = %146
  %154 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %155 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %158 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %162 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %164 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %167 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 100, %168
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %153
  %172 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %173 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 100, %174
  %176 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %177 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %153
  br label %179

179:                                              ; preds = %178, %145
  %180 = load %struct.psb_header*, %struct.psb_header** %10, align 8
  %181 = bitcast %struct.psb_header* %180 to i32*
  %182 = getelementptr inbounds i32, i32* %181, i64 12
  store i32* %182, i32** %11, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = bitcast i32* %183 to %struct.pst_header*
  store %struct.pst_header* %184, %struct.pst_header** %14, align 8
  store i32 200, i32* %4, align 4
  br label %185

185:                                              ; preds = %254, %179
  %186 = load i32*, i32** %11, align 8
  %187 = bitcast i32* %186 to %struct.pst_header*
  store %struct.pst_header* %187, %struct.pst_header** %15, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %190 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %188, %191
  br i1 %192, label %193, label %235

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %196 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %235

199:                                              ; preds = %193
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %202 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %235

205:                                              ; preds = %199
  %206 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %207 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %210 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %212 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  switch i32 %213, label %227 [
    i32 129, label %214
    i32 128, label %226
  ]

214:                                              ; preds = %205
  %215 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %216 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %219 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %217, %220
  %222 = call i32 @abs(i32 %221) #3
  %223 = icmp sgt i32 %222, 5
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %244

225:                                              ; preds = %214
  br label %227

226:                                              ; preds = %205
  br label %227

227:                                              ; preds = %205, %226, %225
  %228 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %229 = load i32*, i32** %11, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 20
  %231 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %232 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @decode_pst(%struct.pn_softc* %228, i32* %230, i32 %233)
  store i32 %234, i32* %2, align 4
  br label %262

235:                                              ; preds = %199, %193, %185
  %236 = load %struct.pst_header*, %struct.pst_header** %15, align 8
  %237 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = add i64 20, %240
  %242 = load i32*, i32** %11, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 %241
  store i32* %243, i32** %11, align 8
  br label %244

244:                                              ; preds = %235, %224
  %245 = load %struct.pst_header*, %struct.pst_header** %14, align 8
  %246 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @cpuid_is_k7(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %4, align 4
  %253 = icmp ne i32 %251, 0
  br label %254

254:                                              ; preds = %250, %244
  %255 = phi i1 [ false, %244 ], [ %253, %250 ]
  br i1 %255, label %185, label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (i32, i8*, ...) @device_printf(i32 %257, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %256, %68
  %261 = load i32, i32* @ENODEV, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %227, %151, %91, %84, %47
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.pn_softc* @device_get_softc(i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @PN7_STA_MFID(i32) #1

declare dso_local i32 @PN7_STA_SVID(i32) #1

declare dso_local i32 @PN8_STA_MFID(i32) #1

declare dso_local i32 @PN8_STA_MVID(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bios_sigsearch(i32, i32, i32, i32, i32) #1

declare dso_local i64 @BIOS_PADDRTOVADDR(i64) #1

declare dso_local i32 @PN8_PSB_TO_RVO(i32) #1

declare dso_local i32 @PN8_PSB_TO_IRT(i32) #1

declare dso_local i32 @PN8_PSB_TO_MVS(i32) #1

declare dso_local i32 @PN8_PSB_TO_BATT(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @decode_pst(%struct.pn_softc*, i32*, i32) #1

declare dso_local i64 @cpuid_is_k7(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
