; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, i32, i32, i32**, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"can't allocate CAM SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CISS_PHYSICAL_BASE = common dso_local global i32 0, align 4
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't allocate memory for controller SIM\0A\00", align 1
@ciss_cam_action = common dso_local global i32 0, align 4
@ciss_cam_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ciss\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"can't allocate CAM SIM for controller %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"can't register SCSI bus %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_cam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_cam_init(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, 2
  %11 = call i32* @cam_simq_alloc(i64 %10)
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %12, i32 0, i32 5
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %17 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %207

19:                                               ; preds = %1
  %20 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CISS_PHYSICAL_BASE, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @max(i32 %22, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i32** @malloc(i32 %32, i32 %33, i32 %36)
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %38, i32 0, i32 4
  store i32** %37, i32*** %39, align 8
  %40 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %40, i32 0, i32 4
  %42 = load i32**, i32*** %41, align 8
  %43 = icmp eq i32** %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %46 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %207

48:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %130, %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %133

55:                                               ; preds = %49
  %56 = load i32, i32* @ciss_cam_action, align 4
  %57 = load i32, i32* @ciss_cam_poll, align 4
  %58 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_get_unit(i32 %61)
  %63 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %63, i32 0, i32 2
  %65 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 2
  %69 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @cam_sim_alloc(i32 %56, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ciss_softc* %58, i32 %62, i32* %64, i32 2, i64 %68, i32* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %74, i32 0, i32 4
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* %73, i32** %79, align 8
  %80 = icmp eq i32* %73, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %55
  %82 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %207

86:                                               ; preds = %55
  %87 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %87, i32 0, i32 2
  %89 = call i32 @mtx_lock(i32* %88)
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %86
  %93 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %93, i32 0, i32 7
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %92, %86
  %104 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %104, i32 0, i32 4
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @xpt_bus_register(i32* %110, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %103
  %118 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %121, i32 0, i32 2
  %123 = call i32 @mtx_unlock(i32* %122)
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %2, align 4
  br label %207

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %92
  %127 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %127, i32 0, i32 2
  %129 = call i32 @mtx_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %49

133:                                              ; preds = %49
  %134 = load i32, i32* @CISS_PHYSICAL_BASE, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %203, %133
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CISS_PHYSICAL_BASE, align 4
  %141 = add nsw i32 %139, %140
  %142 = icmp slt i32 %136, %141
  br i1 %142, label %143, label %206

143:                                              ; preds = %135
  %144 = load i32, i32* @ciss_cam_action, align 4
  %145 = load i32, i32* @ciss_cam_poll, align 4
  %146 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %147 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @device_get_unit(i32 %149)
  %151 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %152 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %151, i32 0, i32 2
  %153 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 2
  %157 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = call i8* @cam_sim_alloc(i32 %144, i32 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ciss_softc* %146, i32 %150, i32* %152, i32 1, i64 %156, i32* %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %162, i32 0, i32 4
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  store i32* %161, i32** %167, align 8
  %168 = icmp eq i32* %161, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %143
  %170 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @ENOMEM, align 4
  store i32 %173, i32* %2, align 4
  br label %207

174:                                              ; preds = %143
  %175 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %176 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %175, i32 0, i32 2
  %177 = call i32 @mtx_lock(i32* %176)
  %178 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %179 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %178, i32 0, i32 4
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %186 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i64 @xpt_bus_register(i32* %184, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %174
  %192 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %195, i32 0, i32 2
  %197 = call i32 @mtx_unlock(i32* %196)
  %198 = load i32, i32* @ENXIO, align 4
  store i32 %198, i32* %2, align 4
  br label %207

199:                                              ; preds = %174
  %200 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %200, i32 0, i32 2
  %202 = call i32 @mtx_unlock(i32* %201)
  br label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %135

206:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %191, %169, %117, %81, %44, %15
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32* @cam_simq_alloc(i64) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i8* @cam_sim_alloc(i32, i32, i8*, %struct.ciss_softc*, i32, i32*, i32, i64, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
