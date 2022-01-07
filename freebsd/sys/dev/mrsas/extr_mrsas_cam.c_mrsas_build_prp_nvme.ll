; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_prp_nvme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_build_prp_nvme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { i32, i64, i64, %struct.TYPE_5__*, %struct.mrsas_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.mrsas_softc = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }

@MR_DEFAULT_NVME_PAGE_SIZE = common dso_local global i32 0, align 4
@IEEE_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@IEEE_SGE_FLAGS_SYSTEM_ADDR = common dso_local global i32 0, align 4
@MPI26_IEEE_SGE_FLAGS_NSF_NVME_PRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"BRCM: Put prp pointer as we are at page boundary ptr_sgl: 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_mpt_cmd*, %struct.TYPE_7__*, i32)* @mrsas_build_prp_nvme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_build_prp_nvme(%struct.mrsas_mpt_cmd* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrsas_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.mrsas_mpt_cmd* %0, %struct.mrsas_mpt_cmd** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %23, i32 0, i32 4
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %24, align 8
  store %struct.mrsas_softc* %25, %struct.mrsas_softc** %7, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %19, align 8
  %26 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %21, align 4
  %29 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %30 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MR_DEFAULT_NVME_PAGE_SIZE, align 4
  %33 = call i64 @max(i32 %31, i32 %32)
  store i64 %33, i64* %22, align 8
  %34 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %13, align 8
  %39 = load i64, i64* %22, align 8
  %40 = sub i64 %39, 1
  store i64 %40, i64* %17, align 8
  %41 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %14, align 8
  %45 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %50 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memset(i64* %48, i32 0, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = bitcast i32* %55 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  %57 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @IEEE_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %65 = load i32, i32* @IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MPI26_IEEE_SGE_FLAGS_NSF_NVME_PRP, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %12, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i64, i64* %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %16, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = load i64, i64* %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* %19, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %17, align 8
  %86 = and i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i64, i64* %22, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %88, %90
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %20, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %3
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %16, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %20, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  br label %135

116:                                              ; preds = %3
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %20, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %16, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load i64, i64* %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %8, align 4
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %121, %116
  br label %135

135:                                              ; preds = %134, %107
  br label %136

136:                                              ; preds = %191, %190, %135
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %17, align 8
  %139 = and i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %9, align 4
  %141 = load i64*, i64** %14, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = ptrtoint i64* %142 to i64
  %144 = load i64, i64* %17, align 8
  %145 = and i64 %143, %144
  store i64 %145, i64* %18, align 8
  %146 = load i64, i64* %18, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %136
  %149 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %150 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i64*, i64** %14, align 8
  %153 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64* %152)
  %154 = load i64, i64* %15, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %15, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load i64*, i64** %14, align 8
  store i64 %156, i64* %157, align 8
  %158 = load i64*, i64** %14, align 8
  %159 = getelementptr inbounds i64, i64* %158, i32 1
  store i64* %159, i64** %14, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %148, %136
  %163 = load i64, i64* %16, align 8
  %164 = load i64*, i64** %14, align 8
  store i64 %163, i64* %164, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %15, align 8
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load i64, i64* %22, align 8
  %172 = load i64, i64* %16, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %22, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = sub i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %8, align 4
  %179 = load i64, i64* %22, align 8
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = sub i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %21, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %162
  br label %204

187:                                              ; preds = %162
  %188 = load i32, i32* %8, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %136

191:                                              ; preds = %187
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = load i64, i64* %19, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %16, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = load i64, i64* %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %8, align 4
  %202 = load i64, i64* %19, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %19, align 8
  br label %136

204:                                              ; preds = %186
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  %210 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %211 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %210, i32 0, i32 0
  %212 = call i32 @mrsas_atomic_inc(i32* %211)
  ret void
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64*) #1

declare dso_local i32 @mrsas_atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
