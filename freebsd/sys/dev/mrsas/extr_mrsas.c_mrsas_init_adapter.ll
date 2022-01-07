; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_init_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64 }

@mrsas_reg_set = common dso_local global i32 0, align 4
@outbound_scratch_pad = common dso_local global i32 0, align 4
@MRSAS_FWSTATE_MAXCMD_MASK = common dso_local global i32 0, align 4
@MRSAS_MAX_MFI_CMDS = common dso_local global i64 0, align 8
@MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE = common dso_local global i32 0, align 4
@outbound_scratch_pad_2 = common dso_local global i32 0, align 4
@MEGASAS_MAX_CHAIN_SIZE_UNITS_MASK = common dso_local global i32 0, align 4
@MEGASAS_MAX_CHAIN_SIZE_MASK = common dso_local global i32 0, align 4
@MEGASAS_1MB_IO = common dso_local global i32 0, align 4
@MEGASAS_256K_IO = common dso_local global i32 0, align 4
@MRSAS_RAID_SCSI_IO_REQUEST = common dso_local global i32 0, align 4
@SGL = common dso_local global i32 0, align 4
@MRSAS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"max sge: 0x%x, max chain frame size: 0x%x, max fw cmd: 0x%x\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_init_adapter(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %10 = load i32, i32* @mrsas_reg_set, align 4
  %11 = load i32, i32* @outbound_scratch_pad, align 4
  %12 = call i32 @offsetof(i32 %10, i32 %11)
  %13 = call i8* @mrsas_read_reg_with_retries(%struct.mrsas_softc* %9, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MRSAS_FWSTATE_MAXCMD_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @MRSAS_MAX_MFI_CMDS, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %32, i32 0, i32 14
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = add nsw i32 %37, 15
  %39 = sdiv i32 %38, 16
  %40 = mul nsw i32 %39, 16
  %41 = mul nsw i32 %40, 2
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %61 = load i32, i32* @MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %61, %65
  %67 = add nsw i32 %60, %66
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %71 = load i32, i32* @mrsas_reg_set, align 4
  %72 = load i32, i32* @outbound_scratch_pad_2, align 4
  %73 = call i32 @offsetof(i32 %71, i32 %72)
  %74 = call i8* @mrsas_read_reg_with_retries(%struct.mrsas_softc* %70, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MEGASAS_MAX_CHAIN_SIZE_UNITS_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %1
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MEGASAS_MAX_CHAIN_SIZE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = ashr i32 %83, 5
  %85 = load i32, i32* @MEGASAS_1MB_IO, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  br label %98

89:                                               ; preds = %1
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @MEGASAS_MAX_CHAIN_SIZE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = ashr i32 %92, 5
  %94 = load i32, i32* @MEGASAS_256K_IO, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %80
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %109 = load i32, i32* @MRSAS_RAID_SCSI_IO_REQUEST, align 4
  %110 = load i32, i32* @SGL, align 4
  %111 = call i32 @offsetof(i32 %109, i32 %110)
  %112 = sub nsw i32 %108, %111
  %113 = sdiv i32 %112, 16
  %114 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %117 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %123 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  %124 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %128 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %126, %129
  %131 = sub nsw i32 %130, 2
  %132 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %133 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %135 = load i32, i32* @MRSAS_INFO, align 4
  %136 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %143 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @mrsas_dprint(%struct.mrsas_softc* %134, i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %141, i32 %144)
  %146 = load i32, i32* @MRSAS_RAID_SCSI_IO_REQUEST, align 4
  %147 = load i32, i32* @SGL, align 4
  %148 = call i32 @offsetof(i32 %146, i32 %147)
  %149 = sdiv i32 %148, 16
  %150 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %153, 4
  %155 = udiv i64 %154, 16
  %156 = trunc i64 %155 to i32
  %157 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %158 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %157, i32 0, i32 11
  store i32 %156, i32* %158, align 4
  %159 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %160 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %98
  %164 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %165 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  br label %168

167:                                              ; preds = %98
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i32 [ %166, %163 ], [ 1, %167 ]
  store i32 %169, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %181, %168
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %176 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %175, i32 0, i32 13
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64 0, i64* %180, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %170

184:                                              ; preds = %170
  %185 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %186 = call i32 @mrsas_alloc_mem(%struct.mrsas_softc* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @SUCCESS, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %2, align 4
  br label %209

192:                                              ; preds = %184
  %193 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %194 = call i32 @mrsas_alloc_mpt_cmds(%struct.mrsas_softc* %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @SUCCESS, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %209

200:                                              ; preds = %192
  %201 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %202 = call i32 @mrsas_ioc_init(%struct.mrsas_softc* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @SUCCESS, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %209

208:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %206, %198, %190
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i8* @mrsas_read_reg_with_retries(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrsas_alloc_mem(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_alloc_mpt_cmds(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_ioc_init(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
