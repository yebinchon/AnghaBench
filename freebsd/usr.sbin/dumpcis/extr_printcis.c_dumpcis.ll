; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dumpcis.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dumpcis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_list = type { %struct.tuple*, %struct.tuple_list* }
%struct.tuple = type { i32, i32, i32*, %struct.tuple* }

@.str = private unnamed_addr constant [42 x i8] c"Tuple #%d, code = 0x%x (%s), length = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"    %03x: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Common\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\09Checksum from offset %d, length %d, value is 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\09Long link to attribute memory, address 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\09Long link to common memory, address 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Attribute\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\09PCMCIA ID = 0x%x, OEM ID = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpcis(%struct.tuple_list* %0) #0 {
  %2 = alloca %struct.tuple_list*, align 8
  %3 = alloca %struct.tuple*, align 8
  %4 = alloca %struct.tuple_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.tuple_list* %0, %struct.tuple_list** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.tuple_list*, %struct.tuple_list** %2, align 8
  store %struct.tuple_list* %11, %struct.tuple_list** %4, align 8
  br label %12

12:                                               ; preds = %249, %1
  %13 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %14 = icmp ne %struct.tuple_list* %13, null
  br i1 %14, label %15, label %253

15:                                               ; preds = %12
  %16 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %17 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %16, i32 0, i32 0
  %18 = load %struct.tuple*, %struct.tuple** %17, align 8
  store %struct.tuple* %18, %struct.tuple** %3, align 8
  br label %19

19:                                               ; preds = %244, %15
  %20 = load %struct.tuple*, %struct.tuple** %3, align 8
  %21 = icmp ne %struct.tuple* %20, null
  br i1 %21, label %22, label %248

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.tuple*, %struct.tuple** %3, align 8
  %26 = getelementptr inbounds %struct.tuple, %struct.tuple* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tuple*, %struct.tuple** %3, align 8
  %29 = getelementptr inbounds %struct.tuple, %struct.tuple* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @tuple_name(i32 %30)
  %32 = load %struct.tuple*, %struct.tuple** %3, align 8
  %33 = getelementptr inbounds %struct.tuple, %struct.tuple* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i8* %31, i32 %34)
  %36 = load %struct.tuple*, %struct.tuple** %3, align 8
  %37 = getelementptr inbounds %struct.tuple, %struct.tuple* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load %struct.tuple*, %struct.tuple** %3, align 8
  %40 = getelementptr inbounds %struct.tuple, %struct.tuple* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %68, %22
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 16, %54 ]
  %57 = icmp slt i32 %49, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %55
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 16
  store i32 %71, i32* %6, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  store i32* %73, i32** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 16
  store i32 %75, i32* %7, align 4
  br label %42

76:                                               ; preds = %42
  %77 = load %struct.tuple*, %struct.tuple** %3, align 8
  %78 = getelementptr inbounds %struct.tuple, %struct.tuple* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %80 [
    i32 130, label %81
    i32 145, label %89
    i32 147, label %92
    i32 133, label %95
    i32 150, label %103
    i32 149, label %111
    i32 135, label %127
    i32 134, label %133
    i32 138, label %139
    i32 151, label %147
    i32 131, label %148
    i32 136, label %156
    i32 137, label %156
    i32 146, label %157
    i32 148, label %160
    i32 141, label %163
    i32 142, label %163
    i32 144, label %171
    i32 143, label %171
    i32 132, label %179
    i32 139, label %190
    i32 140, label %200
    i32 128, label %227
    i32 129, label %235
  ]

80:                                               ; preds = %76
  br label %243

81:                                               ; preds = %76
  %82 = load %struct.tuple*, %struct.tuple** %3, align 8
  %83 = getelementptr inbounds %struct.tuple, %struct.tuple* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.tuple*, %struct.tuple** %3, align 8
  %86 = getelementptr inbounds %struct.tuple, %struct.tuple* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dump_device_desc(i32* %84, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %243

89:                                               ; preds = %76
  %90 = load %struct.tuple*, %struct.tuple** %3, align 8
  %91 = call i32 @dump_config_map(%struct.tuple* %90)
  br label %243

92:                                               ; preds = %76
  %93 = load %struct.tuple*, %struct.tuple** %3, align 8
  %94 = call i32 @dump_cis_config(%struct.tuple* %93)
  br label %243

95:                                               ; preds = %76
  %96 = load %struct.tuple*, %struct.tuple** %3, align 8
  %97 = getelementptr inbounds %struct.tuple, %struct.tuple* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.tuple*, %struct.tuple** %3, align 8
  %100 = getelementptr inbounds %struct.tuple, %struct.tuple* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dump_longlink_mfc(i32* %98, i32 %101)
  br label %243

103:                                              ; preds = %76
  %104 = load %struct.tuple*, %struct.tuple** %3, align 8
  %105 = getelementptr inbounds %struct.tuple, %struct.tuple* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.tuple*, %struct.tuple** %3, align 8
  %108 = getelementptr inbounds %struct.tuple, %struct.tuple* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dump_bar(i32* %106, i32 %109)
  br label %243

111:                                              ; preds = %76
  %112 = load %struct.tuple*, %struct.tuple** %3, align 8
  %113 = getelementptr inbounds %struct.tuple, %struct.tuple* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @tpl16(i32* %114)
  %116 = load %struct.tuple*, %struct.tuple** %3, align 8
  %117 = getelementptr inbounds %struct.tuple, %struct.tuple* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = call i32 @tpl16(i32* %119)
  %121 = load %struct.tuple*, %struct.tuple** %3, align 8
  %122 = getelementptr inbounds %struct.tuple, %struct.tuple* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %120, i32 %125)
  br label %243

127:                                              ; preds = %76
  %128 = load %struct.tuple*, %struct.tuple** %3, align 8
  %129 = getelementptr inbounds %struct.tuple, %struct.tuple* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @tpl32(i32* %130)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  br label %243

133:                                              ; preds = %76
  %134 = load %struct.tuple*, %struct.tuple** %3, align 8
  %135 = getelementptr inbounds %struct.tuple, %struct.tuple* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @tpl32(i32* %136)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  br label %243

139:                                              ; preds = %76
  %140 = load %struct.tuple*, %struct.tuple** %3, align 8
  %141 = getelementptr inbounds %struct.tuple, %struct.tuple* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.tuple*, %struct.tuple** %3, align 8
  %144 = getelementptr inbounds %struct.tuple, %struct.tuple* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dump_info_v1(i32* %142, i32 %145)
  br label %243

147:                                              ; preds = %76
  br label %243

148:                                              ; preds = %76
  %149 = load %struct.tuple*, %struct.tuple** %3, align 8
  %150 = getelementptr inbounds %struct.tuple, %struct.tuple* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.tuple*, %struct.tuple** %3, align 8
  %153 = getelementptr inbounds %struct.tuple, %struct.tuple* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dump_device_desc(i32* %151, i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %243

156:                                              ; preds = %76, %76
  br label %243

157:                                              ; preds = %76
  %158 = load %struct.tuple*, %struct.tuple** %3, align 8
  %159 = call i32 @dump_config_map(%struct.tuple* %158)
  br label %243

160:                                              ; preds = %76
  %161 = load %struct.tuple*, %struct.tuple** %3, align 8
  %162 = call i32 @dump_cis_config(%struct.tuple* %161)
  br label %243

163:                                              ; preds = %76, %76
  %164 = load %struct.tuple*, %struct.tuple** %3, align 8
  %165 = getelementptr inbounds %struct.tuple, %struct.tuple* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.tuple*, %struct.tuple** %3, align 8
  %168 = getelementptr inbounds %struct.tuple, %struct.tuple* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dump_other_cond(i32* %166, i32 %169)
  br label %243

171:                                              ; preds = %76, %76
  %172 = load %struct.tuple*, %struct.tuple** %3, align 8
  %173 = getelementptr inbounds %struct.tuple, %struct.tuple* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.tuple*, %struct.tuple** %3, align 8
  %176 = getelementptr inbounds %struct.tuple, %struct.tuple* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dump_device_geo(i32* %174, i32 %177)
  br label %243

179:                                              ; preds = %76
  %180 = load %struct.tuple*, %struct.tuple** %3, align 8
  %181 = getelementptr inbounds %struct.tuple, %struct.tuple* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @tpl16(i32* %182)
  %184 = load %struct.tuple*, %struct.tuple** %3, align 8
  %185 = getelementptr inbounds %struct.tuple, %struct.tuple* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = call i32 @tpl16(i32* %187)
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %188)
  br label %243

190:                                              ; preds = %76
  %191 = load %struct.tuple*, %struct.tuple** %3, align 8
  %192 = getelementptr inbounds %struct.tuple, %struct.tuple* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %10, align 4
  %196 = load %struct.tuple*, %struct.tuple** %3, align 8
  %197 = getelementptr inbounds %struct.tuple, %struct.tuple* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @dump_func_id(i32* %198)
  br label %243

200:                                              ; preds = %76
  %201 = load i32, i32* %10, align 4
  switch i32 %201, label %226 [
    i32 2, label %202
    i32 4, label %210
    i32 6, label %218
  ]

202:                                              ; preds = %200
  %203 = load %struct.tuple*, %struct.tuple** %3, align 8
  %204 = getelementptr inbounds %struct.tuple, %struct.tuple* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.tuple*, %struct.tuple** %3, align 8
  %207 = getelementptr inbounds %struct.tuple, %struct.tuple* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dump_serial_ext(i32* %205, i32 %208)
  br label %226

210:                                              ; preds = %200
  %211 = load %struct.tuple*, %struct.tuple** %3, align 8
  %212 = getelementptr inbounds %struct.tuple, %struct.tuple* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.tuple*, %struct.tuple** %3, align 8
  %215 = getelementptr inbounds %struct.tuple, %struct.tuple* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dump_disk_ext(i32* %213, i32 %216)
  br label %226

218:                                              ; preds = %200
  %219 = load %struct.tuple*, %struct.tuple** %3, align 8
  %220 = getelementptr inbounds %struct.tuple, %struct.tuple* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.tuple*, %struct.tuple** %3, align 8
  %223 = getelementptr inbounds %struct.tuple, %struct.tuple* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dump_network_ext(i32* %221, i32 %224)
  br label %226

226:                                              ; preds = %200, %218, %210, %202
  br label %243

227:                                              ; preds = %76
  %228 = load %struct.tuple*, %struct.tuple** %3, align 8
  %229 = getelementptr inbounds %struct.tuple, %struct.tuple* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.tuple*, %struct.tuple** %3, align 8
  %232 = getelementptr inbounds %struct.tuple, %struct.tuple* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @dump_info_v2(i32* %230, i32 %233)
  br label %243

235:                                              ; preds = %76
  %236 = load %struct.tuple*, %struct.tuple** %3, align 8
  %237 = getelementptr inbounds %struct.tuple, %struct.tuple* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.tuple*, %struct.tuple** %3, align 8
  %240 = getelementptr inbounds %struct.tuple, %struct.tuple* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @dump_org(i32* %238, i32 %241)
  br label %243

243:                                              ; preds = %235, %227, %226, %190, %179, %171, %163, %160, %157, %156, %148, %147, %139, %133, %127, %111, %103, %95, %92, %89, %81, %80
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.tuple*, %struct.tuple** %3, align 8
  %246 = getelementptr inbounds %struct.tuple, %struct.tuple* %245, i32 0, i32 3
  %247 = load %struct.tuple*, %struct.tuple** %246, align 8
  store %struct.tuple* %247, %struct.tuple** %3, align 8
  br label %19

248:                                              ; preds = %19
  br label %249

249:                                              ; preds = %248
  %250 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %251 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %250, i32 0, i32 1
  %252 = load %struct.tuple_list*, %struct.tuple_list** %251, align 8
  store %struct.tuple_list* %252, %struct.tuple_list** %4, align 8
  br label %12

253:                                              ; preds = %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @tuple_name(i32) #1

declare dso_local i32 @dump_device_desc(i32*, i32, i8*) #1

declare dso_local i32 @dump_config_map(%struct.tuple*) #1

declare dso_local i32 @dump_cis_config(%struct.tuple*) #1

declare dso_local i32 @dump_longlink_mfc(i32*, i32) #1

declare dso_local i32 @dump_bar(i32*, i32) #1

declare dso_local i32 @tpl16(i32*) #1

declare dso_local i32 @tpl32(i32*) #1

declare dso_local i32 @dump_info_v1(i32*, i32) #1

declare dso_local i32 @dump_other_cond(i32*, i32) #1

declare dso_local i32 @dump_device_geo(i32*, i32) #1

declare dso_local i32 @dump_func_id(i32*) #1

declare dso_local i32 @dump_serial_ext(i32*, i32) #1

declare dso_local i32 @dump_disk_ext(i32*, i32) #1

declare dso_local i32 @dump_network_ext(i32*, i32) #1

declare dso_local i32 @dump_info_v2(i32*, i32) #1

declare dso_local i32 @dump_org(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
