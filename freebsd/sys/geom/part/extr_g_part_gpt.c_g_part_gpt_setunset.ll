; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_setunset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_setunset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.g_part_entry = type { i32, i32, i32 }
%struct.g_part_gpt_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.g_part_gpt_table = type { i32*, i64 }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.g_provider* }

@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"lenovofix\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bootme\00", align 1
@GPT_ENT_ATTR_BOOTME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"bootonce\00", align 1
@GPT_ENT_ATTR_BOOTONCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"bootfailed\00", align 1
@GPT_ENT_ATTR_BOOTFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, i8*, i32)* @g_part_gpt_setunset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_gpt_setunset(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_part_gpt_entry*, align 8
  %11 = alloca %struct.g_part_gpt_table*, align 8
  %12 = alloca %struct.g_provider*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %17 = bitcast %struct.g_part_table* %16 to %struct.g_part_gpt_table*
  store %struct.g_part_gpt_table* %17, %struct.g_part_gpt_table** %11, align 8
  %18 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %19 = bitcast %struct.g_part_entry* %18 to %struct.g_part_gpt_entry*
  store %struct.g_part_gpt_entry* %19, %struct.g_part_gpt_entry** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %117

23:                                               ; preds = %4
  %24 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %11, align 8
  %25 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %30 = icmp eq %struct.g_part_gpt_entry* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %5, align 4
  br label %245

33:                                               ; preds = %28
  %34 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %35 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NDOSPART, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %245

41:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @NDOSPART, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %11, align 8
  %48 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @DOSPARTOFF, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @DOSPARTSIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %59 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 128, i32 0
  br label %69

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %63
  %70 = phi i32 [ %67, %63 ], [ 0, %68 ]
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %42

76:                                               ; preds = %42
  br label %116

77:                                               ; preds = %23
  %78 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %79 = icmp ne %struct.g_part_gpt_entry* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %5, align 4
  br label %245

82:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @NDOSPART, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %11, align 8
  %89 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @DOSPARTOFF, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @DOSPARTSIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 238
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 128, i32 0
  br label %108

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32 [ %106, %102 ], [ 0, %107 ]
  %110 = load i32*, i32** %13, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %83

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115, %76
  store i32 0, i32* %5, align 4
  br label %245

117:                                              ; preds = %4
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @strcasecmp(i8* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %117
  %122 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %123 = icmp ne %struct.g_part_gpt_entry* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %5, align 4
  br label %245

126:                                              ; preds = %121
  %127 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %128 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call %struct.TYPE_6__* @LIST_FIRST(i32* %130)
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.g_provider*, %struct.g_provider** %132, align 8
  store %struct.g_provider* %133, %struct.g_provider** %12, align 8
  %134 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %11, align 8
  %135 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @DOSPARTOFF, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* @DOSPARTSIZE, align 4
  %141 = load i32, i32* @NDOSPART, align 4
  %142 = mul nsw i32 %140, %141
  %143 = call i32 @bzero(i32* %139, i32 %142)
  %144 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %11, align 8
  %145 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  %151 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %152 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %155 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %153, %156
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* @UINT32_MAX, align 4
  %160 = call i32 @MIN(i32 %158, i32 %159)
  %161 = call i32 @gpt_write_mbr_entry(i32* %146, i32 %150, i32 238, i32 1, i32 %160)
  store i32 0, i32* %5, align 4
  br label %245

162:                                              ; preds = %117
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %165 = icmp eq %struct.g_part_gpt_entry* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32, i32* @ENODEV, align 4
  store i32 %167, i32* %5, align 4
  br label %245

168:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = call i64 @strcasecmp(i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %174 = load i32, i32* %14, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %14, align 4
  br label %201

176:                                              ; preds = %168
  %177 = load i8*, i8** %8, align 8
  %178 = call i64 @strcasecmp(i8* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %182 = load i32, i32* %14, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %188 = load i32, i32* %14, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %186, %180
  br label %200

191:                                              ; preds = %176
  %192 = load i8*, i8** %8, align 8
  %193 = call i64 @strcasecmp(i8* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %197 = load i32, i32* %14, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199, %190
  br label %201

201:                                              ; preds = %200, %172
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* %5, align 4
  br label %245

206:                                              ; preds = %201
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %211 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %213, %214
  store i32 %215, i32* %14, align 4
  br label %224

216:                                              ; preds = %206
  %217 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %218 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %14, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  store i32 %223, i32* %14, align 4
  br label %224

224:                                              ; preds = %216, %209
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %227 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %225, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %224
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %234 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 4
  %236 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %237 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %242 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %241, i32 0, i32 1
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %231
  br label %244

244:                                              ; preds = %243, %224
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %204, %166, %126, %124, %116, %80, %39, %31
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @gpt_write_mbr_entry(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
