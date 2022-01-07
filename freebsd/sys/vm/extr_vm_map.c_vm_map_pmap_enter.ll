; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_pmap_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_pmap_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i64 0, align 8
@OBJT_SG = common dso_local global i64 0, align 8
@MAX_INIT_PT = common dso_local global i64 0, align 8
@MAP_PREFAULT_MADVISE = common dso_local global i32 0, align 4
@MAP_PREFAULT_PARTIAL = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i32* null, align 8
@PS_ALL_VALID = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, %struct.TYPE_20__*, i64, i32, i32)* @vm_map_pmap_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_pmap_enter(%struct.TYPE_21__* %0, i32 %1, i32 %2, %struct.TYPE_20__* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @VM_PROT_READ, align 4
  %24 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %30 = icmp eq %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %7
  br label %237

32:                                               ; preds = %28
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %34 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJT_DEVICE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OBJT_SG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %40, %32
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %50 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__* %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OBJT_DEVICE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OBJT_SG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56, %46
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pmap_object_init_pt(i32 %65, i32 %66, %struct.TYPE_20__* %67, i64 %68, i32 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %72 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_20__* %71)
  br label %237

73:                                               ; preds = %56
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %75 = call i32 @VM_OBJECT_LOCK_DOWNGRADE(%struct.TYPE_20__* %74)
  br label %76

76:                                               ; preds = %73, %40
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @atop(i32 %77)
  store i64 %78, i64* %19, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %76
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %94 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %93)
  br label %237

95:                                               ; preds = %86
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %19, align 8
  br label %101

101:                                              ; preds = %95, %76
  store i32 0, i32* %15, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  %102 = load i64, i64* @MAX_INIT_PT, align 8
  store i64 %102, i64* %20, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call %struct.TYPE_19__* @vm_page_find_least(%struct.TYPE_20__* %103, i64 %104)
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %16, align 8
  br label %106

106:                                              ; preds = %215, %101
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %108 = icmp ne %struct.TYPE_19__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* %21, align 8
  %115 = load i64, i64* %19, align 8
  %116 = icmp slt i64 %114, %115
  br label %117

117:                                              ; preds = %109, %106
  %118 = phi i1 [ false, %106 ], [ %116, %109 ]
  br i1 %118, label %119, label %219

119:                                              ; preds = %117
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @MAP_PREFAULT_MADVISE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = call i64 (...) @vm_page_count_severe()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124, %119
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @MAP_PREFAULT_PARTIAL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %20, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132, %124
  %137 = load i64, i64* %21, align 8
  store i64 %137, i64* %19, align 8
  br label %219

138:                                              ; preds = %132, %127
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %140 = call i64 @vm_page_all_valid(%struct.TYPE_19__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %198

142:                                              ; preds = %138
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %144 = icmp eq %struct.TYPE_19__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = load i64, i64* %21, align 8
  %148 = call i32 @ptoa(i64 %147)
  %149 = add nsw i32 %146, %148
  store i32 %149, i32* %15, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %150, %struct.TYPE_19__** %17, align 8
  br label %151

151:                                              ; preds = %145, %142
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %197

156:                                              ; preds = %151
  %157 = load i32, i32* %9, align 4
  %158 = load i64, i64* %21, align 8
  %159 = call i32 @ptoa(i64 %158)
  %160 = add nsw i32 %157, %159
  %161 = load i32*, i32** @pagesizes, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = and i32 %160, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %197

170:                                              ; preds = %156
  %171 = load i32*, i32** @pagesizes, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @atop(i32 %176)
  %178 = sub nsw i64 %177, 1
  store i64 %178, i64* %18, align 8
  %179 = load i64, i64* %21, align 8
  %180 = load i64, i64* %18, align 8
  %181 = add nsw i64 %179, %180
  %182 = load i64, i64* %19, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %170
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %186 = load i32, i32* @PS_ALL_VALID, align 4
  %187 = call i64 @vm_page_ps_test(%struct.TYPE_19__* %185, i32 %186, i32* null)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i64, i64* %18, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i64 %190
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %16, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* %20, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %20, align 8
  br label %196

196:                                              ; preds = %189, %184, %170
  br label %197

197:                                              ; preds = %196, %156, %151
  br label %214

198:                                              ; preds = %138
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %200 = icmp ne %struct.TYPE_19__* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i64, i64* %21, align 8
  %208 = call i32 @ptoa(i64 %207)
  %209 = add nsw i32 %206, %208
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @pmap_enter_object(i32 %204, i32 %205, i32 %209, %struct.TYPE_19__* %210, i32 %211)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  br label %213

213:                                              ; preds = %201, %198
  br label %214

214:                                              ; preds = %213, %197
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %217 = load i32, i32* @listq, align 4
  %218 = call %struct.TYPE_19__* @TAILQ_NEXT(%struct.TYPE_19__* %216, i32 %217)
  store %struct.TYPE_19__* %218, %struct.TYPE_19__** %16, align 8
  br label %106

219:                                              ; preds = %136, %117
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %221 = icmp ne %struct.TYPE_19__* %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i64, i64* %19, align 8
  %229 = call i32 @ptoa(i64 %228)
  %230 = add nsw i32 %227, %229
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @pmap_enter_object(i32 %225, i32 %226, i32 %230, %struct.TYPE_19__* %231, i32 %232)
  br label %234

234:                                              ; preds = %222, %219
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %236 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %235)
  br label %237

237:                                              ; preds = %234, %92, %62, %31
  ret void
}

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_object_init_pt(i32, i32, %struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_LOCK_DOWNGRADE(%struct.TYPE_20__*) #1

declare dso_local i64 @atop(i32) #1

declare dso_local %struct.TYPE_19__* @vm_page_find_least(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @vm_page_count_severe(...) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_19__*) #1

declare dso_local i32 @ptoa(i64) #1

declare dso_local i64 @vm_page_ps_test(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @pmap_enter_object(i32, i32, i32, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @TAILQ_NEXT(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
