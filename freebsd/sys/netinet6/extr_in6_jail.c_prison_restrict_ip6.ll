; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_jail.c_prison_restrict_ip6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_jail.c_prison_restrict_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, i32, %struct.in6_addr*, %struct.prison* }
%struct.in6_addr = type { i32 }

@PR_IP6_USER = common dso_local global i32 0, align 4
@M_PRISON = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_restrict_ip6(%struct.prison* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.prison*, align 8
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %10 = load %struct.prison*, %struct.prison** %4, align 8
  %11 = getelementptr inbounds %struct.prison, %struct.prison* %10, i32 0, i32 3
  %12 = load %struct.prison*, %struct.prison** %11, align 8
  store %struct.prison* %12, %struct.prison** %9, align 8
  %13 = load %struct.prison*, %struct.prison** %4, align 8
  %14 = getelementptr inbounds %struct.prison, %struct.prison* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PR_IP6_USER, align 4
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
  %28 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %29 = icmp eq %struct.in6_addr* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.prison*, %struct.prison** %9, align 8
  %32 = getelementptr inbounds %struct.prison, %struct.prison* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @M_PRISON, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call %struct.in6_addr* @malloc(i32 %36, i32 %37, i32 %38)
  store %struct.in6_addr* %39, %struct.in6_addr** %5, align 8
  %40 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %41 = icmp ne %struct.in6_addr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %46 = icmp ne %struct.in6_addr* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.prison*, %struct.prison** %9, align 8
  %49 = getelementptr inbounds %struct.prison, %struct.prison* %48, i32 0, i32 2
  %50 = load %struct.in6_addr*, %struct.in6_addr** %49, align 8
  %51 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %52 = load %struct.prison*, %struct.prison** %9, align 8
  %53 = getelementptr inbounds %struct.prison, %struct.prison* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @bcopy(%struct.in6_addr* %50, %struct.in6_addr* %51, i32 %57)
  %59 = load %struct.prison*, %struct.prison** %4, align 8
  %60 = getelementptr inbounds %struct.prison, %struct.prison* %59, i32 0, i32 2
  %61 = load %struct.in6_addr*, %struct.in6_addr** %60, align 8
  %62 = load i32, i32* @M_PRISON, align 4
  %63 = call i32 @free(%struct.in6_addr* %61, i32 %62)
  %64 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %65 = load %struct.prison*, %struct.prison** %4, align 8
  %66 = getelementptr inbounds %struct.prison, %struct.prison* %65, i32 0, i32 2
  store %struct.in6_addr* %64, %struct.in6_addr** %66, align 8
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
  br label %261

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
  %87 = load %struct.in6_addr*, %struct.in6_addr** %86, align 8
  %88 = load %struct.prison*, %struct.prison** %4, align 8
  %89 = getelementptr inbounds %struct.prison, %struct.prison* %88, i32 0, i32 2
  %90 = load %struct.in6_addr*, %struct.in6_addr** %89, align 8
  %91 = load %struct.prison*, %struct.prison** %4, align 8
  %92 = getelementptr inbounds %struct.prison, %struct.prison* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @bcopy(%struct.in6_addr* %87, %struct.in6_addr* %90, i32 %96)
  br label %112

98:                                               ; preds = %74
  %99 = load %struct.prison*, %struct.prison** %4, align 8
  %100 = getelementptr inbounds %struct.prison, %struct.prison* %99, i32 0, i32 2
  %101 = load %struct.in6_addr*, %struct.in6_addr** %100, align 8
  %102 = icmp ne %struct.in6_addr* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.prison*, %struct.prison** %4, align 8
  %105 = getelementptr inbounds %struct.prison, %struct.prison* %104, i32 0, i32 2
  %106 = load %struct.in6_addr*, %struct.in6_addr** %105, align 8
  %107 = load i32, i32* @M_PRISON, align 4
  %108 = call i32 @free(%struct.in6_addr* %106, i32 %107)
  %109 = load %struct.prison*, %struct.prison** %4, align 8
  %110 = getelementptr inbounds %struct.prison, %struct.prison* %109, i32 0, i32 2
  store %struct.in6_addr* null, %struct.in6_addr** %110, align 8
  br label %111

111:                                              ; preds = %103, %98
  br label %112

112:                                              ; preds = %111, %84
  br label %260

113:                                              ; preds = %2
  %114 = load %struct.prison*, %struct.prison** %4, align 8
  %115 = getelementptr inbounds %struct.prison, %struct.prison* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %259

118:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %140, %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.prison*, %struct.prison** %9, align 8
  %122 = getelementptr inbounds %struct.prison, %struct.prison* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.prison*, %struct.prison** %4, align 8
  %127 = getelementptr inbounds %struct.prison, %struct.prison* %126, i32 0, i32 2
  %128 = load %struct.in6_addr*, %struct.in6_addr** %127, align 8
  %129 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %128, i64 0
  %130 = load %struct.prison*, %struct.prison** %9, align 8
  %131 = getelementptr inbounds %struct.prison, %struct.prison* %130, i32 0, i32 2
  %132 = load %struct.in6_addr*, %struct.in6_addr** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %132, i64 %134
  %136 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %129, %struct.in6_addr* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %143

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %119

143:                                              ; preds = %138, %119
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.prison*, %struct.prison** %9, align 8
  %146 = getelementptr inbounds %struct.prison, %struct.prison* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, i32* %6, align 4
  br label %166

150:                                              ; preds = %143
  %151 = load %struct.prison*, %struct.prison** %4, align 8
  %152 = getelementptr inbounds %struct.prison, %struct.prison* %151, i32 0, i32 2
  %153 = load %struct.in6_addr*, %struct.in6_addr** %152, align 8
  %154 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %153, i64 1
  %155 = load %struct.prison*, %struct.prison** %4, align 8
  %156 = getelementptr inbounds %struct.prison, %struct.prison* %155, i32 0, i32 2
  %157 = load %struct.in6_addr*, %struct.in6_addr** %156, align 8
  %158 = load %struct.prison*, %struct.prison** %4, align 8
  %159 = getelementptr inbounds %struct.prison, %struct.prison* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %159, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i32 @bcopy(%struct.in6_addr* %154, %struct.in6_addr* %157, i32 %164)
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %150, %149
  store i32 1, i32* %7, align 4
  br label %167

167:                                              ; preds = %244, %186, %166
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.prison*, %struct.prison** %4, align 8
  %170 = getelementptr inbounds %struct.prison, %struct.prison* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %245

173:                                              ; preds = %167
  %174 = load %struct.prison*, %struct.prison** %4, align 8
  %175 = getelementptr inbounds %struct.prison, %struct.prison* %174, i32 0, i32 2
  %176 = load %struct.in6_addr*, %struct.in6_addr** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %176, i64 %178
  %180 = load %struct.prison*, %struct.prison** %9, align 8
  %181 = getelementptr inbounds %struct.prison, %struct.prison* %180, i32 0, i32 2
  %182 = load %struct.in6_addr*, %struct.in6_addr** %181, align 8
  %183 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %182, i64 0
  %184 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %179, %struct.in6_addr* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %173
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %167

189:                                              ; preds = %173
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.prison*, %struct.prison** %9, align 8
  %192 = getelementptr inbounds %struct.prison, %struct.prison* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %210

196:                                              ; preds = %189
  %197 = load %struct.prison*, %struct.prison** %4, align 8
  %198 = getelementptr inbounds %struct.prison, %struct.prison* %197, i32 0, i32 2
  %199 = load %struct.in6_addr*, %struct.in6_addr** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %199, i64 %201
  %203 = load %struct.prison*, %struct.prison** %9, align 8
  %204 = getelementptr inbounds %struct.prison, %struct.prison* %203, i32 0, i32 2
  %205 = load %struct.in6_addr*, %struct.in6_addr** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %205, i64 %207
  %209 = call i32 @prison_qcmp_v6(%struct.in6_addr* %202, %struct.in6_addr* %208)
  br label %210

210:                                              ; preds = %196, %195
  %211 = phi i32 [ -1, %195 ], [ %209, %196 ]
  switch i32 %211, label %244 [
    i32 -1, label %212
    i32 0, label %236
    i32 1, label %241
  ]

212:                                              ; preds = %210
  %213 = load %struct.prison*, %struct.prison** %4, align 8
  %214 = getelementptr inbounds %struct.prison, %struct.prison* %213, i32 0, i32 2
  %215 = load %struct.in6_addr*, %struct.in6_addr** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %215, i64 %217
  %219 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %218, i64 1
  %220 = load %struct.prison*, %struct.prison** %4, align 8
  %221 = getelementptr inbounds %struct.prison, %struct.prison* %220, i32 0, i32 2
  %222 = load %struct.in6_addr*, %struct.in6_addr** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %222, i64 %224
  %226 = load %struct.prison*, %struct.prison** %4, align 8
  %227 = getelementptr inbounds %struct.prison, %struct.prison* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %6, align 4
  %231 = sub nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 4
  %234 = trunc i64 %233 to i32
  %235 = call i32 @bcopy(%struct.in6_addr* %219, %struct.in6_addr* %225, i32 %234)
  br label %244

236:                                              ; preds = %210
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %7, align 4
  br label %244

241:                                              ; preds = %210
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %210, %241, %236, %212
  br label %167

245:                                              ; preds = %167
  %246 = load %struct.prison*, %struct.prison** %4, align 8
  %247 = getelementptr inbounds %struct.prison, %struct.prison* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load %struct.prison*, %struct.prison** %4, align 8
  %252 = getelementptr inbounds %struct.prison, %struct.prison* %251, i32 0, i32 2
  %253 = load %struct.in6_addr*, %struct.in6_addr** %252, align 8
  %254 = load i32, i32* @M_PRISON, align 4
  %255 = call i32 @free(%struct.in6_addr* %253, i32 %254)
  %256 = load %struct.prison*, %struct.prison** %4, align 8
  %257 = getelementptr inbounds %struct.prison, %struct.prison* %256, i32 0, i32 2
  store %struct.in6_addr* null, %struct.in6_addr** %257, align 8
  br label %258

258:                                              ; preds = %250, %245
  br label %259

259:                                              ; preds = %258, %113
  br label %260

260:                                              ; preds = %259, %112
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %260, %72
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.in6_addr* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @free(%struct.in6_addr*, i32) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @prison_qcmp_v6(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
