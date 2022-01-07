; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i64, %struct.TYPE_21__*, %struct.TYPE_18__, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32 }

@UNLINK_MERGE_NONE = common dso_local global i32 0, align 4
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"OVERCOMMIT vm_map_entry_delete: both cred %p\00", align 1
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@kernel_object = common dso_local global %struct.TYPE_19__* null, align 8
@OBJPR_NOTMAPPED = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"object %p charge < 0\00", align 1
@TRUE = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*)* @vm_map_entry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_entry_delete(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = load i32, i32* @UNLINK_MERGE_NONE, align 4
  %14 = call i32 @vm_map_entry_unlink(%struct.TYPE_20__* %11, %struct.TYPE_21__* %12, i32 %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @MPASS(i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = icmp eq %struct.TYPE_19__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @vm_map_entry_deallocate(%struct.TYPE_21__* %44, i64 %47)
  br label %236

49:                                               ; preds = %2
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %49
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @swap_release_by_cred(i64 %69, i32* %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @crfree(i32* %76)
  br label %78

78:                                               ; preds = %68, %49
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %214

85:                                               ; preds = %78
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = icmp ne %struct.TYPE_19__* %86, null
  br i1 %87, label %88, label %214

88:                                               ; preds = %85
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %98, %93, %88
  %106 = phi i1 [ true, %93 ], [ true, %88 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = bitcast %struct.TYPE_21__* %108 to i8*
  %110 = call i32 @KASSERT(i32 %107, i8* %109)
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @atop(i64 %111)
  store i64 %112, i64* %8, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @OFF_TO_IDX(i32 %115)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add nsw i64 %117, %118
  store i64 %119, i64* %7, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__* %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %211

126:                                              ; preds = %105
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @OBJ_NOSPLIT, align 4
  %131 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %126
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_object, align 8
  %139 = icmp eq %struct.TYPE_19__* %137, %138
  br i1 %139, label %140, label %211

140:                                              ; preds = %136, %126
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = call i32 @vm_object_collapse(%struct.TYPE_19__* %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %147 = call i32 @vm_object_page_remove(%struct.TYPE_19__* %143, i64 %144, i64 %145, i32 %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @OBJT_SWAP, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %140
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @swap_pager_freespace(%struct.TYPE_19__* %154, i64 %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %140
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp sge i64 %159, %162
  br i1 %163, label %164, label %210

164:                                              ; preds = %158
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %210

170:                                              ; preds = %164
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %9, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %209

181:                                              ; preds = %170
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = sub nsw i64 %185, %184
  store i64 %186, i64* %9, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i64 @ptoa(i64 %190)
  %192 = icmp sge i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = bitcast %struct.TYPE_19__* %194 to i8*
  %196 = call i32 @KASSERT(i32 %193, i8* %195)
  %197 = load i64, i64* %9, align 8
  %198 = call i64 @ptoa(i64 %197)
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @swap_release_by_cred(i64 %198, i32* %201)
  %203 = load i64, i64* %9, align 8
  %204 = call i64 @ptoa(i64 %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %181, %170
  br label %210

210:                                              ; preds = %209, %164, %158
  br label %211

211:                                              ; preds = %210, %136, %105
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %213 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__* %212)
  br label %218

214:                                              ; preds = %85, %78
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %217, align 8
  br label %218

218:                                              ; preds = %214, %211
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %225 = load i64, i64* @TRUE, align 8
  %226 = call i32 @vm_map_entry_deallocate(%struct.TYPE_21__* %224, i64 %225)
  br label %236

227:                                              ; preds = %218
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curthread, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 3
  store %struct.TYPE_21__* %230, %struct.TYPE_21__** %232, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curthread, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %235, align 8
  br label %236

236:                                              ; preds = %25, %227, %223
  ret void
}

declare dso_local i32 @vm_map_entry_unlink(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_map_entry_deallocate(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @swap_release_by_cred(i64, i32*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_19__*, i64, i64, i32) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_19__*, i64, i64) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
