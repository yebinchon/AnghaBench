; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_get_stolen_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_get_stolen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad PGTBL size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AGP_I855_GCC1 = common dso_local global i32 0, align 4
@AGP_G33_MGGC_GGMS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Bad chiptype\0A\00", align 1
@AGP_I855_GCC1_GMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"unknown memory configuration, disabling (GCC1 %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i915_get_stolen_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i915_get_stolen_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_i810_softc* @device_get_softc(i32 %8)
  store %struct.agp_i810_softc* %9, %struct.agp_i810_softc** %4, align 8
  %10 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %11 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %57 [
    i32 131, label %17
    i32 130, label %18
    i32 129, label %19
    i32 133, label %40
    i32 128, label %56
    i32 132, label %56
  ]

17:                                               ; preds = %1
  store i32 128, i32* %7, align 4
  br label %61

18:                                               ; preds = %1
  store i32 256, i32* %7, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %21 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %26 = call i32 @bus_read_4(i32 %24, i32 %25)
  %27 = load i32, i32* @AGP_I810_PGTBL_SIZE_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %35 [
    i32 146, label %29
    i32 145, label %30
    i32 144, label %31
    i32 136, label %32
    i32 134, label %33
    i32 135, label %34
  ]

29:                                               ; preds = %19
  store i32 128, i32* %7, align 4
  br label %39

30:                                               ; preds = %19
  store i32 256, i32* %7, align 4
  br label %39

31:                                               ; preds = %19
  store i32 512, i32* %7, align 4
  br label %39

32:                                               ; preds = %19
  store i32 1024, i32* %7, align 4
  br label %39

33:                                               ; preds = %19
  store i32 2048, i32* %7, align 4
  br label %39

34:                                               ; preds = %19
  store i32 1536, i32* %7, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  br label %222

39:                                               ; preds = %34, %33, %32, %31, %30, %29
  br label %61

40:                                               ; preds = %1
  %41 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %42 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AGP_I855_GCC1, align 4
  %45 = call i32 @pci_read_config(i32 %43, i32 %44, i32 2)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @AGP_G33_MGGC_GGMS_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %51 [
    i32 152, label %49
    i32 151, label %50
  ]

49:                                               ; preds = %40
  store i32 1024, i32* %7, align 4
  br label %55

50:                                               ; preds = %40
  store i32 2048, i32* %7, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %2, align 4
  br label %222

55:                                               ; preds = %50, %49
  br label %61

56:                                               ; preds = %1, %1
  store i32 0, i32* %7, align 4
  br label %61

57:                                               ; preds = %1
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %2, align 4
  br label %222

61:                                               ; preds = %56, %55, %39, %18, %17
  %62 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %63 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AGP_I855_GCC1, align 4
  %66 = call i32 @pci_read_config(i32 %64, i32 %65, i32 1)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @AGP_I855_GCC1_GMS, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %203 [
    i32 142, label %70
    i32 140, label %71
    i32 139, label %72
    i32 143, label %73
    i32 141, label %74
    i32 138, label %75
    i32 137, label %86
    i32 154, label %97
    i32 153, label %108
    i32 147, label %119
    i32 150, label %140
    i32 149, label %161
    i32 148, label %182
  ]

70:                                               ; preds = %61
  store i32 1024, i32* %6, align 4
  br label %208

71:                                               ; preds = %61
  store i32 4096, i32* %6, align 4
  br label %208

72:                                               ; preds = %61
  store i32 8192, i32* %6, align 4
  br label %208

73:                                               ; preds = %61
  store i32 16384, i32* %6, align 4
  br label %208

74:                                               ; preds = %61
  store i32 32768, i32* %6, align 4
  br label %208

75:                                               ; preds = %61
  %76 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %77 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 49152, i32 0
  store i32 %85, i32* %6, align 4
  br label %208

86:                                               ; preds = %61
  %87 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %88 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 65536, i32 0
  store i32 %96, i32* %6, align 4
  br label %208

97:                                               ; preds = %61
  %98 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %99 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 2
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 131072, i32 0
  store i32 %107, i32* %6, align 4
  br label %208

108:                                              ; preds = %61
  %109 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %110 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 2
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 262144, i32 0
  store i32 %118, i32* %6, align 4
  br label %208

119:                                              ; preds = %61
  %120 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %121 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 129
  br i1 %127, label %137, label %128

128:                                              ; preds = %119
  %129 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %130 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 132
  br i1 %136, label %137, label %138

137:                                              ; preds = %128, %119
  store i32 98304, i32* %6, align 4
  br label %139

138:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %137
  br label %208

140:                                              ; preds = %61
  %141 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %142 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 129
  br i1 %148, label %158, label %149

149:                                              ; preds = %140
  %150 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %151 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 132
  br i1 %157, label %158, label %159

158:                                              ; preds = %149, %140
  store i32 163840, i32* %6, align 4
  br label %160

159:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %159, %158
  br label %208

161:                                              ; preds = %61
  %162 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %163 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 129
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %172 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 132
  br i1 %178, label %179, label %180

179:                                              ; preds = %170, %161
  store i32 229376, i32* %6, align 4
  br label %181

180:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %179
  br label %208

182:                                              ; preds = %61
  %183 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %184 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 129
  br i1 %190, label %200, label %191

191:                                              ; preds = %182
  %192 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %193 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %192, i32 0, i32 2
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 132
  br i1 %199, label %200, label %201

200:                                              ; preds = %191, %182
  store i32 360448, i32* %6, align 4
  br label %202

201:                                              ; preds = %191
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %200
  br label %208

203:                                              ; preds = %61
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* %2, align 4
  br label %222

208:                                              ; preds = %202, %181, %160, %139, %108, %97, %86, %75, %74, %73, %72, %71, %70
  %209 = load i32, i32* %7, align 4
  %210 = add i32 %209, 4
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = mul i32 %211, 1024
  %213 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %214 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %7, align 4
  %217 = sub i32 %215, %216
  %218 = mul i32 %217, 1024
  %219 = udiv i32 %218, 4096
  %220 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %221 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %208, %203, %57, %51, %35
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
