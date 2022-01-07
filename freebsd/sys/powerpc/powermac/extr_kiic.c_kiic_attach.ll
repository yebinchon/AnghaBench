; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_kiic.c_kiic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_kiic.c_kiic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiic_softc = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AAPL,i2c-rate\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot get i2c-rate\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"AAPL,address-step\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to find i2c address step\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"kiic\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@kiic_intr = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@I2C_STDMODE = common dso_local global i32 0, align 4
@I2C_100kHz = common dso_local global i32 0, align 4
@I2C_INT_DATA = common dso_local global i32 0, align 4
@I2C_INT_ADDR = common dso_local global i32 0, align 4
@I2C_INT_STOP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Revision: %02X\0A\00", align 1
@REV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kiic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kiic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.kiic_softc* @device_get_softc(i32 %10)
  store %struct.kiic_softc* %11, %struct.kiic_softc** %4, align 8
  %12 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %13 = call i32 @bzero(%struct.kiic_softc* %12, i32 56)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %152

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYS_RES_MEMORY, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call i8* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %5, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %33 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %32, i32 0, i32 8
  store i32* %31, i32** %33, align 8
  %34 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %152

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @OF_getencprop(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %43 = icmp ne i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %152

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %51 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %50, i32 0, i32 0
  %52 = call i32 @OF_getencprop(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32 4)
  %53 = icmp ne i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %152

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %61 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @OF_child(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %66 = call i64 (i32, i8*, ...) @OF_getprop(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %65, i64 64)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %58
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = call i64 (i32, i8*, ...) @OF_getprop(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %9, i64 4)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 8
  %79 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %80 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %84 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %68
  br label %86

86:                                               ; preds = %85, %58
  %87 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %88 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %87, i32 0, i32 7
  %89 = load i32, i32* @MTX_DEF, align 4
  %90 = call i32 @mtx_init(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_IRQ, align 4
  %93 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %94 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %93, i32 0, i32 3
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = call i8* @bus_alloc_resource_any(i32 %91, i32 %92, i32* %94, i32 %95)
  %97 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %98 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %101 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %100, i32 0, i32 6
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @INTR_TYPE_MISC, align 4
  %104 = load i32, i32* @INTR_MPSAFE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @kiic_intr, align 4
  %107 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %108 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %109 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %108, i32 0, i32 5
  %110 = call i32 @bus_setup_intr(i32 %99, i8* %102, i32 %105, i32* null, i32 %106, %struct.kiic_softc* %107, i32* %109)
  %111 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %112 = load i32, i32* @ISR, align 4
  %113 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %114 = load i32, i32* @ISR, align 4
  %115 = call i32 @kiic_readreg(%struct.kiic_softc* %113, i32 %114)
  %116 = call i32 @kiic_writereg(%struct.kiic_softc* %111, i32 %112, i32 %115)
  %117 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %118 = load i32, i32* @STATUS, align 4
  %119 = call i32 @kiic_writereg(%struct.kiic_softc* %117, i32 %118, i32 0)
  %120 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %121 = load i32, i32* @IER, align 4
  %122 = call i32 @kiic_writereg(%struct.kiic_softc* %120, i32 %121, i32 0)
  %123 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %124 = load i32, i32* @I2C_STDMODE, align 4
  %125 = call i32 @kiic_setmode(%struct.kiic_softc* %123, i32 %124)
  %126 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %127 = load i32, i32* @I2C_100kHz, align 4
  %128 = call i32 @kiic_setspeed(%struct.kiic_softc* %126, i32 %127)
  %129 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %130 = load i32, i32* @IER, align 4
  %131 = load i32, i32* @I2C_INT_DATA, align 4
  %132 = load i32, i32* @I2C_INT_ADDR, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @I2C_INT_STOP, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @kiic_writereg(%struct.kiic_softc* %129, i32 %130, i32 %135)
  %137 = load i64, i64* @bootverbose, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %86
  %140 = load i32, i32* %3, align 4
  %141 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %142 = load i32, i32* @REV, align 4
  %143 = call i32 @kiic_readreg(%struct.kiic_softc* %141, i32 %142)
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %86
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_add_child(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %148 = load %struct.kiic_softc*, %struct.kiic_softc** %4, align 8
  %149 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @bus_generic_attach(i32 %150)
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %145, %54, %44, %38, %24
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.kiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.kiic_softc*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.kiic_softc*, i32*) #1

declare dso_local i32 @kiic_writereg(%struct.kiic_softc*, i32, i32) #1

declare dso_local i32 @kiic_readreg(%struct.kiic_softc*, i32) #1

declare dso_local i32 @kiic_setmode(%struct.kiic_softc*, i32) #1

declare dso_local i32 @kiic_setspeed(%struct.kiic_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
