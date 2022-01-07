; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_clear_critical_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_clear_critical_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i64, i32, i32, %struct.cs* }
%struct.cs = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CURADDR = common dso_local global i32 0, align 4
@AHD_MAX_STEPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%s: Infinite loop in critical section\0A%s: First Instruction 0x%x now 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"critical section loop\00", align 1
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE3 = common dso_local global i32 0, align 4
@LQIMODE0 = common dso_local global i32 0, align 4
@LQIMODE1 = common dso_local global i32 0, align 4
@LQOMODE0 = common dso_local global i32 0, align 4
@LQOMODE1 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@SEQCTL0 = common dso_local global i32 0, align 4
@STEP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i64 0, align 8
@HCNTRL = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_clear_critical_section(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cs*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %248

22:                                               ; preds = %1
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = call i32 @ahd_save_modes(%struct.ahd_softc* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %188, %22
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = load i32, i32* @AHD_MODE_SCSI, align 4
  %29 = load i32, i32* @AHD_MODE_SCSI, align 4
  %30 = call i32 @ahd_set_modes(%struct.ahd_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i32, i32* @CURADDR, align 4
  %33 = call i64 @ahd_inw(%struct.ahd_softc* %31, i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %34, i32 0, i32 4
  %36 = load %struct.cs*, %struct.cs** %35, align 8
  store %struct.cs* %36, %struct.cs** %14, align 8
  store i64 0, i64* %16, align 8
  br label %37

37:                                               ; preds = %57, %26
  %38 = load i64, i64* %16, align 8
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.cs*, %struct.cs** %14, align 8
  %45 = getelementptr inbounds %struct.cs, %struct.cs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.cs*, %struct.cs** %14, align 8
  %51 = getelementptr inbounds %struct.cs, %struct.cs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %16, align 8
  %60 = load %struct.cs*, %struct.cs** %14, align 8
  %61 = getelementptr inbounds %struct.cs, %struct.cs* %60, i32 1
  store %struct.cs* %61, %struct.cs** %14, align 8
  br label %37

62:                                               ; preds = %55, %37
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %191

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @AHD_MAX_STEPS, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = call i8* @ahd_name(%struct.ahd_softc* %74)
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %77 = call i8* @ahd_name(%struct.ahd_softc* %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %15, align 8
  %81 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %75, i64 %78, i32 %79, i64 %80)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %83 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %82)
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %85 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %84)
  %86 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %73, %69
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @FALSE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %158

93:                                               ; preds = %87
  %94 = load i64, i64* %15, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %97 = load i32, i32* @AHD_MODE_CFG, align 4
  %98 = load i32, i32* @AHD_MODE_CFG, align 4
  %99 = call i32 @ahd_set_modes(%struct.ahd_softc* %96, i32 %97, i32 %98)
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = load i32, i32* @SIMODE0, align 4
  %102 = call i64 @ahd_inb(%struct.ahd_softc* %100, i32 %101)
  store i64 %102, i64* %7, align 8
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %104 = load i32, i32* @SIMODE3, align 4
  %105 = call i64 @ahd_inb(%struct.ahd_softc* %103, i32 %104)
  store i64 %105, i64* %9, align 8
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %107 = load i32, i32* @LQIMODE0, align 4
  %108 = call i64 @ahd_inb(%struct.ahd_softc* %106, i32 %107)
  store i64 %108, i64* %10, align 8
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %110 = load i32, i32* @LQIMODE1, align 4
  %111 = call i64 @ahd_inb(%struct.ahd_softc* %109, i32 %110)
  store i64 %111, i64* %11, align 8
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %113 = load i32, i32* @LQOMODE0, align 4
  %114 = call i64 @ahd_inb(%struct.ahd_softc* %112, i32 %113)
  store i64 %114, i64* %12, align 8
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %116 = load i32, i32* @LQOMODE1, align 4
  %117 = call i64 @ahd_inb(%struct.ahd_softc* %115, i32 %116)
  store i64 %117, i64* %13, align 8
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %119 = load i32, i32* @SIMODE0, align 4
  %120 = call i32 @ahd_outb(%struct.ahd_softc* %118, i32 %119, i64 0)
  %121 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %122 = load i32, i32* @SIMODE3, align 4
  %123 = call i32 @ahd_outb(%struct.ahd_softc* %121, i32 %122, i64 0)
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = load i32, i32* @LQIMODE0, align 4
  %126 = call i32 @ahd_outb(%struct.ahd_softc* %124, i32 %125, i64 0)
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %128 = load i32, i32* @LQIMODE1, align 4
  %129 = call i32 @ahd_outb(%struct.ahd_softc* %127, i32 %128, i64 0)
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %131 = load i32, i32* @LQOMODE0, align 4
  %132 = call i32 @ahd_outb(%struct.ahd_softc* %130, i32 %131, i64 0)
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %134 = load i32, i32* @LQOMODE1, align 4
  %135 = call i32 @ahd_outb(%struct.ahd_softc* %133, i32 %134, i64 0)
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %137 = load i32, i32* @AHD_MODE_SCSI, align 4
  %138 = load i32, i32* @AHD_MODE_SCSI, align 4
  %139 = call i32 @ahd_set_modes(%struct.ahd_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %141 = load i32, i32* @SIMODE1, align 4
  %142 = call i64 @ahd_inb(%struct.ahd_softc* %140, i32 %141)
  store i64 %142, i64* %8, align 8
  %143 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %144 = load i32, i32* @SIMODE1, align 4
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* @ENBUSFREE, align 8
  %147 = and i64 %145, %146
  %148 = call i32 @ahd_outb(%struct.ahd_softc* %143, i32 %144, i64 %147)
  %149 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %150 = load i32, i32* @SEQCTL0, align 4
  %151 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %152 = load i32, i32* @SEQCTL0, align 4
  %153 = call i64 @ahd_inb(%struct.ahd_softc* %151, i32 %152)
  %154 = load i64, i64* @STEP, align 8
  %155 = or i64 %153, %154
  %156 = call i32 @ahd_outb(%struct.ahd_softc* %149, i32 %150, i64 %155)
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %93, %87
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %160 = load i32, i32* @CLRSINT1, align 4
  %161 = load i64, i64* @CLRBUSFREE, align 8
  %162 = call i32 @ahd_outb(%struct.ahd_softc* %159, i32 %160, i64 %161)
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %164 = load i32, i32* @CLRINT, align 4
  %165 = load i64, i64* @CLRSCSIINT, align 8
  %166 = call i32 @ahd_outb(%struct.ahd_softc* %163, i32 %164, i64 %165)
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %168 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %169 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %172 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ahd_set_modes(%struct.ahd_softc* %167, i32 %170, i32 %173)
  %175 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %176 = load i32, i32* @HCNTRL, align 4
  %177 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %178 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @ahd_outb(%struct.ahd_softc* %175, i32 %176, i64 %179)
  br label %181

181:                                              ; preds = %186, %158
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %183 = call i32 @ahd_is_paused(%struct.ahd_softc* %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 @aic_delay(i32 200)
  br label %181

188:                                              ; preds = %181
  %189 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %190 = call i32 @ahd_update_modes(%struct.ahd_softc* %189)
  br label %26

191:                                              ; preds = %68
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %244

194:                                              ; preds = %191
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %196 = load i32, i32* @AHD_MODE_CFG, align 4
  %197 = load i32, i32* @AHD_MODE_CFG, align 4
  %198 = call i32 @ahd_set_modes(%struct.ahd_softc* %195, i32 %196, i32 %197)
  %199 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %200 = load i32, i32* @SIMODE0, align 4
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @ahd_outb(%struct.ahd_softc* %199, i32 %200, i64 %201)
  %203 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %204 = load i32, i32* @SIMODE3, align 4
  %205 = load i64, i64* %9, align 8
  %206 = call i32 @ahd_outb(%struct.ahd_softc* %203, i32 %204, i64 %205)
  %207 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %208 = load i32, i32* @LQIMODE0, align 4
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @ahd_outb(%struct.ahd_softc* %207, i32 %208, i64 %209)
  %211 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %212 = load i32, i32* @LQIMODE1, align 4
  %213 = load i64, i64* %11, align 8
  %214 = call i32 @ahd_outb(%struct.ahd_softc* %211, i32 %212, i64 %213)
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %216 = load i32, i32* @LQOMODE0, align 4
  %217 = load i64, i64* %12, align 8
  %218 = call i32 @ahd_outb(%struct.ahd_softc* %215, i32 %216, i64 %217)
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %220 = load i32, i32* @LQOMODE1, align 4
  %221 = load i64, i64* %13, align 8
  %222 = call i32 @ahd_outb(%struct.ahd_softc* %219, i32 %220, i64 %221)
  %223 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %224 = load i32, i32* @AHD_MODE_SCSI, align 4
  %225 = load i32, i32* @AHD_MODE_SCSI, align 4
  %226 = call i32 @ahd_set_modes(%struct.ahd_softc* %223, i32 %224, i32 %225)
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %228 = load i32, i32* @SEQCTL0, align 4
  %229 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %230 = load i32, i32* @SEQCTL0, align 4
  %231 = call i64 @ahd_inb(%struct.ahd_softc* %229, i32 %230)
  %232 = load i64, i64* @STEP, align 8
  %233 = xor i64 %232, -1
  %234 = and i64 %231, %233
  %235 = call i32 @ahd_outb(%struct.ahd_softc* %227, i32 %228, i64 %234)
  %236 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %237 = load i32, i32* @SIMODE1, align 4
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @ahd_outb(%struct.ahd_softc* %236, i32 %237, i64 %238)
  %240 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %241 = load i32, i32* @CLRINT, align 4
  %242 = load i64, i64* @CLRSCSIINT, align 8
  %243 = call i32 @ahd_outb(%struct.ahd_softc* %240, i32 %241, i64 %242)
  br label %244

244:                                              ; preds = %194, %191
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @ahd_restore_modes(%struct.ahd_softc* %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %21
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
