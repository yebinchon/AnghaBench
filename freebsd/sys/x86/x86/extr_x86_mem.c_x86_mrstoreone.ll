; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrstoreone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrstoreone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32, i32, %struct.mem_range_desc* }
%struct.mem_range_desc = type { i32, i32, i32 }

@CR4_PGE = common dso_local global i32 0, align 4
@CR0_NW = common dso_local global i32 0, align 4
@CR0_CD = common dso_local global i32 0, align 4
@MSR_MTRRdefType = common dso_local global i32 0, align 4
@MTRR_DEF_ENABLE = common dso_local global i32 0, align 4
@MR686_FIXMTRR = common dso_local global i32 0, align 4
@MSR_MTRR64kBase = common dso_local global i32 0, align 4
@MTRR_N64K = common dso_local global i32 0, align 4
@MSR_MTRR16kBase = common dso_local global i32 0, align 4
@MTRR_N16K = common dso_local global i32 0, align 4
@MSR_MTRR4kBase = common dso_local global i32 0, align 4
@MTRR_N4K = common dso_local global i32 0, align 4
@MSR_MTRRVarBase = common dso_local global i32 0, align 4
@MDF_ACTIVE = common dso_local global i32 0, align 4
@mtrr_physmask = common dso_local global i32 0, align 4
@MTRR_PHYSMASK_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @x86_mrstoreone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_mrstoreone(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mem_range_softc*, align 8
  %4 = alloca %struct.mem_range_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.mem_range_softc*
  store %struct.mem_range_softc* %13, %struct.mem_range_softc** %3, align 8
  %14 = load %struct.mem_range_softc*, %struct.mem_range_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %14, i32 0, i32 2
  %16 = load %struct.mem_range_desc*, %struct.mem_range_desc** %15, align 8
  store %struct.mem_range_desc* %16, %struct.mem_range_desc** %4, align 8
  %17 = call i32 (...) @critical_enter()
  %18 = call i32 (...) @rcr4()
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @CR4_PGE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @load_cr4(i32 %22)
  %24 = call i32 (...) @rcr0()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @CR0_NW, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @CR0_CD, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @load_cr0(i32 %30)
  %32 = call i32 (...) @wbinvd()
  %33 = call i32 (...) @invltlb()
  %34 = load i32, i32* @MSR_MTRRdefType, align 4
  %35 = load i32, i32* @MSR_MTRRdefType, align 4
  %36 = call i32 @rdmsr(i32 %35)
  %37 = load i32, i32* @MTRR_DEF_ENABLE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @wrmsr(i32 %34, i32 %39)
  %41 = load %struct.mem_range_softc*, %struct.mem_range_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MR686_FIXMTRR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %177

47:                                               ; preds = %1
  %48 = load i32, i32* @MSR_MTRR64kBase, align 4
  store i32 %48, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %85, %47
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MTRR_N64K, align 4
  %52 = sdiv i32 %51, 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @rdmsr(i32 %55)
  store i32 %56, i32* %5, align 4
  store i32 7, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 8
  store i32 %62, i32* %6, align 4
  %63 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %63, i64 %65
  %67 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, 8
  %72 = ashr i32 %69, %71
  %73 = call i32 @x86_mrt2mtrr(i32 %68, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @wrmsr(i32 %80, i32 %81)
  %83 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %84 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %83, i64 8
  store %struct.mem_range_desc* %84, %struct.mem_range_desc** %4, align 8
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load i32, i32* @MSR_MTRR16kBase, align 4
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %128, %90
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MTRR_N16K, align 4
  %95 = sdiv i32 %94, 8
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @rdmsr(i32 %98)
  store i32 %99, i32* %5, align 4
  store i32 7, i32* %8, align 4
  br label %100

100:                                              ; preds = %119, %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 %104, 8
  store i32 %105, i32* %6, align 4
  %106 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %106, i64 %108
  %110 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 %113, 8
  %115 = ashr i32 %112, %114
  %116 = call i32 @x86_mrt2mtrr(i32 %111, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  br label %100

122:                                              ; preds = %100
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @wrmsr(i32 %123, i32 %124)
  %126 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %127 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %126, i64 8
  store %struct.mem_range_desc* %127, %struct.mem_range_desc** %4, align 8
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %92

133:                                              ; preds = %92
  %134 = load i32, i32* @MSR_MTRR4kBase, align 4
  store i32 %134, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %171, %133
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MTRR_N4K, align 4
  %138 = sdiv i32 %137, 8
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %176

140:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @rdmsr(i32 %141)
  store i32 %142, i32* %5, align 4
  store i32 7, i32* %8, align 4
  br label %143

143:                                              ; preds = %162, %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = shl i32 %147, 8
  store i32 %148, i32* %6, align 4
  %149 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %149, i64 %151
  %153 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %8, align 4
  %157 = mul nsw i32 %156, 8
  %158 = ashr i32 %155, %157
  %159 = call i32 @x86_mrt2mtrr(i32 %154, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  br label %143

165:                                              ; preds = %143
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @wrmsr(i32 %166, i32 %167)
  %169 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %170 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %169, i64 8
  store %struct.mem_range_desc* %170, %struct.mem_range_desc** %4, align 8
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %135

176:                                              ; preds = %135
  br label %177

177:                                              ; preds = %176, %1
  %178 = load i32, i32* @MSR_MTRRVarBase, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %240, %177
  %180 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %181 = load %struct.mem_range_softc*, %struct.mem_range_softc** %3, align 8
  %182 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %181, i32 0, i32 2
  %183 = load %struct.mem_range_desc*, %struct.mem_range_desc** %182, align 8
  %184 = ptrtoint %struct.mem_range_desc* %180 to i64
  %185 = ptrtoint %struct.mem_range_desc* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 12
  %188 = load %struct.mem_range_softc*, %struct.mem_range_softc** %3, align 8
  %189 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %187, %191
  br i1 %192, label %193, label %245

193:                                              ; preds = %179
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @rdmsr(i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %197 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MDF_ACTIVE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %193
  %203 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %204 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @mtrr_physmask, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %6, align 4
  %208 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %209 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @x86_mrt2mtrr(i32 %210, i32 %211)
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  br label %216

215:                                              ; preds = %193
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %215, %202
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @wrmsr(i32 %217, i32 %218)
  %220 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %221 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @MDF_ACTIVE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %216
  %227 = load i32, i32* @MTRR_PHYSMASK_VALID, align 4
  %228 = load i32, i32* @mtrr_physmask, align 4
  %229 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %230 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rounddown2(i32 %228, i32 %231)
  %233 = or i32 %227, %232
  store i32 %233, i32* %6, align 4
  br label %235

234:                                              ; preds = %216
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %234, %226
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @wrmsr(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 2
  store i32 %242, i32* %9, align 4
  %243 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %244 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %243, i32 1
  store %struct.mem_range_desc* %244, %struct.mem_range_desc** %4, align 8
  br label %179

245:                                              ; preds = %179
  %246 = call i32 (...) @wbinvd()
  %247 = call i32 (...) @invltlb()
  %248 = load i32, i32* @MSR_MTRRdefType, align 4
  %249 = load i32, i32* @MSR_MTRRdefType, align 4
  %250 = call i32 @rdmsr(i32 %249)
  %251 = load i32, i32* @MTRR_DEF_ENABLE, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @wrmsr(i32 %248, i32 %252)
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @load_cr0(i32 %254)
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @load_cr4(i32 %256)
  %258 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @load_cr0(i32) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @invltlb(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @x86_mrt2mtrr(i32, i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
