; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.intr_pic = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%u nirqs exceeds maximum supported %zu\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"exhausted IRQ resource IDs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BCM_MIPS_IRQ_SHARED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"missing shared interrupt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"shared interrupt %d unavailable\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"error registering PIC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_mips_attach(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_mips_softc*, align 8
  %11 = alloca %struct.intr_pic*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.bcm_mips_softc* @device_get_softc(i32 %19)
  store %struct.bcm_mips_softc* %20, %struct.bcm_mips_softc** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %23 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %26 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %29 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %31 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %34 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i64 @nitems(%struct.TYPE_5__* %35)
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %41 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %44 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i64 @nitems(%struct.TYPE_5__* %45)
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %46)
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %5, align 4
  br label %193

49:                                               ; preds = %4
  store %struct.intr_pic* null, %struct.intr_pic** %11, align 8
  %50 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %51 = call i64 @bcm_mips_pic_xref(%struct.bcm_mips_softc* %50)
  store i64 %51, i64* %12, align 8
  %52 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %53 = call i32 @BCM_MIPS_LOCK_INIT(%struct.bcm_mips_softc* %52)
  %54 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %55 = call i32 @bcm_mips_register_isrcs(%struct.bcm_mips_softc* %54)
  store i32 %55, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %59 = call i32 @BCM_MIPS_LOCK_DESTROY(%struct.bcm_mips_softc* %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %5, align 4
  br label %193

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @bhnd_get_intr_count(i32 %62)
  store i64 %63, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %64

64:                                               ; preds = %112, %61
  %65 = load i64, i64* %16, align 8
  %66 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %67 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %64
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @INT_MAX, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %15, align 4
  br label %146

78:                                               ; preds = %70
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %81 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %86 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %87 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = call i32 @bcm_mips_init_cpuirq_unavail(%struct.bcm_mips_softc* %85, %struct.TYPE_5__* %90)
  store i32 %91, i32* %15, align 4
  br label %103

92:                                               ; preds = %78
  %93 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %94 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %95 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @bcm_mips_init_cpuirq(%struct.bcm_mips_softc* %93, %struct.TYPE_5__* %98, i64 %99, i64 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %92, %84
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %146

107:                                              ; preds = %103
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %16, align 8
  br label %64

115:                                              ; preds = %64
  %116 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %117 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %123 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %126 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %135 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %6, align 4
  %138 = load i64, i64* %12, align 8
  %139 = call %struct.intr_pic* @intr_pic_register(i32 %137, i64 %138)
  store %struct.intr_pic* %139, %struct.intr_pic** %11, align 8
  %140 = icmp eq %struct.intr_pic* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %15, align 4
  br label %146

145:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %193

146:                                              ; preds = %141, %106, %74
  %147 = load %struct.intr_pic*, %struct.intr_pic** %11, align 8
  %148 = icmp ne %struct.intr_pic* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @intr_pic_deregister(i32 %150, i32 0)
  br label %152

152:                                              ; preds = %149, %146
  store i64 0, i64* %17, align 8
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i64, i64* %17, align 8
  %155 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %156 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = call i64 @nitems(%struct.TYPE_5__* %157)
  %159 = icmp ult i64 %154, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %162 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i64, i64* %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = call i32 @intr_isrc_deregister(i32* %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i64, i64* %17, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %17, align 8
  br label %153

171:                                              ; preds = %153
  store i64 0, i64* %18, align 8
  br label %172

172:                                              ; preds = %186, %171
  %173 = load i64, i64* %18, align 8
  %174 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %175 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ult i64 %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %180 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %181 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %180, i32 0, i32 2
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i64, i64* %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %183
  %185 = call i32 @bcm_mips_fini_cpuirq(%struct.bcm_mips_softc* %179, %struct.TYPE_5__* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i64, i64* %18, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %18, align 8
  br label %172

189:                                              ; preds = %172
  %190 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %10, align 8
  %191 = call i32 @BCM_MIPS_LOCK_DESTROY(%struct.bcm_mips_softc* %190)
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %145, %57, %38
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.bcm_mips_softc* @device_get_softc(i32) #1

declare dso_local i64 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bcm_mips_pic_xref(%struct.bcm_mips_softc*) #1

declare dso_local i32 @BCM_MIPS_LOCK_INIT(%struct.bcm_mips_softc*) #1

declare dso_local i32 @bcm_mips_register_isrcs(%struct.bcm_mips_softc*) #1

declare dso_local i32 @BCM_MIPS_LOCK_DESTROY(%struct.bcm_mips_softc*) #1

declare dso_local i64 @bhnd_get_intr_count(i32) #1

declare dso_local i32 @bcm_mips_init_cpuirq_unavail(%struct.bcm_mips_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @bcm_mips_init_cpuirq(%struct.bcm_mips_softc*, %struct.TYPE_5__*, i64, i64, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local %struct.intr_pic* @intr_pic_register(i32, i64) #1

declare dso_local i32 @intr_pic_deregister(i32, i32) #1

declare dso_local i32 @intr_isrc_deregister(i32*) #1

declare dso_local i32 @bcm_mips_fini_cpuirq(%struct.bcm_mips_softc*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
