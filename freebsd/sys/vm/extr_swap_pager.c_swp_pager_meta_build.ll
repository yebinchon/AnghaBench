; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.swblk = type { i64, i64* }

@swp_pager_meta_build.swblk_zone_exhausted = internal global i32 0, align 4
@swp_pager_meta_build.swpctrie_zone_exhausted = internal global i32 0, align 4
@OBJT_SWAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"default pager with handle\00", align 1
@SWAP_META_PAGES = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@swblk_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@curproc = common dso_local global i64 0, align 8
@pageproc = common dso_local global i64 0, align 8
@M_USE_RESERVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"swblk zone ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"swap blk zone exhausted, increase kern.maxswzone\0A\00", align 1
@VM_OOM_SWAPZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"swzonxb\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"swpctrie zone ok\0A\00", align 1
@swpctrie_zone = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"swap pctrie zone exhausted, increase kern.maxswzone\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"swzonxp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64, i64)* @swp_pager_meta_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swp_pager_meta_build(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.swblk*, align 8
  %9 = alloca %struct.swblk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBJT_SWAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @pctrie_init(i32* %26)
  %28 = call i32 (...) @atomic_thread_fence_rel()
  %29 = load i64, i64* @OBJT_SWAP, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %22, %3
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @SWAP_META_PAGES, align 4
  %45 = call i64 @rounddown(i64 %43, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %11, align 8
  %51 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32* %49, i64 %50)
  store %struct.swblk* %51, %struct.swblk** %8, align 8
  %52 = load %struct.swblk*, %struct.swblk** %8, align 8
  %53 = icmp eq %struct.swblk* %52, null
  br i1 %53, label %54, label %184

54:                                               ; preds = %42
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @SWAPBLK_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @SWAPBLK_NONE, align 8
  store i64 %59, i64* %4, align 8
  br label %218

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %131, %60
  %62 = load i32, i32* @swblk_zone, align 4
  %63 = load i32, i32* @M_NOWAIT, align 4
  %64 = load i64, i64* @curproc, align 8
  %65 = load i64, i64* @pageproc, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @M_USE_RESERVE, align 4
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %63, %71
  %73 = call %struct.swblk* @uma_zalloc(i32 %62, i32 %72)
  store %struct.swblk* %73, %struct.swblk** %8, align 8
  %74 = load %struct.swblk*, %struct.swblk** %8, align 8
  %75 = icmp ne %struct.swblk* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.swblk*, %struct.swblk** %8, align 8
  %79 = getelementptr inbounds %struct.swblk, %struct.swblk* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %92, %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @SWAP_META_PAGES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i64, i64* @SWAPBLK_NONE, align 8
  %86 = load %struct.swblk*, %struct.swblk** %8, align 8
  %87 = getelementptr inbounds %struct.swblk, %struct.swblk* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %85, i64* %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %80

95:                                               ; preds = %80
  %96 = call i64 @atomic_cmpset_int(i32* @swp_pager_meta_build.swblk_zone_exhausted, i32 1, i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  br label %132

101:                                              ; preds = %70
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_11__* %102)
  %104 = load i32, i32* @swblk_zone, align 4
  %105 = call i64 @uma_zone_exhausted(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = call i64 @atomic_cmpset_int(i32* @swp_pager_meta_build.swblk_zone_exhausted, i32 0, i32 1)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* @VM_OOM_SWAPZ, align 4
  %114 = call i32 @vm_pageout_oom(i32 %113)
  %115 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 10)
  br label %119

116:                                              ; preds = %101
  %117 = load i32, i32* @swblk_zone, align 4
  %118 = call i32 @uma_zwait(i32 %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_11__* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %11, align 8
  %127 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32* %125, i64 %126)
  store %struct.swblk* %127, %struct.swblk** %8, align 8
  %128 = load %struct.swblk*, %struct.swblk** %8, align 8
  %129 = icmp ne %struct.swblk* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %185

131:                                              ; preds = %119
  br label %61

132:                                              ; preds = %100
  br label %133

133:                                              ; preds = %182, %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.swblk*, %struct.swblk** %8, align 8
  %139 = call i32 @SWAP_PCTRIE_INSERT(i32* %137, %struct.swblk* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = call i64 @atomic_cmpset_int(i32* @swp_pager_meta_build.swpctrie_zone_exhausted, i32 1, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %142
  br label %183

148:                                              ; preds = %133
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_11__* %149)
  %151 = load i32, i32* @swpctrie_zone, align 4
  %152 = call i64 @uma_zone_exhausted(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = call i64 @atomic_cmpset_int(i32* @swp_pager_meta_build.swpctrie_zone_exhausted, i32 0, i32 1)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, i32* @VM_OOM_SWAPZ, align 4
  %161 = call i32 @vm_pageout_oom(i32 %160)
  %162 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 10)
  br label %166

163:                                              ; preds = %148
  %164 = load i32, i32* @swpctrie_zone, align 4
  %165 = call i32 @uma_zwait(i32 %164)
  br label %166

166:                                              ; preds = %163, %159
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_11__* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64, i64* %11, align 8
  %174 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32* %172, i64 %173)
  store %struct.swblk* %174, %struct.swblk** %9, align 8
  %175 = load %struct.swblk*, %struct.swblk** %9, align 8
  %176 = icmp ne %struct.swblk* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %166
  %178 = load i32, i32* @swblk_zone, align 4
  %179 = load %struct.swblk*, %struct.swblk** %8, align 8
  %180 = call i32 @uma_zfree(i32 %178, %struct.swblk* %179)
  %181 = load %struct.swblk*, %struct.swblk** %9, align 8
  store %struct.swblk* %181, %struct.swblk** %8, align 8
  br label %185

182:                                              ; preds = %166
  br label %133

183:                                              ; preds = %147
  br label %184

184:                                              ; preds = %183, %42
  br label %185

185:                                              ; preds = %184, %177, %130
  %186 = load %struct.swblk*, %struct.swblk** %8, align 8
  %187 = getelementptr inbounds %struct.swblk, %struct.swblk* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %11, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @MPASS(i32 %191)
  %193 = load i64, i64* %6, align 8
  %194 = load i32, i32* @SWAP_META_PAGES, align 4
  %195 = sext i32 %194 to i64
  %196 = srem i64 %193, %195
  store i64 %196, i64* %10, align 8
  %197 = load %struct.swblk*, %struct.swblk** %8, align 8
  %198 = getelementptr inbounds %struct.swblk, %struct.swblk* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %12, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.swblk*, %struct.swblk** %8, align 8
  %205 = getelementptr inbounds %struct.swblk, %struct.swblk* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %203, i64* %208, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* @SWAPBLK_NONE, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %185
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = load %struct.swblk*, %struct.swblk** %8, align 8
  %215 = call i32 @swp_pager_free_empty_swblk(%struct.TYPE_11__* %213, %struct.swblk* %214)
  br label %216

216:                                              ; preds = %212, %185
  %217 = load i64, i64* %12, align 8
  store i64 %217, i64* %4, align 8
  br label %218

218:                                              ; preds = %216, %58
  %219 = load i64, i64* %4, align 8
  ret i64 %219
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__*) #1

declare dso_local i32 @pctrie_init(i32*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP(i32*, i64) #1

declare dso_local %struct.swblk* @uma_zalloc(i32, i32) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_11__*) #1

declare dso_local i64 @uma_zone_exhausted(i32) #1

declare dso_local i32 @vm_pageout_oom(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @uma_zwait(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @SWAP_PCTRIE_INSERT(i32*, %struct.swblk*) #1

declare dso_local i32 @uma_zfree(i32, %struct.swblk*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @swp_pager_free_empty_swblk(%struct.TYPE_11__*, %struct.swblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
