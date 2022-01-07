; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_bind_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_bind_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i32, i32 }
%struct.agp_softc = type { i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"binding memory at bad offset %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"found page pa=%#jx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"memory already bound\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"binding offset %#jx to pa %#jx\0A\00", align 1
@PQ_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_bind_memory(i32 %0, %struct.agp_memory* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_memory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.agp_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.agp_softc* @device_get_softc(i32 %15)
  store %struct.agp_softc* %16, %struct.agp_softc** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %25 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @AGP_GET_APERTURE(i32 %28)
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %224

36:                                               ; preds = %22
  %37 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %38 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VM_OBJECT_WLOCK(i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %60, %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %44 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %49 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @OFF_TO_IDX(i32 %51)
  %53 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %54 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vm_page_grab(i32 %50, i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @VM_PAGE_TO_PHYS(i32 %57)
  %59 = call i32 (i8*, i32, ...) @AGP_DPF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %66 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VM_OBJECT_WUNLOCK(i32 %67)
  %69 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %70 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_lock(i32* %70)
  %72 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %73 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %64
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %81 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VM_OBJECT_WLOCK(i32 %82)
  store i32 0, i32* %9, align 4
  br label %183

84:                                               ; preds = %64
  %85 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %86 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @VM_OBJECT_WLOCK(i32 %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %164, %84
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %92 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %168

95:                                               ; preds = %89
  %96 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %97 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @OFF_TO_IDX(i32 %99)
  %101 = call i32 @vm_page_lookup(i32 %98, i32 %100)
  store i32 %101, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %157, %95
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %111 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br label %114

114:                                              ; preds = %106, %102
  %115 = phi i1 [ false, %102 ], [ %113, %106 ]
  br i1 %115, label %116, label %161

116:                                              ; preds = %114
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @VM_PAGE_TO_PHYS(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = call i32 (i8*, i32, ...) @AGP_DPF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @AGP_BIND_PAGE(i32 %128, i32 %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @AGP_UNBIND_PAGE(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %139

155:                                              ; preds = %139
  br label %183

156:                                              ; preds = %116
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %102

161:                                              ; preds = %114
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @vm_page_xunbusy(i32 %162)
  br label %164

164:                                              ; preds = %161
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %9, align 4
  br label %89

168:                                              ; preds = %89
  %169 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %170 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VM_OBJECT_WUNLOCK(i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @AGP_FLUSH_TLB(i32 %173)
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %177 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %179 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %181 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %180, i32 0, i32 0
  %182 = call i32 @mtx_unlock(i32* %181)
  store i32 0, i32* %4, align 4
  br label %224

183:                                              ; preds = %155, %76
  %184 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %185 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %184, i32 0, i32 0
  %186 = call i32 @mtx_unlock(i32* %185)
  %187 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %188 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %189)
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %214, %183
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %194 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %199 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @OFF_TO_IDX(i32 %201)
  %203 = call i32 @vm_page_lookup(i32 %200, i32 %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @vm_page_xunbusy(i32 %208)
  br label %210

210:                                              ; preds = %207, %197
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @PQ_INACTIVE, align 4
  %213 = call i32 @vm_page_unwire(i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %210
  %215 = load i32, i32* @PAGE_SIZE, align 4
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %11, align 4
  br label %191

218:                                              ; preds = %191
  %219 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %220 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @VM_OBJECT_WUNLOCK(i32 %221)
  %223 = load i32, i32* %13, align 4
  store i32 %223, i32* %4, align 4
  br label %224

224:                                              ; preds = %218, %168, %31
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_grab(i32, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @AGP_DPF(i8*, i32, ...) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vm_page_lookup(i32, i32) #1

declare dso_local i32 @AGP_BIND_PAGE(i32, i32, i32) #1

declare dso_local i32 @AGP_UNBIND_PAGE(i32, i32) #1

declare dso_local i32 @vm_page_xunbusy(i32) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @vm_page_unwire(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
