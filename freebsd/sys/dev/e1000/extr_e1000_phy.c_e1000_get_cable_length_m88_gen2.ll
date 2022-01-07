; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_cable_length_m88_gen2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_cable_length_m88_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.1*, i64, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_get_cable_length_m88_gen2\00", align 1
@GS40G_PAGE_SHIFT = common dso_local global i32 0, align 4
@I347AT4_PCDL = common dso_local global i64 0, align 8
@I347AT4_PCDC = common dso_local global i64 0, align 8
@I347AT4_PCDC_CABLE_LENGTH_UNIT = common dso_local global i32 0, align 4
@I347AT4_PAGE_SELECT = common dso_local global i64 0, align 8
@M88E1112_VCT_DSP_DISTANCE = common dso_local global i64 0, align 8
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@M88E1000_CABLE_LENGTH_TABLE_SIZE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@e1000_m88_cable_length_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_get_cable_length_m88_gen2(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %282 [
    i32 133, label %18
    i32 128, label %87
    i32 129, label %87
    i32 130, label %87
    i32 132, label %87
    i32 131, label %188
  ]

18:                                               ; preds = %1
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.1*
  %25 = load i32, i32* @GS40G_PAGE_SHIFT, align 4
  %26 = shl i32 7, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @I347AT4_PCDL, align 8
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = add nsw i64 %27, %32
  %34 = call i32 %22(%struct.e1000_hw.1* %24, i64 %33, i32* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %287

39:                                               ; preds = %18
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.1*
  %46 = load i32, i32* @GS40G_PAGE_SHIFT, align 4
  %47 = shl i32 7, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @I347AT4_PCDC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 %43(%struct.e1000_hw.1* %45, i64 %50, i32* %7)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %287

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @I347AT4_PCDC_CABLE_LENGTH_UNIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 100, i32 1
  %68 = sdiv i32 %63, %67
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 100, i32 1
  %76 = sdiv i32 %71, %75
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 100, i32 1
  %84 = sdiv i32 %79, %83
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %285

87:                                               ; preds = %1, %1, %1, %1
  %88 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %90, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = bitcast %struct.e1000_hw* %92 to %struct.e1000_hw.1*
  %94 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %95 = call i32 %91(%struct.e1000_hw.1* %93, i64 %94, i32* %10)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %287

100:                                              ; preds = %87
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.0*
  %107 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %108 = call i32 %104(%struct.e1000_hw.0* %106, i64 %107, i32 7)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %287

113:                                              ; preds = %100
  %114 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %116, align 8
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = bitcast %struct.e1000_hw* %118 to %struct.e1000_hw.1*
  %120 = load i64, i64* @I347AT4_PCDL, align 8
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = call i32 %117(%struct.e1000_hw.1* %119, i64 %124, i32* %6)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %287

130:                                              ; preds = %113
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.1*
  %137 = load i64, i64* @I347AT4_PCDC, align 8
  %138 = call i32 %134(%struct.e1000_hw.1* %136, i64 %137, i32* %7)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %287

143:                                              ; preds = %130
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @I347AT4_PCDC_CABLE_LENGTH_UNIT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 100, i32 1
  %155 = sdiv i32 %150, %154
  %156 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 100, i32 1
  %163 = sdiv i32 %158, %162
  %164 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %165 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 100, i32 1
  %171 = sdiv i32 %166, %170
  %172 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %173 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %175 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %176, align 8
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %179 = bitcast %struct.e1000_hw* %178 to %struct.e1000_hw.0*
  %180 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 %177(%struct.e1000_hw.0* %179, i64 %180, i32 %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %143
  %186 = load i32, i32* %5, align 4
  store i32 %186, i32* %2, align 4
  br label %287

187:                                              ; preds = %143
  br label %285

188:                                              ; preds = %1
  %189 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %190 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %191, align 8
  %193 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %194 = bitcast %struct.e1000_hw* %193 to %struct.e1000_hw.1*
  %195 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %196 = call i32 %192(%struct.e1000_hw.1* %194, i64 %195, i32* %10)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %287

201:                                              ; preds = %188
  %202 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %203 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %204, align 8
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %207 = bitcast %struct.e1000_hw* %206 to %struct.e1000_hw.0*
  %208 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %209 = call i32 %205(%struct.e1000_hw.0* %207, i64 %208, i32 5)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %201
  %213 = load i32, i32* %5, align 4
  store i32 %213, i32* %2, align 4
  br label %287

214:                                              ; preds = %201
  %215 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %216 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %217, align 8
  %219 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %220 = bitcast %struct.e1000_hw* %219 to %struct.e1000_hw.1*
  %221 = load i64, i64* @M88E1112_VCT_DSP_DISTANCE, align 8
  %222 = call i32 %218(%struct.e1000_hw.1* %220, i64 %221, i32* %6)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = load i32, i32* %5, align 4
  store i32 %226, i32* %2, align 4
  br label %287

227:                                              ; preds = %214
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %232 = ashr i32 %230, %231
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @M88E1000_CABLE_LENGTH_TABLE_SIZE, align 4
  %235 = sub nsw i32 %234, 1
  %236 = icmp sge i32 %233, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %227
  %238 = load i32, i32* @E1000_ERR_PHY, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %2, align 4
  br label %287

240:                                              ; preds = %227
  %241 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %248 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %249, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %257 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %259 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %262 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %260, %263
  %265 = sdiv i32 %264, 2
  %266 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %267 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %269 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %270, align 8
  %272 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %273 = bitcast %struct.e1000_hw* %272 to %struct.e1000_hw.0*
  %274 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %275 = load i32, i32* %10, align 4
  %276 = call i32 %271(%struct.e1000_hw.0* %273, i64 %274, i32 %275)
  store i32 %276, i32* %5, align 4
  %277 = load i32, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %240
  %280 = load i32, i32* %5, align 4
  store i32 %280, i32* %2, align 4
  br label %287

281:                                              ; preds = %240
  br label %285

282:                                              ; preds = %1
  %283 = load i32, i32* @E1000_ERR_PHY, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %2, align 4
  br label %287

285:                                              ; preds = %281, %187, %56
  %286 = load i32, i32* %5, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %285, %282, %279, %237, %225, %212, %199, %185, %141, %128, %111, %98, %54, %37
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
