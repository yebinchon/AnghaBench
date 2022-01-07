; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pst_softc = type { %struct.TYPE_6__*, %struct.i2o_bsa_device*, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.i2o_bsa_device = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i32, %struct.pst_softc*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2o_get_param_reply = type { i64 }
%struct.i2o_device_identity = type { i8*, i8*, i8*, i8* }

@I2O_PARAMS_OPERATION_FIELD_GET = common dso_local global i32 0, align 4
@I2O_BSA_DEVICE_INFO_GROUP_NO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@M_PSTRAID = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_PSTIOP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2O_UTIL_DEVICE_IDENTITY_GROUP_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pst\00", align 1
@pststrategy = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"pst%d: %lluMB <%.40s> [%lld/%d/%d] on %.16s\0A\00", align 1
@shutdown_post_sync = common dso_local global i32 0, align 4
@pst_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pst_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pst_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pst_softc*, align 8
  %5 = alloca %struct.i2o_get_param_reply*, align 8
  %6 = alloca %struct.i2o_device_identity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i32], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pst_softc* @device_get_softc(i32 %9)
  store %struct.pst_softc* %10, %struct.pst_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_unit(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %14 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2O_PARAMS_OPERATION_FIELD_GET, align 4
  %22 = load i32, i32* @I2O_BSA_DEVICE_INFO_GROUP_NO, align 4
  %23 = call %struct.i2o_get_param_reply* @iop_get_util_params(%struct.TYPE_6__* %15, i32 %20, i32 %21, i32 %22)
  store %struct.i2o_get_param_reply* %23, %struct.i2o_get_param_reply** %5, align 8
  %24 = icmp ne %struct.i2o_get_param_reply* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  store i32 %26, i32* %2, align 4
  br label %185

27:                                               ; preds = %1
  %28 = load i32, i32* @M_PSTRAID, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i64 @malloc(i32 8, i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to %struct.i2o_bsa_device*
  %32 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %32, i32 0, i32 1
  store %struct.i2o_bsa_device* %31, %struct.i2o_bsa_device** %33, align 8
  %34 = icmp ne %struct.i2o_bsa_device* %31, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.i2o_get_param_reply*, %struct.i2o_get_param_reply** %5, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @M_PSTIOP, align 4
  %39 = call i32 @contigfree(%struct.i2o_get_param_reply* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %185

41:                                               ; preds = %27
  %42 = load %struct.i2o_get_param_reply*, %struct.i2o_get_param_reply** %5, align 8
  %43 = getelementptr inbounds %struct.i2o_get_param_reply, %struct.i2o_get_param_reply* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %46 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %45, i32 0, i32 1
  %47 = load %struct.i2o_bsa_device*, %struct.i2o_bsa_device** %46, align 8
  %48 = call i32 @bcopy(i64 %44, %struct.i2o_bsa_device* %47, i32 8)
  %49 = load %struct.i2o_get_param_reply*, %struct.i2o_get_param_reply** %5, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @M_PSTIOP, align 4
  %52 = call i32 @contigfree(%struct.i2o_get_param_reply* %49, i32 %50, i32 %51)
  %53 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %54 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %57 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2O_PARAMS_OPERATION_FIELD_GET, align 4
  %62 = load i32, i32* @I2O_UTIL_DEVICE_IDENTITY_GROUP_NO, align 4
  %63 = call %struct.i2o_get_param_reply* @iop_get_util_params(%struct.TYPE_6__* %55, i32 %60, i32 %61, i32 %62)
  store %struct.i2o_get_param_reply* %63, %struct.i2o_get_param_reply** %5, align 8
  %64 = icmp ne %struct.i2o_get_param_reply* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %41
  %66 = load i32, i32* @ENODEV, align 4
  store i32 %66, i32* %2, align 4
  br label %185

67:                                               ; preds = %41
  %68 = load %struct.i2o_get_param_reply*, %struct.i2o_get_param_reply** %5, align 8
  %69 = getelementptr inbounds %struct.i2o_get_param_reply, %struct.i2o_get_param_reply* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.i2o_device_identity*
  store %struct.i2o_device_identity* %71, %struct.i2o_device_identity** %6, align 8
  %72 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %73 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %76 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @bpack(i8* %74, i8* %77, i32 16)
  %79 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %80 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %83 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @bpack(i8* %81, i8* %84, i32 16)
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %87 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %88 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.i2o_device_identity*, %struct.i2o_device_identity** %6, align 8
  %91 = getelementptr inbounds %struct.i2o_device_identity, %struct.i2o_device_identity* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @sprintf(i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %89, i8* %92)
  %94 = load %struct.i2o_get_param_reply*, %struct.i2o_get_param_reply** %5, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* @M_PSTIOP, align 4
  %97 = call i32 @contigfree(%struct.i2o_get_param_reply* %94, i32 %95, i32 %96)
  %98 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %99 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %98, i32 0, i32 3
  %100 = call i32 @bioq_init(i32* %99)
  %101 = call %struct.TYPE_7__* (...) @disk_alloc()
  %102 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %103 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %102, i32 0, i32 2
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %105 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %107, align 8
  %108 = load i32, i32* @pststrategy, align 4
  %109 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %110 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 8
  store i32 %108, i32* %112, align 8
  %113 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %114 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 65536, i32* %116, align 8
  %117 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %118 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %119 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 7
  store %struct.pst_softc* %117, %struct.pst_softc** %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %124 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i32 %122, i32* %126, align 4
  %127 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %128 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %127, i32 0, i32 1
  %129 = load %struct.i2o_bsa_device*, %struct.i2o_bsa_device** %128, align 8
  %130 = getelementptr inbounds %struct.i2o_bsa_device, %struct.i2o_bsa_device* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %133 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  store i32 %131, i32* %135, align 4
  %136 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %137 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %136, i32 0, i32 1
  %138 = load %struct.i2o_bsa_device*, %struct.i2o_bsa_device** %137, align 8
  %139 = getelementptr inbounds %struct.i2o_bsa_device, %struct.i2o_bsa_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %142 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %141, i32 0, i32 2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  store i32 %140, i32* %144, align 8
  %145 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %146 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  store i32 63, i32* %148, align 4
  %149 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %150 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 5
  store i32 255, i32* %152, align 8
  %153 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %154 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %153, i32 0, i32 2
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* @DISK_VERSION, align 4
  %157 = call i32 @disk_create(%struct.TYPE_7__* %155, i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %160 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %159, i32 0, i32 1
  %161 = load %struct.i2o_bsa_device*, %struct.i2o_bsa_device** %160, align 8
  %162 = getelementptr inbounds %struct.i2o_bsa_device, %struct.i2o_bsa_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = udiv i64 %164, 1048576
  %166 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %167 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %168 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %167, i32 0, i32 1
  %169 = load %struct.i2o_bsa_device*, %struct.i2o_bsa_device** %168, align 8
  %170 = getelementptr inbounds %struct.i2o_bsa_device, %struct.i2o_bsa_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 8225280
  %173 = load %struct.pst_softc*, %struct.pst_softc** %4, align 8
  %174 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @device_get_nameunit(i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %158, i64 %165, i32* %166, i32 %172, i32 255, i32 63, i32 %178)
  %180 = load i32, i32* @shutdown_post_sync, align 4
  %181 = load i32, i32* @pst_shutdown, align 4
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %184 = call i32 @EVENTHANDLER_REGISTER(i32 %180, i32 %181, i32 %182, i32 %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %67, %65, %35, %25
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.pst_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.i2o_get_param_reply* @iop_get_util_params(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @contigfree(%struct.i2o_get_param_reply*, i32, i32) #1

declare dso_local i32 @bcopy(i64, %struct.i2o_bsa_device*, i32) #1

declare dso_local i32 @bpack(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local %struct.TYPE_7__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
