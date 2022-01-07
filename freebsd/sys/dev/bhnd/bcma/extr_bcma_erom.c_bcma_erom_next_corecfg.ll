; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_next_corecfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_next_corecfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bcma_corecfg = type { i64, i64, i64, i64, i32 }
%struct.bcma_erom_core = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.bcma_mport = type { i32, i32 }
%struct.bcma_erom_mport = type { i32, i32 }

@BCMA_EROM_ENTRY_TYPE_CORE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCMA_PID_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unsupported mport count\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported dport count\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported wport count\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"core%u: %s %s (cid=%hx, rev=%hu, unit=%d)\0A\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@mp_link = common dso_local global i32 0, align 4
@REGION = common dso_local global i32 0, align 4
@REGION_TYPE = common dso_local global i32 0, align 4
@BCMA_EROM_REGION_TYPE_BRIDGE = common dso_local global i64 0, align 8
@BCMA_EROM_REGION_TYPE_DEVICE = common dso_local global i64 0, align 8
@BCMA_EROM_REGION_TYPE_MWRAP = common dso_local global i64 0, align 8
@BHND_MFGID_BCM = common dso_local global i64 0, align 8
@BCMA_EROM_REGION_TYPE_SWRAP = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_erom_next_corecfg(%struct.bcma_erom* %0, %struct.bcma_corecfg** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca %struct.bcma_corecfg**, align 8
  %6 = alloca %struct.bcma_corecfg*, align 8
  %7 = alloca %struct.bcma_erom_core, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bcma_erom_core, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bcma_mport*, align 8
  %16 = alloca %struct.bcma_erom_mport, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store %struct.bcma_corecfg** %1, %struct.bcma_corecfg*** %5, align 8
  store %struct.bcma_corecfg* null, %struct.bcma_corecfg** %6, align 8
  %22 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %23 = call i64 @bcma_erom_tell(%struct.bcma_erom* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %25 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %24, %struct.bcma_erom_core* %7)
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %3, align 4
  br label %325

29:                                               ; preds = %2
  %30 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %31 = call i32 @bcma_erom_reset(%struct.bcma_erom* %30)
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %75, %29
  %33 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %34 = call i64 @bcma_erom_tell(%struct.bcma_erom* %33)
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  %38 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %39 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %40 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %325

45:                                               ; preds = %37
  %46 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %47 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %46, %struct.bcma_erom_core* %13)
  store i32 %47, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %325

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %13, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %57, %51
  %67 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %68 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %69 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %325

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %80 = call i32 @bcma_erom_skip_core(%struct.bcma_erom* %79)
  store i32 %80, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %3, align 4
  br label %325

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.bcma_corecfg* @bcma_alloc_corecfg(i64 %85, i32 %86, i64 %88, i64 %90, i32 %92)
  store %struct.bcma_corecfg* %93, %struct.bcma_corecfg** %6, align 8
  %94 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %95 = icmp eq %struct.bcma_corecfg* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @ENOMEM, align 4
  store i32 %97, i32* %3, align 4
  br label %325

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BCMA_PID_MAX, align 8
  %102 = icmp sle i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @KASSERT(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BCMA_PID_MAX, align 8
  %108 = icmp sle i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @KASSERT(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %111 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %112, %114
  %116 = load i64, i64* @BCMA_PID_MAX, align 8
  %117 = icmp sle i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @KASSERT(i32 %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i64, i64* @bootverbose, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %98
  %123 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @bhnd_vendor_name(i64 %126)
  %128 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @bhnd_find_core_name(i64 %129, i64 %131)
  %133 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @EROM_LOG(%struct.bcma_erom* %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %124, i32 %127, i32 %132, i64 %134, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %122, %98
  %140 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %143 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %145 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %147 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %149, %151
  %153 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %154 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  store i64 0, i64* %14, align 8
  br label %155

155:                                              ; preds = %188, %139
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %155
  %161 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %162 = call i32 @bcma_erom_parse_mport(%struct.bcma_erom* %161, %struct.bcma_erom_mport* %16)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %317

166:                                              ; preds = %160
  %167 = load i32, i32* @M_BHND, align 4
  %168 = load i32, i32* @M_NOWAIT, align 4
  %169 = call %struct.bcma_mport* @malloc(i32 8, i32 %167, i32 %168)
  store %struct.bcma_mport* %169, %struct.bcma_mport** %15, align 8
  %170 = load %struct.bcma_mport*, %struct.bcma_mport** %15, align 8
  %171 = icmp eq %struct.bcma_mport* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @ENOMEM, align 4
  store i32 %173, i32* %12, align 4
  br label %317

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.bcma_erom_mport, %struct.bcma_erom_mport* %16, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.bcma_mport*, %struct.bcma_mport** %15, align 8
  %178 = getelementptr inbounds %struct.bcma_mport, %struct.bcma_mport* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = getelementptr inbounds %struct.bcma_erom_mport, %struct.bcma_erom_mport* %16, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.bcma_mport*, %struct.bcma_mport** %15, align 8
  %182 = getelementptr inbounds %struct.bcma_mport, %struct.bcma_mport* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %184 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %183, i32 0, i32 4
  %185 = load %struct.bcma_mport*, %struct.bcma_mport** %15, align 8
  %186 = load i32, i32* @mp_link, align 4
  %187 = call i32 @STAILQ_INSERT_TAIL(i32* %184, %struct.bcma_mport* %185, i32 %186)
  br label %188

188:                                              ; preds = %174
  %189 = load i64, i64* %14, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %14, align 8
  br label %155

191:                                              ; preds = %155
  %192 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %228

195:                                              ; preds = %191
  %196 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %197 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %196, i32* %17)
  store i32 %197, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %317

200:                                              ; preds = %195
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* @REGION, align 4
  %203 = call i64 @BCMA_EROM_ENTRY_IS(i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @REGION_TYPE, align 4
  %208 = call i64 @BCMA_EROM_GET_ATTR(i32 %206, i32 %207)
  %209 = load i64, i64* @BCMA_EROM_REGION_TYPE_BRIDGE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load i64, i64* @BCMA_EROM_REGION_TYPE_BRIDGE, align 8
  store i64 %212, i64* %8, align 8
  %213 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %214 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  %215 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %218 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %227

219:                                              ; preds = %205, %200
  %220 = load i64, i64* @BCMA_EROM_REGION_TYPE_DEVICE, align 8
  store i64 %220, i64* %8, align 8
  %221 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %224 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  %225 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %226 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %219, %211
  br label %228

228:                                              ; preds = %227, %191
  store i64 0, i64* %18, align 8
  br label %229

229:                                              ; preds = %244, %228
  %230 = load i64, i64* %18, align 8
  %231 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %236 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @bcma_erom_corecfg_fill_port_regions(%struct.bcma_erom* %235, %struct.bcma_corecfg* %236, i64 %237, i64 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %317

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %18, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %18, align 8
  br label %229

247:                                              ; preds = %229
  store i64 0, i64* %19, align 8
  br label %248

248:                                              ; preds = %263, %247
  %249 = load i64, i64* %19, align 8
  %250 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %249, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %248
  %254 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %255 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %256 = load i64, i64* %19, align 8
  %257 = load i64, i64* @BCMA_EROM_REGION_TYPE_MWRAP, align 8
  %258 = call i32 @bcma_erom_corecfg_fill_port_regions(%struct.bcma_erom* %254, %struct.bcma_corecfg* %255, i64 %256, i64 %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %317

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %19, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %19, align 8
  br label %248

266:                                              ; preds = %248
  store i64 0, i64* %20, align 8
  br label %267

267:                                              ; preds = %300, %266
  %268 = load i64, i64* %20, align 8
  %269 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %272, label %303

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  br label %289

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %7, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @BHND_MFGID_BCM, align 8
  %283 = icmp eq i64 %281, %282
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  %286 = sext i32 %285 to i64
  %287 = load i64, i64* %20, align 8
  %288 = add nsw i64 %286, %287
  br label %289

289:                                              ; preds = %279, %276
  %290 = phi i64 [ %278, %276 ], [ %288, %279 ]
  store i64 %290, i64* %21, align 8
  %291 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %292 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %293 = load i64, i64* %21, align 8
  %294 = load i64, i64* @BCMA_EROM_REGION_TYPE_SWRAP, align 8
  %295 = call i32 @bcma_erom_corecfg_fill_port_regions(%struct.bcma_erom* %291, %struct.bcma_corecfg* %292, i64 %293, i64 %294)
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %12, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %289
  br label %317

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %20, align 8
  %302 = add nsw i64 %301, 1
  store i64 %302, i64* %20, align 8
  br label %267

303:                                              ; preds = %267
  %304 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %305 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %306 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %304, i32 %305)
  store i32 %306, i32* %12, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @ENOENT, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  br label %317

313:                                              ; preds = %308
  br label %314

314:                                              ; preds = %313, %303
  %315 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %316 = load %struct.bcma_corecfg**, %struct.bcma_corecfg*** %5, align 8
  store %struct.bcma_corecfg* %315, %struct.bcma_corecfg** %316, align 8
  store i32 0, i32* %3, align 4
  br label %325

317:                                              ; preds = %312, %298, %261, %242, %199, %172, %165
  %318 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %319 = icmp ne %struct.bcma_corecfg* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %6, align 8
  %322 = call i32 @bcma_free_corecfg(%struct.bcma_corecfg* %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32, i32* %12, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %323, %314, %96, %82, %72, %49, %43, %27
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i64 @bcma_erom_tell(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_parse_core(%struct.bcma_erom*, %struct.bcma_erom_core*) #1

declare dso_local i32 @bcma_erom_reset(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_seek_next(%struct.bcma_erom*, i32) #1

declare dso_local i32 @bcma_erom_skip_core(%struct.bcma_erom*) #1

declare dso_local %struct.bcma_corecfg* @bcma_alloc_corecfg(i64, i32, i64, i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @bhnd_vendor_name(i64) #1

declare dso_local i32 @bhnd_find_core_name(i64, i64) #1

declare dso_local i32 @bcma_erom_parse_mport(%struct.bcma_erom*, %struct.bcma_erom_mport*) #1

declare dso_local %struct.bcma_mport* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bcma_mport*, i32) #1

declare dso_local i32 @bcma_erom_peek32(%struct.bcma_erom*, i32*) #1

declare dso_local i64 @BCMA_EROM_ENTRY_IS(i32, i32) #1

declare dso_local i64 @BCMA_EROM_GET_ATTR(i32, i32) #1

declare dso_local i32 @bcma_erom_corecfg_fill_port_regions(%struct.bcma_erom*, %struct.bcma_corecfg*, i64, i64) #1

declare dso_local i32 @bcma_free_corecfg(%struct.bcma_corecfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
