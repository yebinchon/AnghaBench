; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_bbp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_bbp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.bwi_softc = type { i64, i64, %struct.TYPE_5__*, i32, i32, i32, i8*, i8*, i8*, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"can't select regwin 0\0A\00", align 1
@BWI_REGWIN_T_COM = common dso_local global i64 0, align 8
@BWI_INFO = common dso_local global i32 0, align 4
@BWI_INFO_BBPID_MASK = common dso_local global i32 0, align 4
@BWI_CAPABILITY = common dso_local global i32 0, align 4
@bwi_bbpid_map = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"no BBP id for device id 0x%04x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BWI_INFO_BBPREV_MASK = common dso_local global i32 0, align 4
@BWI_INFO_BBPPKG_MASK = common dso_local global i32 0, align 4
@BWI_INFO_NREGWIN_MASK = common dso_local global i32 0, align 4
@bwi_regwin_count = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"no number of win for BBP id 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"BBP: id 0x%04x, rev 0x%x, pkg %d\0A\00", align 1
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"nregwin %d, cap 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't select regwin %d\0A\00", align 1
@BWI_REGWIN_T_BUSPCI = common dso_local global i64 0, align 8
@BWI_REGWIN_T_BUSPCIE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"bus regwin already exists\0A\00", align 1
@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"no MAC was found\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"no mac's\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"no bus regwin was found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_bbp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_bbp_attach(%struct.bwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %12 = call i32 @bwi_regwin_select(%struct.bwi_softc* %11, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %298

21:                                               ; preds = %1
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = call i32 @bwi_regwin_info(%struct.bwi_softc* %22, i64* %5, i32* %6)
  store i64 0, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @BWI_REGWIN_T_COM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %29 = load i32, i32* @BWI_INFO, align 4
  %30 = call i8* @CSR_READ_4(%struct.bwi_softc* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BWI_INFO_BBPID_MASK, align 4
  %34 = call i8* @__SHIFTOUT(i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %4, align 8
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %36, i32 0, i32 5
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BWI_CREATE_REGWIN(i32* %37, i32 0, i64 %38, i32 %39)
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = load i32, i32* @BWI_CAPABILITY, align 4
  %43 = call i8* @CSR_READ_4(%struct.bwi_softc* %41, i32 %42)
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  br label %106

46:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %82, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_bbpid_map, align 8
  %50 = call i32 @nitems(%struct.TYPE_6__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_bbpid_map, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %55, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %52
  %64 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_bbpid_map, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %66, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_bbpid_map, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  br label %85

81:                                               ; preds = %63, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %47

85:                                               ; preds = %74, %47
  %86 = load i64, i64* %4, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %93 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %298

97:                                               ; preds = %85
  %98 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BWI_INFO_BBPREV_MASK, align 4
  %102 = call i32 @__SHIFTIN(i32 %100, i32 %101)
  %103 = load i32, i32* @BWI_INFO_BBPPKG_MASK, align 4
  %104 = call i32 @__SHIFTIN(i32 0, i32 %103)
  %105 = or i32 %102, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %97, %27
  store i32 0, i32* %9, align 4
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @BWI_REGWIN_T_COM, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @BWI_INFO_NREGWIN_MASK, align 4
  %116 = call i8* @__SHIFTOUT(i32 %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %9, align 4
  br label %155

118:                                              ; preds = %110, %106
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_regwin_count, align 8
  %122 = call i32 @nitems(%struct.TYPE_6__* %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_regwin_count, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bwi_regwin_count, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %9, align 4
  br label %144

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %119

144:                                              ; preds = %133, %119
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %149 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %151)
  %153 = load i32, i32* @ENXIO, align 4
  store i32 %153, i32* %2, align 4
  br label %298

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %113
  %156 = load i64, i64* %4, align 8
  %157 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %158 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %157, i32 0, i32 9
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @BWI_INFO_BBPREV_MASK, align 4
  %161 = call i8* @__SHIFTOUT(i32 %159, i32 %160)
  %162 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %163 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %162, i32 0, i32 8
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @BWI_INFO_BBPPKG_MASK, align 4
  %166 = call i8* @__SHIFTOUT(i32 %164, i32 %165)
  %167 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %168 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %167, i32 0, i32 7
  store i8* %166, i8** %168, align 8
  %169 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %170 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %173 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %176 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %175, i32 0, i32 8
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %179 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %178, i32 0, i32 7
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %174, i8* %177, i8* %180)
  %182 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %183 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %186 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %185, i32 0, i32 6
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @DPRINTF(%struct.bwi_softc* %182, i32 %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %184, i8* %187)
  %189 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %190 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %189, i32 0, i32 5
  %191 = call i64 @BWI_REGWIN_EXIST(i32* %190)
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %251, %155
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %254

199:                                              ; preds = %195
  %200 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @bwi_regwin_select(%struct.bwi_softc* %200, i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %207 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i32 (i32, i8*, ...) @device_printf(i32 %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %2, align 4
  br label %298

212:                                              ; preds = %199
  %213 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %214 = call i32 @bwi_regwin_info(%struct.bwi_softc* %213, i64* %5, i32* %6)
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* @BWI_REGWIN_T_BUSPCI, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %212
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* @BWI_REGWIN_T_BUSPCIE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %240

222:                                              ; preds = %218, %212
  %223 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %224 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %223, i32 0, i32 4
  %225 = call i64 @BWI_REGWIN_EXIST(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %229 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @device_printf(i32 %230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %239

232:                                              ; preds = %222
  %233 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %234 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %233, i32 0, i32 4
  %235 = load i32, i32* %10, align 4
  %236 = load i64, i64* %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @BWI_CREATE_REGWIN(i32* %234, i32 %235, i64 %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %227
  br label %250

240:                                              ; preds = %218
  %241 = load i64, i64* %5, align 8
  %242 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @bwi_mac_attach(%struct.bwi_softc* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %240
  br label %250

250:                                              ; preds = %249, %239
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %195

254:                                              ; preds = %195
  %255 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %256 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %255, i32 0, i32 2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = call i64 @BWI_REGWIN_EXIST(i32* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %254
  %263 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %264 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i32, i8*, ...) @device_printf(i32 %265, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %267 = load i32, i32* @ENXIO, align 4
  store i32 %267, i32* %2, align 4
  br label %298

268:                                              ; preds = %254
  %269 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %270 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp sgt i64 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @KASSERT(i32 %273, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %275 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %276 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %275, i32 0, i32 4
  %277 = call i64 @BWI_REGWIN_EXIST(i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %268
  %280 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %281 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i32, i8*, ...) @device_printf(i32 %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %284 = load i32, i32* @ENXIO, align 4
  store i32 %284, i32* %2, align 4
  br label %298

285:                                              ; preds = %268
  %286 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %287 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %288 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %287, i32 0, i32 2
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %286, i32* %291, i32* null)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %285
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %2, align 4
  br label %298

297:                                              ; preds = %285
  store i32 0, i32* %2, align 4
  br label %298

298:                                              ; preds = %297, %295, %279, %262, %205, %147, %88, %15
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local i32 @bwi_regwin_select(%struct.bwi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bwi_regwin_info(%struct.bwi_softc*, i64*, i32*) #1

declare dso_local i8* @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i8* @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @BWI_CREATE_REGWIN(i32*, i32, i64, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32, i8*) #1

declare dso_local i64 @BWI_REGWIN_EXIST(i32*) #1

declare dso_local i32 @bwi_mac_attach(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
