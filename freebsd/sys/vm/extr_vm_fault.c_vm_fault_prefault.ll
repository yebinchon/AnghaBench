; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_prefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_prefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.faultstate = type { %struct.TYPE_20__*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@curthread = common dso_local global %struct.TYPE_14__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vm_fault_prefault: unaligned object offset\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.faultstate*, i32, i32, i32, i32)* @vm_fault_prefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_fault_prefault(%struct.faultstate* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.faultstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store %struct.faultstate* %0, %struct.faultstate** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.faultstate*, %struct.faultstate** %6, align 8
  %21 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curthread, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @vmspace_pmap(i32 %30)
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %238

34:                                               ; preds = %5
  %35 = load %struct.faultstate*, %struct.faultstate** %6, align 8
  %36 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %12, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %16, align 4
  br label %63

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %58, %47
  br label %63

63:                                               ; preds = %62, %43
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %235, %63
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @imax(i32 %66, i32 %67)
  %69 = mul nsw i32 2, %68
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %238

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %19, align 4
  %74 = ashr i32 %73, 1
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %19, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = sub nsw i32 0, %80
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @PAGE_SIZE, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = mul nsw i32 %75, %85
  %87 = add nsw i32 %72, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = icmp sgt i32 %88, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %96
  br label %235

107:                                              ; preds = %100
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @pmap_is_prefaultable(i64 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %235

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* @PAGE_SHIFT, align 4
  %124 = ashr i32 %122, %123
  store i32 %124, i32* %17, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %14, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %113
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %133 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_19__* %132)
  br label %134

134:                                              ; preds = %131, %113
  br label %135

135:                                              ; preds = %183, %134
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call %struct.TYPE_18__* @vm_page_lookup(%struct.TYPE_19__* %136, i32 %137)
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %18, align 8
  %139 = icmp eq %struct.TYPE_18__* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @OBJT_DEFAULT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %13, align 8
  %150 = icmp ne %struct.TYPE_19__* %149, null
  br label %151

151:                                              ; preds = %146, %140, %135
  %152 = phi i1 [ false, %140 ], [ false, %135 ], [ %150, %146 ]
  br i1 %152, label %153, label %185

153:                                              ; preds = %151
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PAGE_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @KASSERT(i32 %160, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PAGE_SHIFT, align 4
  %166 = ashr i32 %164, %165
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %17, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %170 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_19__* %169)
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %153
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = icmp ne %struct.TYPE_19__* %174, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %173, %153
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %182 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_19__* %181)
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %184, %struct.TYPE_19__** %14, align 8
  br label %135

185:                                              ; preds = %151
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %187 = icmp eq %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = icmp ne %struct.TYPE_19__* %192, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %191, %188
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %200 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_19__* %199)
  br label %201

201:                                              ; preds = %198, %191
  br label %238

202:                                              ; preds = %185
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %204 = call i64 @vm_page_all_valid(%struct.TYPE_18__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %202
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @PG_FICTITIOUS, align 4
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load i64, i64* %11, align 8
  %215 = load i32, i32* %15, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @pmap_enter_quick(i64 %214, i32 %215, %struct.TYPE_18__* %216, i32 %219)
  br label %221

221:                                              ; preds = %213, %206, %202
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = icmp ne %struct.TYPE_19__* %225, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %224, %221
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %233 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_19__* %232)
  br label %234

234:                                              ; preds = %231, %224
  br label %235

235:                                              ; preds = %234, %112, %106
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  br label %64

238:                                              ; preds = %33, %201, %64
  ret void
}

declare dso_local i64 @vmspace_pmap(i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @pmap_is_prefaultable(i64, i32) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @vm_page_lookup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_19__*) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_18__*) #1

declare dso_local i32 @pmap_enter_quick(i64, i32, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
