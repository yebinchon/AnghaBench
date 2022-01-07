; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_cheetah.c_cheetah_tlb_flush_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_cheetah.c_cheetah_tlb_flush_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHEETAH_T16_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_T16 = common dso_local global i32 0, align 4
@ASI_DTLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4
@ASI_DTLB_TAG_READ_REG = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4
@TD_L = common dso_local global i32 0, align 4
@TLB_CTX_KERNEL = common dso_local global i64 0, align 8
@ASI_ITLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4
@ASI_ITLB_TAG_READ_REG = common dso_local global i32 0, align 4
@CHEETAH_DT512_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_DT512_0 = common dso_local global i32 0, align 4
@TLB_DAR_DT512_1 = common dso_local global i32 0, align 4
@impl = common dso_local global i32 0, align 4
@CPU_IMPL_ULTRASPARCIVp = common dso_local global i64 0, align 8
@CHEETAH_IT512_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_IT512 = common dso_local global i32 0, align 4
@CHEETAH_IT128_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_IT128 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheetah_tlb_flush_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %76, %0
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CHEETAH_T16_ENTRIES, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %79

10:                                               ; preds = %6
  %11 = load i32, i32* @TLB_DAR_T16, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TLB_DAR_SLOT(i32 %11, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = call i32 (...) @intr_disable()
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %17 = call i32 @ldxa(i64 %15, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %20 = call i32 @ldxa(i64 %18, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @intr_restore(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @ASI_DTLB_TAG_READ_REG, align 4
  %25 = call i32 @ldxa(i64 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @TD_V, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %10
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @TD_L, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @TLB_TAR_CTX(i32 %36)
  %38 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %43 = call i32 @stxa_sync(i64 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %40, %35, %30, %10
  %45 = call i32 (...) @intr_disable()
  store i32 %45, i32* %3, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %48 = call i32 @ldxa(i64 %46, i32 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %51 = call i32 @ldxa(i64 %49, i32 %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @intr_restore(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @ASI_ITLB_TAG_READ_REG, align 4
  %56 = call i32 @ldxa(i64 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @TD_V, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %44
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @TD_L, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %2, align 4
  %68 = call i64 @TLB_TAR_CTX(i32 %67)
  %69 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %74 = call i32 @stxa_sync(i64 %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71, %66, %61, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %4, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %6

79:                                               ; preds = %6
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %143, %79
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @CHEETAH_DT512_ENTRIES, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %146

84:                                               ; preds = %80
  %85 = load i32, i32* @TLB_DAR_DT512_0, align 4
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @TLB_DAR_SLOT(i32 %85, i64 %86)
  store i64 %87, i64* %5, align 8
  %88 = call i32 (...) @intr_disable()
  store i32 %88, i32* %3, align 4
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %91 = call i32 @ldxa(i64 %89, i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %94 = call i32 @ldxa(i64 %92, i32 %93)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @intr_restore(i32 %95)
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* @ASI_DTLB_TAG_READ_REG, align 4
  %99 = call i32 @ldxa(i64 %97, i32 %98)
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @TD_V, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %84
  %105 = load i32, i32* %2, align 4
  %106 = call i64 @TLB_TAR_CTX(i32 %105)
  %107 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i64, i64* %5, align 8
  %111 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %112 = call i32 @stxa_sync(i64 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %109, %104, %84
  %114 = load i32, i32* @TLB_DAR_DT512_1, align 4
  %115 = load i64, i64* %4, align 8
  %116 = call i64 @TLB_DAR_SLOT(i32 %114, i64 %115)
  store i64 %116, i64* %5, align 8
  %117 = call i32 (...) @intr_disable()
  store i32 %117, i32* %3, align 4
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %120 = call i32 @ldxa(i64 %118, i32 %119)
  %121 = load i64, i64* %5, align 8
  %122 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %123 = call i32 @ldxa(i64 %121, i32 %122)
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @intr_restore(i32 %124)
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* @ASI_DTLB_TAG_READ_REG, align 4
  %128 = call i32 @ldxa(i64 %126, i32 %127)
  store i32 %128, i32* %2, align 4
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* @TD_V, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %113
  %134 = load i32, i32* %2, align 4
  %135 = call i64 @TLB_TAR_CTX(i32 %134)
  %136 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %141 = call i32 @stxa_sync(i64 %139, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %138, %133, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %4, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %4, align 8
  br label %80

146:                                              ; preds = %80
  %147 = load i32, i32* @impl, align 4
  %148 = call i64 @PCPU_GET(i32 %147)
  %149 = load i64, i64* @CPU_IMPL_ULTRASPARCIVp, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %146
  store i64 0, i64* %4, align 8
  br label %152

152:                                              ; preds = %186, %151
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @CHEETAH_IT512_ENTRIES, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  %157 = load i32, i32* @TLB_DAR_IT512, align 4
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @TLB_DAR_SLOT(i32 %157, i64 %158)
  store i64 %159, i64* %5, align 8
  %160 = call i32 (...) @intr_disable()
  store i32 %160, i32* %3, align 4
  %161 = load i64, i64* %5, align 8
  %162 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %163 = call i32 @ldxa(i64 %161, i32 %162)
  %164 = load i64, i64* %5, align 8
  %165 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %166 = call i32 @ldxa(i64 %164, i32 %165)
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @intr_restore(i32 %167)
  %169 = load i64, i64* %5, align 8
  %170 = load i32, i32* @ASI_ITLB_TAG_READ_REG, align 4
  %171 = call i32 @ldxa(i64 %169, i32 %170)
  store i32 %171, i32* %2, align 4
  %172 = load i32, i32* %1, align 4
  %173 = load i32, i32* @TD_V, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %156
  %177 = load i32, i32* %2, align 4
  %178 = call i64 @TLB_TAR_CTX(i32 %177)
  %179 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i64, i64* %5, align 8
  %183 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %184 = call i32 @stxa_sync(i64 %182, i32 %183, i32 0)
  br label %185

185:                                              ; preds = %181, %176, %156
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %4, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %4, align 8
  br label %152

189:                                              ; preds = %152
  br label %229

190:                                              ; preds = %146
  store i64 0, i64* %4, align 8
  br label %191

191:                                              ; preds = %225, %190
  %192 = load i64, i64* %4, align 8
  %193 = load i64, i64* @CHEETAH_IT128_ENTRIES, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %228

195:                                              ; preds = %191
  %196 = load i32, i32* @TLB_DAR_IT128, align 4
  %197 = load i64, i64* %4, align 8
  %198 = call i64 @TLB_DAR_SLOT(i32 %196, i64 %197)
  store i64 %198, i64* %5, align 8
  %199 = call i32 (...) @intr_disable()
  store i32 %199, i32* %3, align 4
  %200 = load i64, i64* %5, align 8
  %201 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %202 = call i32 @ldxa(i64 %200, i32 %201)
  %203 = load i64, i64* %5, align 8
  %204 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %205 = call i32 @ldxa(i64 %203, i32 %204)
  store i32 %205, i32* %1, align 4
  %206 = load i64, i64* %5, align 8
  %207 = load i32, i32* @ASI_ITLB_TAG_READ_REG, align 4
  %208 = call i32 @ldxa(i64 %206, i32 %207)
  store i32 %208, i32* %2, align 4
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @intr_restore(i32 %209)
  %211 = load i32, i32* %1, align 4
  %212 = load i32, i32* @TD_V, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %195
  %216 = load i32, i32* %2, align 4
  %217 = call i64 @TLB_TAR_CTX(i32 %216)
  %218 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load i64, i64* %5, align 8
  %222 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %223 = call i32 @stxa_sync(i64 %221, i32 %222, i32 0)
  br label %224

224:                                              ; preds = %220, %215, %195
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %4, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %4, align 8
  br label %191

228:                                              ; preds = %191
  br label %229

229:                                              ; preds = %228, %189
  ret void
}

declare dso_local i64 @TLB_DAR_SLOT(i32, i64) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @ldxa(i64, i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i64 @TLB_TAR_CTX(i32) #1

declare dso_local i32 @stxa_sync(i64, i32, i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
