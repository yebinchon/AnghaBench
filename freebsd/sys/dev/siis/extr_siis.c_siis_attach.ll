; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.siis_controller = type { i32, %struct.TYPE_6__, i8*, i8*, i8*, i8*, i32, i32, i32* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }

@siis_ids = common dso_local global %struct.TYPE_5__* null, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SIIS_GCTL = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"I/O memory addresses\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"siisch\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to add channel device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @siis_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.siis_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.siis_controller* @device_get_softc(i32* %10)
  store %struct.siis_controller* %11, %struct.siis_controller** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @pci_get_devid(i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %16 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %15, i32 0, i32 8
  store i32* %14, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @siis_ids, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @siis_ids, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %34, %17
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @siis_ids, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %47 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = call i8* @PCIR_BAR(i32 0)
  %49 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %50 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %54 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %53, i32 0, i32 3
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i8* @bus_alloc_resource_any(i32* %51, i32 %52, i8** %54, i32 %55)
  %57 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %58 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = icmp ne i8* %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %39
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %233

62:                                               ; preds = %39
  %63 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %64 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @SIIS_GCTL, align 4
  %67 = call i32 @ATA_INL(i8* %65, i32 %66)
  %68 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %69 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = call i8* @PCIR_BAR(i32 2)
  %71 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %72 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @SYS_RES_MEMORY, align 4
  %75 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %76 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %75, i32 0, i32 5
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = call i8* @bus_alloc_resource_any(i32* %73, i32 %74, i8** %76, i32 %77)
  %79 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %80 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = icmp ne i8* %78, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %62
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %233

84:                                               ; preds = %62
  %85 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %86 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @rman_get_start(i8* %87)
  %89 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %90 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %93 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @rman_get_end(i8* %94)
  %96 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %97 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @RMAN_ARRAY, align 4
  %100 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %101 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %104 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %105, align 8
  %106 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %107 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %106, i32 0, i32 1
  %108 = call i32 @rman_init(%struct.TYPE_6__* %107)
  store i32 %108, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %84
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @SYS_RES_MEMORY, align 4
  %113 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %114 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %113, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %117 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @bus_release_resource(i32* %111, i32 %112, i8* %115, i8* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* @SYS_RES_MEMORY, align 4
  %122 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %123 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %126 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @bus_release_resource(i32* %120, i32 %121, i8* %124, i8* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %233

130:                                              ; preds = %84
  %131 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %132 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %131, i32 0, i32 1
  %133 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %134 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @rman_get_start(i8* %135)
  %137 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %138 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @rman_get_end(i8* %139)
  %141 = call i32 @rman_manage_region(%struct.TYPE_6__* %132, i32 %136, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %130
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* @SYS_RES_MEMORY, align 4
  %146 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %147 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %150 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @bus_release_resource(i32* %144, i32 %145, i8* %148, i8* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* @SYS_RES_MEMORY, align 4
  %155 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %156 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %159 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @bus_release_resource(i32* %153, i32 %154, i8* %157, i8* %160)
  %162 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %163 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %162, i32 0, i32 1
  %164 = call i32 @rman_fini(%struct.TYPE_6__* %163)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %233

166:                                              ; preds = %130
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @pci_enable_busmaster(i32* %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @siis_resume(i32* %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @siis_ids, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %178 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32*, i32** %3, align 8
  %180 = call i64 @siis_setup_interrupt(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %166
  %183 = load i32*, i32** %3, align 8
  %184 = load i32, i32* @SYS_RES_MEMORY, align 4
  %185 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %186 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %189 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @bus_release_resource(i32* %183, i32 %184, i8* %187, i8* %190)
  %192 = load i32*, i32** %3, align 8
  %193 = load i32, i32* @SYS_RES_MEMORY, align 4
  %194 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %195 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %198 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @bus_release_resource(i32* %192, i32 %193, i8* %196, i8* %199)
  %201 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %202 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %201, i32 0, i32 1
  %203 = call i32 @rman_fini(%struct.TYPE_6__* %202)
  %204 = load i32, i32* @ENXIO, align 4
  store i32 %204, i32* %2, align 4
  br label %233

205:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %209 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %206
  %213 = load i32*, i32** %3, align 8
  %214 = call i32* @device_add_child(i32* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %214, i32** %6, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @device_printf(i32* %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %226

220:                                              ; preds = %212
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 @device_set_ivars(i32* %221, i8* %224)
  br label %226

226:                                              ; preds = %220, %217
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %206

230:                                              ; preds = %206
  %231 = load i32*, i32** %3, align 8
  %232 = call i32 @bus_generic_attach(i32* %231)
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %230, %182, %143, %110, %82, %60
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.siis_controller* @device_get_softc(i32*) #1

declare dso_local i64 @pci_get_devid(i32*) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i8**, i32) #1

declare dso_local i32 @ATA_INL(i8*, i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @rman_get_end(i8*) #1

declare dso_local i32 @rman_init(%struct.TYPE_6__*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i8*, i8*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_enable_busmaster(i32*) #1

declare dso_local i32 @siis_resume(i32*) #1

declare dso_local i64 @siis_setup_interrupt(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
