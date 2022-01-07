; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_decode_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_decode_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"could not retrieve PCI LAW target info\0A\00", align 1
@OFW_PCI_PHYS_HI_SPACEMASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown range type %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not program LAW for range %d\0A\00", align 1
@PIWAR_TRGT_LOCAL = common dso_local global i32 0, align 4
@Maxmem = common dso_local global i32 0, align 4
@PIWAR_TRGT_CCSR = common dso_local global i32 0, align 4
@ccsrbar_pa = common dso_local global i32 0, align 4
@ccsrbar_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fsl_pcib_softc*)* @fsl_pcib_decode_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_decode_win(i32 %0, %struct.fsl_pcib_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_pcib_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fsl_pcib_softc* %1, %struct.fsl_pcib_softc** %5, align 8
  %10 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %14 = call i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc* %13, i32 0, i32 -1, i32 0, i64 0, i64 0)
  %15 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %18, i32 0, i32 0
  %20 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %20, i32 0, i32 1
  %22 = call i32 @law_pci_target(i32 %17, i32* %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %264

29:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %228, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %231

37:                                               ; preds = %30
  %38 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %39 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %186 [
    i32 131, label %49
    i32 130, label %50
    i32 129, label %118
    i32 128, label %118
  ]

49:                                               ; preds = %37
  br label %228

50:                                               ; preds = %37
  %51 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %52 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %55 = load i32, i32* @SYS_RES_IOPORT, align 4
  %56 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %57 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %66 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %75 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc* %54, i32 2, i32 %55, i32 %64, i64 %73, i64 %82)
  %84 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %85 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %94 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %93, i32 0, i32 7
  store i64 %92, i64* %94, align 8
  %95 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %96 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %105 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %103, %112
  %114 = sub nsw i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %117 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  br label %199

118:                                              ; preds = %37, %37
  %119 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %120 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  %122 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %123 = load i32, i32* @SYS_RES_MEMORY, align 4
  %124 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %125 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %134 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %143 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc* %122, i32 1, i32 %123, i32 %132, i64 %141, i64 %150)
  %152 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %153 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %162 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %161, i32 0, i32 5
  store i64 %160, i64* %162, align 8
  %163 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %164 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %173 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %171, %180
  %182 = sub nsw i64 %181, 1
  %183 = trunc i64 %182 to i32
  %184 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %185 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  br label %199

186:                                              ; preds = %37
  %187 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %188 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %197 = and i32 %195, %196
  %198 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %186, %118, %50
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %202 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %211 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @law_enable(i32 %200, i32 %209, i64 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %199
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %3, align 4
  br label %264

227:                                              ; preds = %199
  br label %228

228:                                              ; preds = %227, %49
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %30

231:                                              ; preds = %30
  %232 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %233 = call i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc* %232, i32 3, i32 -1, i32 0, i64 0, i64 0)
  %234 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %235 = call i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc* %234, i32 4, i32 -1, i32 0, i64 0, i64 0)
  %236 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %237 = call i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc* %236, i32 1, i32 -1, i32 0, i32 0, i32 0)
  %238 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %239 = call i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc* %238, i32 2, i32 -1, i32 0, i32 0, i32 0)
  %240 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %241 = load i32, i32* @PIWAR_TRGT_LOCAL, align 4
  %242 = load i32, i32* @Maxmem, align 4
  %243 = call i32 @ptoa(i32 %242)
  %244 = call i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc* %240, i32 3, i32 %241, i32 0, i32 %243, i32 0)
  %245 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %246 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp sge i32 %247, 2
  br i1 %248, label %249, label %256

249:                                              ; preds = %231
  %250 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %251 = load i32, i32* @PIWAR_TRGT_CCSR, align 4
  %252 = load i32, i32* @ccsrbar_pa, align 4
  %253 = load i32, i32* @ccsrbar_size, align 4
  %254 = load i32, i32* @ccsrbar_pa, align 4
  %255 = call i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc* %250, i32 8, i32 %251, i32 %252, i32 %253, i32 %254)
  br label %263

256:                                              ; preds = %231
  %257 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %5, align 8
  %258 = load i32, i32* @PIWAR_TRGT_CCSR, align 4
  %259 = load i32, i32* @ccsrbar_pa, align 4
  %260 = load i32, i32* @ccsrbar_size, align 4
  %261 = load i32, i32* @ccsrbar_pa, align 4
  %262 = call i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc* %257, i32 1, i32 %258, i32 %259, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %256, %249
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %222, %25
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @fsl_pcib_outbound(%struct.fsl_pcib_softc*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @law_pci_target(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @law_enable(i32, i32, i64) #1

declare dso_local i32 @fsl_pcib_inbound(%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
