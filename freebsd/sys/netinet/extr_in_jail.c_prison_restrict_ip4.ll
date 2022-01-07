; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_jail.c_prison_restrict_ip4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_jail.c_prison_restrict_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, i32, %struct.in_addr*, %struct.prison* }
%struct.in_addr = type { i64 }

@PR_IP4_USER = common dso_local global i32 0, align 4
@M_PRISON = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_restrict_ip4(%struct.prison* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.prison*, align 8
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %10 = load %struct.prison*, %struct.prison** %4, align 8
  %11 = getelementptr inbounds %struct.prison, %struct.prison* %10, i32 0, i32 3
  %12 = load %struct.prison*, %struct.prison** %11, align 8
  store %struct.prison* %12, %struct.prison** %9, align 8
  %13 = load %struct.prison*, %struct.prison** %4, align 8
  %14 = getelementptr inbounds %struct.prison, %struct.prison* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PR_IP4_USER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %113, label %19

19:                                               ; preds = %2
  %20 = load %struct.prison*, %struct.prison** %4, align 8
  %21 = getelementptr inbounds %struct.prison, %struct.prison* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.prison*, %struct.prison** %9, align 8
  %24 = getelementptr inbounds %struct.prison, %struct.prison* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  %28 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %29 = icmp eq %struct.in_addr* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.prison*, %struct.prison** %9, align 8
  %32 = getelementptr inbounds %struct.prison, %struct.prison* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @M_PRISON, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call %struct.in_addr* @malloc(i32 %36, i32 %37, i32 %38)
  store %struct.in_addr* %39, %struct.in_addr** %5, align 8
  %40 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %41 = icmp ne %struct.in_addr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %46 = icmp ne %struct.in_addr* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.prison*, %struct.prison** %9, align 8
  %49 = getelementptr inbounds %struct.prison, %struct.prison* %48, i32 0, i32 2
  %50 = load %struct.in_addr*, %struct.in_addr** %49, align 8
  %51 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %52 = load %struct.prison*, %struct.prison** %9, align 8
  %53 = getelementptr inbounds %struct.prison, %struct.prison* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @bcopy(%struct.in_addr* %50, %struct.in_addr* %51, i32 %57)
  %59 = load %struct.prison*, %struct.prison** %4, align 8
  %60 = getelementptr inbounds %struct.prison, %struct.prison* %59, i32 0, i32 2
  %61 = load %struct.in_addr*, %struct.in_addr** %60, align 8
  %62 = load i32, i32* @M_PRISON, align 4
  %63 = call i32 @free(%struct.in_addr* %61, i32 %62)
  %64 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %65 = load %struct.prison*, %struct.prison** %4, align 8
  %66 = getelementptr inbounds %struct.prison, %struct.prison* %65, i32 0, i32 2
  store %struct.in_addr* %64, %struct.in_addr** %66, align 8
  %67 = load %struct.prison*, %struct.prison** %9, align 8
  %68 = getelementptr inbounds %struct.prison, %struct.prison* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.prison*, %struct.prison** %4, align 8
  %71 = getelementptr inbounds %struct.prison, %struct.prison* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %47, %44
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %267

74:                                               ; preds = %19
  %75 = load %struct.prison*, %struct.prison** %9, align 8
  %76 = getelementptr inbounds %struct.prison, %struct.prison* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.prison*, %struct.prison** %4, align 8
  %79 = getelementptr inbounds %struct.prison, %struct.prison* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.prison*, %struct.prison** %4, align 8
  %81 = getelementptr inbounds %struct.prison, %struct.prison* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %74
  %85 = load %struct.prison*, %struct.prison** %9, align 8
  %86 = getelementptr inbounds %struct.prison, %struct.prison* %85, i32 0, i32 2
  %87 = load %struct.in_addr*, %struct.in_addr** %86, align 8
  %88 = load %struct.prison*, %struct.prison** %4, align 8
  %89 = getelementptr inbounds %struct.prison, %struct.prison* %88, i32 0, i32 2
  %90 = load %struct.in_addr*, %struct.in_addr** %89, align 8
  %91 = load %struct.prison*, %struct.prison** %4, align 8
  %92 = getelementptr inbounds %struct.prison, %struct.prison* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @bcopy(%struct.in_addr* %87, %struct.in_addr* %90, i32 %96)
  br label %112

98:                                               ; preds = %74
  %99 = load %struct.prison*, %struct.prison** %4, align 8
  %100 = getelementptr inbounds %struct.prison, %struct.prison* %99, i32 0, i32 2
  %101 = load %struct.in_addr*, %struct.in_addr** %100, align 8
  %102 = icmp ne %struct.in_addr* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.prison*, %struct.prison** %4, align 8
  %105 = getelementptr inbounds %struct.prison, %struct.prison* %104, i32 0, i32 2
  %106 = load %struct.in_addr*, %struct.in_addr** %105, align 8
  %107 = load i32, i32* @M_PRISON, align 4
  %108 = call i32 @free(%struct.in_addr* %106, i32 %107)
  %109 = load %struct.prison*, %struct.prison** %4, align 8
  %110 = getelementptr inbounds %struct.prison, %struct.prison* %109, i32 0, i32 2
  store %struct.in_addr* null, %struct.in_addr** %110, align 8
  br label %111

111:                                              ; preds = %103, %98
  br label %112

112:                                              ; preds = %111, %84
  br label %266

113:                                              ; preds = %2
  %114 = load %struct.prison*, %struct.prison** %4, align 8
  %115 = getelementptr inbounds %struct.prison, %struct.prison* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %265

118:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %143, %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.prison*, %struct.prison** %9, align 8
  %122 = getelementptr inbounds %struct.prison, %struct.prison* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %119
  %126 = load %struct.prison*, %struct.prison** %4, align 8
  %127 = getelementptr inbounds %struct.prison, %struct.prison* %126, i32 0, i32 2
  %128 = load %struct.in_addr*, %struct.in_addr** %127, align 8
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %128, i64 0
  %130 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.prison*, %struct.prison** %9, align 8
  %133 = getelementptr inbounds %struct.prison, %struct.prison* %132, i32 0, i32 2
  %134 = load %struct.in_addr*, %struct.in_addr** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %134, i64 %136
  %138 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %131, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %146

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %119

146:                                              ; preds = %141, %119
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.prison*, %struct.prison** %9, align 8
  %149 = getelementptr inbounds %struct.prison, %struct.prison* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 1, i32* %6, align 4
  br label %169

153:                                              ; preds = %146
  %154 = load %struct.prison*, %struct.prison** %4, align 8
  %155 = getelementptr inbounds %struct.prison, %struct.prison* %154, i32 0, i32 2
  %156 = load %struct.in_addr*, %struct.in_addr** %155, align 8
  %157 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %156, i64 1
  %158 = load %struct.prison*, %struct.prison** %4, align 8
  %159 = getelementptr inbounds %struct.prison, %struct.prison* %158, i32 0, i32 2
  %160 = load %struct.in_addr*, %struct.in_addr** %159, align 8
  %161 = load %struct.prison*, %struct.prison** %4, align 8
  %162 = getelementptr inbounds %struct.prison, %struct.prison* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @bcopy(%struct.in_addr* %157, %struct.in_addr* %160, i32 %167)
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %153, %152
  store i32 1, i32* %7, align 4
  br label %170

170:                                              ; preds = %250, %192, %169
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.prison*, %struct.prison** %4, align 8
  %173 = getelementptr inbounds %struct.prison, %struct.prison* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %251

176:                                              ; preds = %170
  %177 = load %struct.prison*, %struct.prison** %4, align 8
  %178 = getelementptr inbounds %struct.prison, %struct.prison* %177, i32 0, i32 2
  %179 = load %struct.in_addr*, %struct.in_addr** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %179, i64 %181
  %183 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.prison*, %struct.prison** %9, align 8
  %186 = getelementptr inbounds %struct.prison, %struct.prison* %185, i32 0, i32 2
  %187 = load %struct.in_addr*, %struct.in_addr** %186, align 8
  %188 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %187, i64 0
  %189 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %184, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %176
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %170

195:                                              ; preds = %176
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.prison*, %struct.prison** %9, align 8
  %198 = getelementptr inbounds %struct.prison, %struct.prison* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %216

202:                                              ; preds = %195
  %203 = load %struct.prison*, %struct.prison** %4, align 8
  %204 = getelementptr inbounds %struct.prison, %struct.prison* %203, i32 0, i32 2
  %205 = load %struct.in_addr*, %struct.in_addr** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %205, i64 %207
  %209 = load %struct.prison*, %struct.prison** %9, align 8
  %210 = getelementptr inbounds %struct.prison, %struct.prison* %209, i32 0, i32 2
  %211 = load %struct.in_addr*, %struct.in_addr** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %211, i64 %213
  %215 = call i32 @prison_qcmp_v4(%struct.in_addr* %208, %struct.in_addr* %214)
  br label %216

216:                                              ; preds = %202, %201
  %217 = phi i32 [ -1, %201 ], [ %215, %202 ]
  switch i32 %217, label %250 [
    i32 -1, label %218
    i32 0, label %242
    i32 1, label %247
  ]

218:                                              ; preds = %216
  %219 = load %struct.prison*, %struct.prison** %4, align 8
  %220 = getelementptr inbounds %struct.prison, %struct.prison* %219, i32 0, i32 2
  %221 = load %struct.in_addr*, %struct.in_addr** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %221, i64 %223
  %225 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %224, i64 1
  %226 = load %struct.prison*, %struct.prison** %4, align 8
  %227 = getelementptr inbounds %struct.prison, %struct.prison* %226, i32 0, i32 2
  %228 = load %struct.in_addr*, %struct.in_addr** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %228, i64 %230
  %232 = load %struct.prison*, %struct.prison** %4, align 8
  %233 = getelementptr inbounds %struct.prison, %struct.prison* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* %6, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = mul i64 %238, 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @bcopy(%struct.in_addr* %225, %struct.in_addr* %231, i32 %240)
  br label %250

242:                                              ; preds = %216
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %250

247:                                              ; preds = %216
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %216, %247, %242, %218
  br label %170

251:                                              ; preds = %170
  %252 = load %struct.prison*, %struct.prison** %4, align 8
  %253 = getelementptr inbounds %struct.prison, %struct.prison* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %251
  %257 = load %struct.prison*, %struct.prison** %4, align 8
  %258 = getelementptr inbounds %struct.prison, %struct.prison* %257, i32 0, i32 2
  %259 = load %struct.in_addr*, %struct.in_addr** %258, align 8
  %260 = load i32, i32* @M_PRISON, align 4
  %261 = call i32 @free(%struct.in_addr* %259, i32 %260)
  %262 = load %struct.prison*, %struct.prison** %4, align 8
  %263 = getelementptr inbounds %struct.prison, %struct.prison* %262, i32 0, i32 2
  store %struct.in_addr* null, %struct.in_addr** %263, align 8
  br label %264

264:                                              ; preds = %256, %251
  br label %265

265:                                              ; preds = %264, %113
  br label %266

266:                                              ; preds = %265, %112
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %72
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.in_addr* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.in_addr*, %struct.in_addr*, i32) #1

declare dso_local i32 @free(%struct.in_addr*, i32) #1

declare dso_local i32 @prison_qcmp_v4(%struct.in_addr*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
