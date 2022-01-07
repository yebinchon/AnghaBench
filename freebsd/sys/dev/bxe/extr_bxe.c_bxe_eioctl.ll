; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_eioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_eioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.bxe_softc = type { i32, i8*, i32, i32, i8*, i32, i32, i32, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@BXE_DRV_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bxe\00", align 1
@BXE_DRV_VERSION_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"v:%s\00", align 1
@BXE_DRIVER_VERSION = common dso_local global i8* null, align 8
@BXE_MFW_VERSION_LENGTH = common dso_local global i32 0, align 4
@BXE_STORMFW_VERSION_LENGTH = common dso_local global i32 0, align 4
@BXE_BUS_INFO_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@BXE_READ_REG_CMD = common dso_local global i32 0, align 4
@BXE_REG_ACCESS_DIRECT = common dso_local global i32 0, align 4
@BXE_WRITE_REG_CMD = common dso_local global i32 0, align 4
@BXE_READ_PCICFG = common dso_local global i32 0, align 4
@BXE_WRITE_PCICFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"BXE_RDW_PCICFG ioctl wrong cmd passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @bxe_eioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_eioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.bxe_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__, align 4
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %13, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %17, align 8
  %24 = load %struct.cdev*, %struct.cdev** %7, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.bxe_softc*
  store %struct.bxe_softc* %27, %struct.bxe_softc** %12, align 8
  %28 = icmp eq %struct.bxe_softc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %391

31:                                               ; preds = %5
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* %9, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %15, align 8
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %388 [
    i32 131, label %38
    i32 132, label %52
    i32 135, label %137
    i32 136, label %196
    i32 133, label %229
    i32 128, label %283
    i32 129, label %327
    i32 130, label %373
    i32 134, label %383
  ]

38:                                               ; preds = %31
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %45 = call i32 @bxe_get_total_regs_len32(%struct.bxe_softc* %44)
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %389

52:                                               ; preds = %31
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %54 = call i32 @bxe_get_total_regs_len32(%struct.bxe_softc* %53)
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %63, %52
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %13, align 4
  br label %389

76:                                               ; preds = %68
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %78 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %83 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %88 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %93 = call i32 @bxe_grc_dump(%struct.bxe_softc* %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %91, %86, %81, %76
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %136, label %97

97:                                               ; preds = %94
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %97
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %102
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %109 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = ashr i32 %113, 2
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %118 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @copyout(i32* %119, i32* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %126 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %125, i32 0, i32 8
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @M_DEVBUF, align 4
  %129 = call i32 @free(i32* %127, i32 %128)
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %131 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %130, i32 0, i32 8
  store i32* null, i32** %131, align 8
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %133 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %132, i32 0, i32 7
  store i32 0, i32* %133, align 8
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %135 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %134, i32 0, i32 6
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %112, %107, %102, %97, %94
  br label %389

137:                                              ; preds = %31
  %138 = load i64, i64* %9, align 8
  %139 = inttoptr i64 %138 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %139, %struct.TYPE_16__** %17, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BXE_DRV_NAME_LENGTH, align 4
  %144 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BXE_DRV_VERSION_LENGTH, align 4
  %149 = load i8*, i8** @BXE_DRIVER_VERSION, align 8
  %150 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %147, i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @BXE_MFW_VERSION_LENGTH, align 4
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %156 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %153, i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BXE_STORMFW_VERSION_LENGTH, align 4
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %165 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %162, i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %166)
  %168 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %169 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %175 = call i32 @bxe_get_total_regs_len32(%struct.bxe_softc* %174)
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = add i64 %177, 4
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @BXE_BUS_INFO_LENGTH, align 4
  %186 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %187 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %190 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %193 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %184, i32 %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %191, i32 %194)
  br label %389

196:                                              ; preds = %31
  %197 = load i64, i64* %9, align 8
  %198 = inttoptr i64 %197 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %18, align 8
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %200 = call i32 @bxe_get_settings(%struct.bxe_softc* %199, %struct.TYPE_17__* %19)
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  br label %389

229:                                              ; preds = %31
  %230 = load i64, i64* %9, align 8
  %231 = inttoptr i64 %230 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %231, %struct.TYPE_15__** %20, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %16, align 4
  %235 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %236 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %229
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %241 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %246 = call i32 @bxe_grc_dump(%struct.bxe_softc* %245)
  br label %247

247:                                              ; preds = %244, %239, %229
  %248 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %249 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %282

252:                                              ; preds = %247
  %253 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %254 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %282

257:                                              ; preds = %252
  %258 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %259 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %258, i32 0, i32 8
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %282

262:                                              ; preds = %257
  %263 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %264 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %263, i32 0, i32 8
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @copyout(i32* %265, i32* %268, i32 %269)
  store i32 %270, i32* %13, align 4
  %271 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %272 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %271, i32 0, i32 8
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* @M_DEVBUF, align 4
  %275 = call i32 @free(i32* %273, i32 %274)
  %276 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %277 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %276, i32 0, i32 8
  store i32* null, i32** %277, align 8
  %278 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %279 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %278, i32 0, i32 7
  store i32 0, i32* %279, align 8
  %280 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %281 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %280, i32 0, i32 6
  store i32 0, i32* %281, align 4
  br label %282

282:                                              ; preds = %262, %257, %252, %247
  br label %389

283:                                              ; preds = %31
  %284 = load i64, i64* %9, align 8
  %285 = inttoptr i64 %284 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %285, %struct.TYPE_11__** %21, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @BXE_READ_REG_CMD, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %283
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @BXE_REG_ACCESS_DIRECT, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %291
  %298 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @REG_RD(%struct.bxe_softc* %298, i32 %301)
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %297, %291, %283
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @BXE_WRITE_REG_CMD, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %326

311:                                              ; preds = %305
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @BXE_REG_ACCESS_DIRECT, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %311
  %318 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @REG_WR(%struct.bxe_softc* %318, i32 %321, i32 %324)
  br label %326

326:                                              ; preds = %317, %311, %305
  br label %389

327:                                              ; preds = %31
  %328 = load i64, i64* %9, align 8
  %329 = inttoptr i64 %328 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %329, %struct.TYPE_13__** %22, align 8
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @BXE_READ_PCICFG, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %348

335:                                              ; preds = %327
  %336 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %337 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @pci_read_config(i32 %338, i32 %341, i32 %344)
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  br label %372

348:                                              ; preds = %327
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @BXE_WRITE_PCICFG, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %368

354:                                              ; preds = %348
  %355 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %356 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @pci_write_config(i32 %357, i32 %360, i32 %363, i32 %366)
  br label %371

368:                                              ; preds = %348
  %369 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %370 = call i32 @BLOGW(%struct.bxe_softc* %369, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %354
  br label %372

372:                                              ; preds = %371, %335
  br label %389

373:                                              ; preds = %31
  %374 = load i64, i64* %9, align 8
  %375 = inttoptr i64 %374 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %375, %struct.TYPE_12__** %23, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %380 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %379, i32 0, i32 4
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %378, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %381)
  br label %389

383:                                              ; preds = %31
  %384 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %385 = load i64, i64* %9, align 8
  %386 = inttoptr i64 %385 to i32*
  %387 = call i32 @bxe_eeprom_rd_wr(%struct.bxe_softc* %384, i32* %386)
  store i32 %387, i32* %13, align 4
  br label %389

388:                                              ; preds = %31
  br label %389

389:                                              ; preds = %388, %383, %373, %372, %326, %282, %196, %137, %136, %74, %38
  %390 = load i32, i32* %13, align 4
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %389, %29
  %392 = load i32, i32* %6, align 4
  ret i32 %392
}

declare dso_local i32 @bxe_get_total_regs_len32(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_grc_dump(%struct.bxe_softc*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @bxe_get_settings(%struct.bxe_softc*, %struct.TYPE_17__*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_eeprom_rd_wr(%struct.bxe_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
