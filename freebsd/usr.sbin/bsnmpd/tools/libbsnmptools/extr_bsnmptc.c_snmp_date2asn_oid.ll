; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_date2asn_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_date2asn_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }

@snmp_date2asn_oid.UTC = internal constant [3 x i8] c"UTC", align 1
@SNMP_DATETIME_OCTETS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Date value %s not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.asn_oid*)* @snmp_date2asn_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_date2asn_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  %10 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %11 = load i64, i64* @SNMP_DATETIME_OCTETS, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @snmp_suboid_append(%struct.asn_oid* %10, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %261

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i64, i64* @errno, align 8
  store i64 %18, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strtoul(i8* %19, i8** %6, i32 10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 65535
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %256

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* @errno, align 8
  br label %26

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %258

32:                                               ; preds = %26
  %33 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 65280
  %36 = ashr i32 %35, 8
  %37 = call i64 @snmp_suboid_append(%struct.asn_oid* %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %261

40:                                               ; preds = %32
  %41 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 255
  %44 = call i64 @snmp_suboid_append(%struct.asn_oid* %41, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %261

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %7, align 8
  %50 = load i64, i64* @errno, align 8
  store i64 %50, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strtoul(i8* %51, i8** %6, i32 10)
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* @errno, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %256

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* @errno, align 8
  br label %58

58:                                               ; preds = %56
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 45
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %258

64:                                               ; preds = %58
  %65 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @snmp_suboid_append(%struct.asn_oid* %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i8* null, i8** %3, align 8
  br label %261

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %7, align 8
  %73 = load i64, i64* @errno, align 8
  store i64 %73, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strtoul(i8* %74, i8** %6, i32 10)
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* @errno, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %256

79:                                               ; preds = %70
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* @errno, align 8
  br label %81

81:                                               ; preds = %79
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 45
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %258

87:                                               ; preds = %81
  %88 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @snmp_suboid_append(%struct.asn_oid* %88, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i8* null, i8** %3, align 8
  br label %261

93:                                               ; preds = %87
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %7, align 8
  %96 = load i64, i64* @errno, align 8
  store i64 %96, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @strtoul(i8* %97, i8** %6, i32 10)
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %256

102:                                              ; preds = %93
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* @errno, align 8
  br label %104

104:                                              ; preds = %102
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 58
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %258

110:                                              ; preds = %104
  %111 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @snmp_suboid_append(%struct.asn_oid* %111, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i8* null, i8** %3, align 8
  br label %261

116:                                              ; preds = %110
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %7, align 8
  %119 = load i64, i64* @errno, align 8
  store i64 %119, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @strtoul(i8* %120, i8** %6, i32 10)
  store i32 %121, i32* %9, align 4
  %122 = load i64, i64* @errno, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %256

125:                                              ; preds = %116
  %126 = load i64, i64* %8, align 8
  store i64 %126, i64* @errno, align 8
  br label %127

127:                                              ; preds = %125
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 58
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %258

133:                                              ; preds = %127
  %134 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @snmp_suboid_append(%struct.asn_oid* %134, i32 %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i8* null, i8** %3, align 8
  br label %261

139:                                              ; preds = %133
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %7, align 8
  %142 = load i64, i64* @errno, align 8
  store i64 %142, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @strtoul(i8* %143, i8** %6, i32 10)
  store i32 %144, i32* %9, align 4
  %145 = load i64, i64* @errno, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %256

148:                                              ; preds = %139
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* @errno, align 8
  br label %150

150:                                              ; preds = %148
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 46
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %258

156:                                              ; preds = %150
  %157 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @snmp_suboid_append(%struct.asn_oid* %157, i32 %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i8* null, i8** %3, align 8
  br label %261

162:                                              ; preds = %156
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8* %164, i8** %7, align 8
  %165 = load i64, i64* @errno, align 8
  store i64 %165, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @strtoul(i8* %166, i8** %6, i32 10)
  store i32 %167, i32* %9, align 4
  %168 = load i64, i64* @errno, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %256

171:                                              ; preds = %162
  %172 = load i64, i64* %8, align 8
  store i64 %172, i64* @errno, align 8
  br label %173

173:                                              ; preds = %171
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 44
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %258

179:                                              ; preds = %173
  %180 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i64 @snmp_suboid_append(%struct.asn_oid* %180, i32 %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i8* null, i8** %3, align 8
  br label %261

185:                                              ; preds = %179
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %7, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i64 @strncmp(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @snmp_date2asn_oid.UTC, i64 0, i64 0), i32 3)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  store i8* %193, i8** %7, align 8
  br label %194

194:                                              ; preds = %191, %185
  %195 = load i8*, i8** %7, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 45
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %7, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 43
  br i1 %203, label %204, label %213

204:                                              ; preds = %199, %194
  %205 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = call i64 @snmp_suboid_append(%struct.asn_oid* %205, i32 %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  store i8* null, i8** %3, align 8
  br label %261

212:                                              ; preds = %204
  br label %214

213:                                              ; preds = %199
  br label %258

214:                                              ; preds = %212
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  store i8* %216, i8** %7, align 8
  %217 = load i64, i64* @errno, align 8
  store i64 %217, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @strtoul(i8* %218, i8** %6, i32 10)
  store i32 %219, i32* %9, align 4
  %220 = load i64, i64* @errno, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %256

223:                                              ; preds = %214
  %224 = load i64, i64* %8, align 8
  store i64 %224, i64* @errno, align 8
  br label %225

225:                                              ; preds = %223
  %226 = load i8*, i8** %6, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 58
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %258

231:                                              ; preds = %225
  %232 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i64 @snmp_suboid_append(%struct.asn_oid* %232, i32 %233)
  %235 = icmp slt i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i8* null, i8** %3, align 8
  br label %261

237:                                              ; preds = %231
  %238 = load i8*, i8** %6, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  store i8* %239, i8** %7, align 8
  %240 = load i64, i64* @errno, align 8
  store i64 %240, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 @strtoul(i8* %241, i8** %6, i32 10)
  store i32 %242, i32* %9, align 4
  %243 = load i64, i64* @errno, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %256

246:                                              ; preds = %237
  %247 = load i64, i64* %8, align 8
  store i64 %247, i64* @errno, align 8
  br label %248

248:                                              ; preds = %246
  %249 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i64 @snmp_suboid_append(%struct.asn_oid* %249, i32 %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i8* null, i8** %3, align 8
  br label %261

254:                                              ; preds = %248
  %255 = load i8*, i8** %6, align 8
  store i8* %255, i8** %3, align 8
  br label %261

256:                                              ; preds = %245, %222, %170, %147, %124, %101, %78, %55, %23
  %257 = load i64, i64* %8, align 8
  store i64 %257, i64* @errno, align 8
  br label %258

258:                                              ; preds = %256, %230, %213, %178, %155, %132, %109, %86, %63, %31
  %259 = load i8*, i8** %4, align 8
  %260 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %259)
  store i8* null, i8** %3, align 8
  br label %261

261:                                              ; preds = %258, %254, %253, %236, %211, %184, %161, %138, %115, %92, %69, %46, %39, %15
  %262 = load i8*, i8** %3, align 8
  ret i8* %262
}

declare dso_local i64 @snmp_suboid_append(%struct.asn_oid*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
