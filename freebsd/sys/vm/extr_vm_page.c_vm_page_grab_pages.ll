; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32 }

@VM_ALLOC_COUNT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vm_page_grap_pages: VM_ALLOC_COUNT() is not allowed\00", align 1
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"vm_page_grab_pages: the pages must be busied or wired\00", align 1
@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_IGN_SBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"vm_page_grab_pages: VM_ALLOC_SBUSY/IGN_SBUSY mismatch\00", align 1
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@pglist = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"grbmaw\00", align 1
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_grab_pages(%struct.TYPE_26__* %0, i64 %1, i32 %2, %struct.TYPE_25__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %18 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_26__* %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @VM_ALLOC_COUNT_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %5
  %35 = phi i1 [ true, %5 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i1 [ true, %34 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %255

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %57 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %55, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %54
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %73
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %201, %154, %82
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call %struct.TYPE_25__* @vm_radix_lookup_le(i32* %85, i64 %89)
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %12, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %92 = icmp eq %struct.TYPE_25__* %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %83
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93, %83
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %103, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %12, align 8
  br label %109

104:                                              ; preds = %93
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %106 = load i32, i32* @pglist, align 4
  %107 = load i32, i32* @listq, align 4
  %108 = call %struct.TYPE_25__* @TAILQ_PREV(%struct.TYPE_25__* %105, i32 %106, i32 %107)
  store %struct.TYPE_25__* %108, %struct.TYPE_25__** %13, align 8
  br label %109

109:                                              ; preds = %104, %102
  br label %110

110:                                              ; preds = %250, %109
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %253

114:                                              ; preds = %110
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %116 = icmp ne %struct.TYPE_25__* %115, null
  br i1 %116, label %117, label %173

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %120 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %126 = call i32 @vm_page_trysbusy(%struct.TYPE_25__* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %16, align 4
  br label %136

130:                                              ; preds = %117
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %132 = call i32 @vm_page_tryxbusy(%struct.TYPE_25__* %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %130, %124
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %253

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %152 = load i32, i32* @PGA_REFERENCED, align 4
  %153 = call i32 @vm_page_aflag_set(%struct.TYPE_25__* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @vm_page_busy_sleep(%struct.TYPE_25__* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %163 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_26__* %162)
  br label %83

164:                                              ; preds = %136
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %171 = call i32 @vm_page_wire(%struct.TYPE_25__* %170)
  br label %172

172:                                              ; preds = %169, %164
  br label %203

173:                                              ; preds = %114
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %253

179:                                              ; preds = %173
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %181, %183
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @VM_ALLOC_COUNT(i32 %188)
  %190 = or i32 %185, %189
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %192 = call %struct.TYPE_25__* @vm_page_alloc_after(%struct.TYPE_26__* %180, i64 %184, i32 %190, %struct.TYPE_25__* %191)
  store %struct.TYPE_25__* %192, %struct.TYPE_25__** %12, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %194 = icmp eq %struct.TYPE_25__* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %179
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %253

201:                                              ; preds = %195
  br label %83

202:                                              ; preds = %179
  br label %203

203:                                              ; preds = %202, %172
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %205 = call i64 @vm_page_none_valid(%struct.TYPE_25__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %203
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %207
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @PG_ZERO, align 4
  %217 = and i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %221 = call i32 @pmap_zero_page(%struct.TYPE_25__* %220)
  br label %222

222:                                              ; preds = %219, %212
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %224 = call i32 @vm_page_valid(%struct.TYPE_25__* %223)
  br label %225

225:                                              ; preds = %222, %207, %203
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %237 = call i32 @vm_page_sunbusy(%struct.TYPE_25__* %236)
  br label %241

238:                                              ; preds = %230
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %240 = call i32 @vm_page_xunbusy(%struct.TYPE_25__* %239)
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %225
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %243, %struct.TYPE_25__** %13, align 8
  %244 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %244, i64 %246
  store %struct.TYPE_25__* %243, %struct.TYPE_25__** %247, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %249 = call %struct.TYPE_25__* @vm_page_next(%struct.TYPE_25__* %248)
  store %struct.TYPE_25__* %249, %struct.TYPE_25__** %12, align 8
  br label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %15, align 4
  br label %110

253:                                              ; preds = %200, %178, %144, %110
  %254 = load i32, i32* %15, align 4
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %253, %53
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_26__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_25__* @vm_radix_lookup_le(i32*, i64) #1

declare dso_local %struct.TYPE_25__* @TAILQ_PREV(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @vm_page_trysbusy(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_page_tryxbusy(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vm_page_busy_sleep(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @vm_page_alloc_after(%struct.TYPE_26__*, i64, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @VM_ALLOC_COUNT(i32) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_25__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @vm_page_next(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
