; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_probe_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_probe_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32 }
%struct.isa_device = type { i64, i64, i32, i32, i32 (i32, %struct.isa_config.0*, i32)* }
%struct.isa_config.0 = type opaque

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"isa_probe_children: disabling PnP devices\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ISA_ORDER_PNPBIOS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"isa_probe_children: probing non-PnP devices\0A\00", align 1
@kern_ident = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"non-PNP ISA device will be removed from GENERIC in FreeBSD 12.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"isa_probe_children: probing PnP devices\0A\00", align 1
@isa_running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_probe_children(i32 %0) #0 {
  %2 = alloca %struct.isa_config, align 4
  %3 = alloca %struct.isa_device*, align 8
  %4 = alloca %struct.isa_config*, align 8
  %5 = alloca %struct.isa_config, align 4
  %6 = alloca %struct.isa_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bus_generic_probe(i32 %12)
  %14 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @device_get_children(i32 %15, %struct.isa_config** %4, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %241

19:                                               ; preds = %1
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.isa_config* @malloc(i32 4, i32 %25, i32 %28)
  store %struct.isa_config* %29, %struct.isa_config** %6, align 8
  %30 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %31 = icmp eq %struct.isa_config* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %34 = load i32, i32* @M_TEMP, align 4
  %35 = call i32 @free(%struct.isa_config* %33, i32 %34)
  br label %241

36:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %42, i64 %44
  %46 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.isa_device* @DEVTOISA(i32 %47)
  store %struct.isa_device* %48, %struct.isa_device** %3, align 8
  %49 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %50 = call i32 @bzero(%struct.isa_config* %49, i32 4)
  %51 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %52 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %51, i32 0, i32 4
  %53 = load i32 (i32, %struct.isa_config.0*, i32)*, i32 (i32, %struct.isa_config.0*, i32)** %52, align 8
  %54 = icmp ne i32 (i32, %struct.isa_config.0*, i32)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %41
  %56 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %57 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %56, i32 0, i32 4
  %58 = load i32 (i32, %struct.isa_config.0*, i32)*, i32 (i32, %struct.isa_config.0*, i32)** %57, align 8
  %59 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %60 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %63 = bitcast %struct.isa_config* %62 to %struct.isa_config.0*
  %64 = call i32 %58(i32 %61, %struct.isa_config.0* %63, i32 0)
  br label %65

65:                                               ; preds = %55, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %71 = load i32, i32* @M_TEMP, align 4
  %72 = call i32 @free(%struct.isa_config* %70, i32 %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %116, %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %73
  %78 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %78, i64 %80
  %82 = bitcast %struct.isa_config* %5 to i8*
  %83 = bitcast %struct.isa_config* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.isa_device* @DEVTOISA(i32 %85)
  store %struct.isa_device* %86, %struct.isa_device** %3, align 8
  %87 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %88 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ISA_ORDER_PNPBIOS, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %116

93:                                               ; preds = %77
  %94 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %95 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %94, i32 0, i32 2
  %96 = call i64 @TAILQ_EMPTY(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @isa_assign_resources(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %116

104:                                              ; preds = %98, %93
  %105 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_probe_and_attach(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @isa_claim_resources(i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %109, %104
  br label %116

116:                                              ; preds = %115, %103, %92
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %73

119:                                              ; preds = %73
  %120 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %121 = load i32, i32* @M_TEMP, align 4
  %122 = call i32 @free(%struct.isa_config* %120, i32 %121)
  %123 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bus_enumerate_hinted_children(i32 %124)
  %126 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @device_get_children(i32 %127, %struct.isa_config** %4, i32* %7)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %241

131:                                              ; preds = %119
  %132 = load i64, i64* @bootverbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %186, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %189

141:                                              ; preds = %137
  %142 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %142, i64 %144
  %146 = bitcast %struct.isa_config* %5 to i8*
  %147 = bitcast %struct.isa_config* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 4, i1 false)
  %148 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.isa_device* @DEVTOISA(i32 %149)
  store %struct.isa_device* %150, %struct.isa_device** %3, align 8
  %151 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @device_is_attached(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %141
  %156 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %157 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %156, i32 0, i32 2
  %158 = call i64 @TAILQ_EMPTY(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155, %141
  br label %186

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_probe_and_attach(i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %161
  %168 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %169 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load i32, i32* @kern_ident, align 4
  %174 = call i64 @strcmp(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @device_is_attached(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %185

185:                                              ; preds = %181, %176, %172, %167, %161
  br label %186

186:                                              ; preds = %185, %160
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %137

189:                                              ; preds = %137
  %190 = load i64, i64* @bootverbose, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %234, %194
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %237

199:                                              ; preds = %195
  %200 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %200, i64 %202
  %204 = bitcast %struct.isa_config* %5 to i8*
  %205 = bitcast %struct.isa_config* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 4 %205, i64 4, i1 false)
  %206 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.isa_device* @DEVTOISA(i32 %207)
  store %struct.isa_device* %208, %struct.isa_device** %3, align 8
  %209 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @device_is_attached(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %199
  %214 = load %struct.isa_device*, %struct.isa_device** %3, align 8
  %215 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %214, i32 0, i32 2
  %216 = call i64 @TAILQ_EMPTY(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213, %199
  br label %234

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @isa_assign_resources(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @device_probe_and_attach(i32 %226)
  %228 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %2, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %5, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @isa_claim_resources(i32 %229, i32 %231)
  br label %233

233:                                              ; preds = %224, %219
  br label %234

234:                                              ; preds = %233, %218
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %195

237:                                              ; preds = %195
  %238 = load %struct.isa_config*, %struct.isa_config** %4, align 8
  %239 = load i32, i32* @M_TEMP, align 4
  %240 = call i32 @free(%struct.isa_config* %238, i32 %239)
  store i32 1, i32* @isa_running, align 4
  br label %241

241:                                              ; preds = %237, %130, %32, %18
  ret void
}

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i64 @device_get_children(i32, %struct.isa_config**, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.isa_config* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.isa_config*, i32) #1

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local i32 @bzero(%struct.isa_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @isa_assign_resources(i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @isa_claim_resources(i32, i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
