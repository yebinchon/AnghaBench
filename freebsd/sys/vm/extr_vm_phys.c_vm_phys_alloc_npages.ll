; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_npages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_freelist = type { i32 }

@vm_ndomains = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"vm_phys_alloc_npages: domain %d is out of range\00", align 1
@VM_NFREEPOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"vm_phys_alloc_npages: pool %d is out of range\00", align 1
@VM_NFREEORDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"vm_phys_alloc_npages: npages %d is out of range\00", align 1
@VM_NFREELIST = common dso_local global i32 0, align 4
@vm_freelist_to_flind = common dso_local global i32* null, align 8
@vm_phys_free_queues = common dso_local global %struct.vm_freelist**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_phys_alloc_npages(i32 %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.vm_freelist*, align 8
  %11 = alloca %struct.vm_freelist*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @vm_ndomains, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i1 [ false, %4 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %29, i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @VM_NFREEPOOL, align 4
  %36 = icmp slt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %37, i8* %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VM_NFREEORDER, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = icmp sle i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %47, i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @VM_DOMAIN(i32 %52)
  %54 = call i32 @vm_domain_free_assert_locked(i32 %53)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %239, %27
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @VM_NFREELIST, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %242

59:                                               ; preds = %55
  %60 = load i32*, i32** @vm_freelist_to_flind, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %239

68:                                               ; preds = %59
  %69 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %69, i64 %71
  %73 = load %struct.vm_freelist***, %struct.vm_freelist**** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %73, i64 %75
  %77 = load %struct.vm_freelist**, %struct.vm_freelist*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %77, i64 %79
  %81 = load %struct.vm_freelist*, %struct.vm_freelist** %80, align 8
  store %struct.vm_freelist* %81, %struct.vm_freelist** %11, align 8
  store i32 0, i32* %19, align 4
  br label %82

82:                                               ; preds = %143, %68
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* @VM_NFREEORDER, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %146

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %141, %86
  %88 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %88, i64 %90
  %92 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %91, i32 0, i32 0
  %93 = call i32* @TAILQ_FIRST(i32* %92)
  store i32* %93, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %142

95:                                               ; preds = %87
  %96 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @vm_freelist_rem(%struct.vm_freelist* %96, i32* %97, i32 %98)
  %100 = load i32, i32* %19, align 4
  %101 = shl i32 1, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @imin(i32 %104, i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %114, %95
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %12, align 8
  %117 = load i32**, i32*** %9, align 8
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32*, i32** %117, i64 %120
  store i32* %115, i32** %121, align 8
  br label %110

122:                                              ; preds = %110
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %18, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %132 = call i32 @vm_phys_enq_range(i32* %127, i32 %130, %struct.vm_freelist* %131, i32 1)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %5, align 4
  br label %244

134:                                              ; preds = %122
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %5, align 4
  br label %244

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  br label %87

142:                                              ; preds = %87
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %82

146:                                              ; preds = %82
  %147 = load i32, i32* @VM_NFREEORDER, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %235, %146
  %150 = load i32, i32* %19, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %238

152:                                              ; preds = %149
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %231, %152
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* @VM_NFREEPOOL, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %234

157:                                              ; preds = %153
  %158 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %158, i64 %160
  %162 = load %struct.vm_freelist***, %struct.vm_freelist**** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %162, i64 %164
  %166 = load %struct.vm_freelist**, %struct.vm_freelist*** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %166, i64 %168
  %170 = load %struct.vm_freelist*, %struct.vm_freelist** %169, align 8
  store %struct.vm_freelist* %170, %struct.vm_freelist** %10, align 8
  br label %171

171:                                              ; preds = %229, %157
  %172 = load %struct.vm_freelist*, %struct.vm_freelist** %10, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %172, i64 %174
  %176 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %175, i32 0, i32 0
  %177 = call i32* @TAILQ_FIRST(i32* %176)
  store i32* %177, i32** %12, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %230

179:                                              ; preds = %171
  %180 = load %struct.vm_freelist*, %struct.vm_freelist** %10, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @vm_freelist_rem(%struct.vm_freelist* %180, i32* %181, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @vm_phys_set_pool(i32 %184, i32* %185, i32 %186)
  %188 = load i32, i32* %19, align 4
  %189 = shl i32 1, %188
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %17, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @imin(i32 %192, i32 %193)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %195, %196
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %202, %179
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = load i32*, i32** %12, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %12, align 8
  %205 = load i32**, i32*** %9, align 8
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32*, i32** %205, i64 %208
  store i32* %203, i32** %209, align 8
  br label %198

210:                                              ; preds = %198
  %211 = load i32, i32* %18, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %18, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %220 = call i32 @vm_phys_enq_range(i32* %215, i32 %218, %struct.vm_freelist* %219, i32 1)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %5, align 4
  br label %244

222:                                              ; preds = %210
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %5, align 4
  br label %244

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228
  br label %171

230:                                              ; preds = %171
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %20, align 4
  br label %153

234:                                              ; preds = %153
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %19, align 4
  br label %149

238:                                              ; preds = %149
  br label %239

239:                                              ; preds = %238, %67
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %55

242:                                              ; preds = %55
  %243 = load i32, i32* %17, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %242, %226, %214, %138, %126
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @VM_DOMAIN(i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @vm_freelist_rem(%struct.vm_freelist*, i32*, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @vm_phys_enq_range(i32*, i32, %struct.vm_freelist*, i32) #1

declare dso_local i32 @vm_phys_set_pool(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
