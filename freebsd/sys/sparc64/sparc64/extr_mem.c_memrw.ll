; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i64, i64, %struct.iovec* }
%struct.iovec = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@CDEV_MINOR_MEM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@dcache_color_ignore = common dso_local global i64 0, align 8
@DCACHE_COLORS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CDEV_MINOR_KMEM = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_MIN_DIRECT_ADDRESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %15, align 8
  store i64 1, i64* %18, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %231, %52, %3
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %17, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %232

29:                                               ; preds = %27
  %30 = load %struct.uio*, %struct.uio** %6, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 4
  %32 = load %struct.iovec*, %struct.iovec** %31, align 8
  store %struct.iovec* %32, %struct.iovec** %8, align 8
  %33 = load %struct.iovec*, %struct.iovec** %8, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 4
  %40 = load %struct.iovec*, %struct.iovec** %39, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 1
  store %struct.iovec* %41, %struct.iovec** %39, align 8
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  br label %19

53:                                               ; preds = %29
  %54 = load %struct.cdev*, %struct.cdev** %5, align 8
  %55 = call i64 @dev2unit(%struct.cdev* %54)
  %56 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %159

58:                                               ; preds = %53
  %59 = load %struct.uio*, %struct.uio** %6, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGE_MASK, align 8
  %63 = xor i64 %62, -1
  %64 = and i64 %61, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @is_physical_memory(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @EFAULT, align 4
  store i32 %69, i32* %17, align 4
  br label %232

70:                                               ; preds = %58
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PAGE_MASK, align 8
  %75 = and i64 %73, %74
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load %struct.iovec*, %struct.iovec** %8, align 8
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PAGE_MASK, align 8
  %81 = and i64 %79, %80
  %82 = sub nsw i64 %76, %81
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %84, %85
  %87 = call i64 @ulmin(i64 %83, i64 %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.iovec*, %struct.iovec** %8, align 8
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @ulmin(i64 %88, i64 %91)
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call %struct.TYPE_6__* @vm_phys_paddr_to_vm_page(i64 %93)
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %16, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %148

97:                                               ; preds = %70
  %98 = load i64, i64* %11, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i64, i64* @dcache_color_ignore, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i64, i64* @DCACHE_COLORS, align 8
  store i64 %104, i64* %18, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load i64, i64* %18, align 8
  %108 = mul nsw i64 %106, %107
  %109 = call i64 @kva_alloc(i64 %108)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @ENOMEM, align 4
  store i32 %113, i32* %17, align 4
  br label %232

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %97
  %116 = load i64, i64* %18, align 8
  %117 = icmp ne i64 %116, 1
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @PAGE_SIZE, align 8
  %132 = mul nsw i64 %130, %131
  %133 = add nsw i64 %125, %132
  store i64 %133, i64* %12, align 8
  br label %136

134:                                              ; preds = %118, %115
  %135 = load i64, i64* %11, align 8
  store i64 %135, i64* %12, align 8
  br label %136

136:                                              ; preds = %134, %124
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @pmap_qenter(i64 %137, %struct.TYPE_6__** %16, i32 1)
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %10, align 8
  %141 = add nsw i64 %139, %140
  %142 = inttoptr i64 %141 to i8*
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.uio*, %struct.uio** %6, align 8
  %145 = call i32 @uiomove(i8* %142, i64 %143, %struct.uio* %144)
  store i32 %145, i32* %17, align 4
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @pmap_qremove(i64 %146, i32 1)
  br label %158

148:                                              ; preds = %70
  %149 = load i64, i64* %14, align 8
  %150 = call i64 @TLB_PHYS_TO_DIRECT(i64 %149)
  store i64 %150, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add nsw i64 %151, %152
  %154 = inttoptr i64 %153 to i8*
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.uio*, %struct.uio** %6, align 8
  %157 = call i32 @uiomove(i8* %154, i64 %155, %struct.uio* %156)
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %148, %136
  br label %232

159:                                              ; preds = %53
  %160 = load %struct.cdev*, %struct.cdev** %5, align 8
  %161 = call i64 @dev2unit(%struct.cdev* %160)
  %162 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %230

164:                                              ; preds = %159
  %165 = load %struct.uio*, %struct.uio** %6, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @trunc_page(i64 %167)
  store i64 %168, i64* %12, align 8
  %169 = load %struct.uio*, %struct.uio** %6, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.iovec*, %struct.iovec** %8, align 8
  %173 = getelementptr inbounds %struct.iovec, %struct.iovec* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = call i64 @round_page(i64 %175)
  store i64 %176, i64* %9, align 8
  br label %177

177:                                              ; preds = %188, %164
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %9, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load i64, i64* %12, align 8
  %183 = call i64 @pmap_kextract(i64 %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @EFAULT, align 4
  store i32 %186, i32* %4, align 4
  br label %243

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* @PAGE_SIZE, align 8
  %190 = load i64, i64* %12, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %12, align 8
  br label %177

192:                                              ; preds = %177
  %193 = load %struct.uio*, %struct.uio** %6, align 8
  %194 = getelementptr inbounds %struct.uio, %struct.uio* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @UIO_READ, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @VM_PROT_READ, align 4
  br label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  store i32 %203, i32* %13, align 4
  %204 = load %struct.uio*, %struct.uio** %6, align 8
  %205 = getelementptr inbounds %struct.uio, %struct.uio* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %12, align 8
  %207 = load i64, i64* %12, align 8
  %208 = load i64, i64* @VM_MIN_DIRECT_ADDRESS, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %202
  %211 = load i64, i64* %12, align 8
  %212 = inttoptr i64 %211 to i8*
  %213 = load %struct.iovec*, %struct.iovec** %8, align 8
  %214 = getelementptr inbounds %struct.iovec, %struct.iovec* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = call i64 @kernacc(i8* %212, i64 %215, i32 %216)
  %218 = load i64, i64* @FALSE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  %221 = load i32, i32* @EFAULT, align 4
  store i32 %221, i32* %4, align 4
  br label %243

222:                                              ; preds = %210, %202
  %223 = load i64, i64* %12, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.iovec*, %struct.iovec** %8, align 8
  %226 = getelementptr inbounds %struct.iovec, %struct.iovec* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.uio*, %struct.uio** %6, align 8
  %229 = call i32 @uiomove(i8* %224, i64 %227, %struct.uio* %228)
  store i32 %229, i32* %17, align 4
  br label %232

230:                                              ; preds = %159
  br label %231

231:                                              ; preds = %230
  br label %19

232:                                              ; preds = %222, %158, %112, %68, %27
  %233 = load i64, i64* %11, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* @PAGE_SIZE, align 8
  %238 = load i64, i64* %18, align 8
  %239 = mul nsw i64 %237, %238
  %240 = call i32 @kva_free(i64 %236, i64 %239)
  br label %241

241:                                              ; preds = %235, %232
  %242 = load i32, i32* %17, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %220, %185
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @is_physical_memory(i64) #1

declare dso_local i64 @ulmin(i64, i64) #1

declare dso_local %struct.TYPE_6__* @vm_phys_paddr_to_vm_page(i64) #1

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @pmap_qenter(i64, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i64 @TLB_PHYS_TO_DIRECT(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i64 @kernacc(i8*, i64, i32) #1

declare dso_local i32 @kva_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
