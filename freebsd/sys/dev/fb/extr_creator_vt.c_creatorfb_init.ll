; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creatorfb_softc = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i8, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.vt_device = type { %struct.creatorfb_softc* }

@creatorfb_conssoftc = common dso_local global %struct.creatorfb_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@CN_DEAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SUNW,ffb\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SUNW,afb\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@FFB_DFB24 = common dso_local global i32 0, align 4
@COLOR_FORMAT_RGB = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @creatorfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creatorfb_init(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.creatorfb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store %struct.creatorfb_softc* @creatorfb_conssoftc, %struct.creatorfb_softc** %4, align 8
  %14 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %15 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %14, i32 0, i32 0
  store %struct.creatorfb_softc* @creatorfb_conssoftc, %struct.creatorfb_softc** %15, align 8
  %16 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @OF_getprop(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %7, i32 1)
  %19 = load i8, i8* %7, align 1
  %20 = call i32 @OF_instance_to_package(i8 signext %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @OF_finddevice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = call signext i8 @OF_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8 %25, i8* %7, align 1
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %29 = call i32 @OF_getprop(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %28, i32 64)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @CN_DEAD, align 4
  store i32 %34, i32* %2, align 4
  br label %127

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %38 = call i32 @OF_getprop(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %37, i32 64)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @CN_DEAD, align 4
  store i32 %47, i32* %2, align 4
  br label %127

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @OF_getproplen(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @OF_getproplen(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @CN_DEAD, align 4
  store i32 %59, i32* %2, align 4
  br label %127

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @OF_getprop(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %8, i32 1)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @OF_getprop(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %9, i32 1)
  %65 = load i8, i8* %8, align 1
  %66 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %67 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8 %65, i8* %68, align 8
  %69 = load i8, i8* %9, align 1
  %70 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i8 %69, i8* %72, align 1
  %73 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %74 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 32, i32* %75, align 8
  %76 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %77 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 32, i32* %78, align 4
  %79 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %80 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32 8192, i32* %81, align 4
  %82 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 8
  %86 = sext i8 %85 to i32
  %87 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %88 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %86, %90
  %92 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %93 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @FFB_DFB24, align 4
  %97 = call i64 @OF_decode_addr(i32 %95, i32 %96, i32* %13, i32* %12)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %60
  %100 = load i32, i32* @CN_DEAD, align 4
  store i32 %100, i32* %2, align 4
  br label %127

101:                                              ; preds = %60
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %104 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 8
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %109 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @sparc64_fake_bustag(i32 %106, i32 %107, i32* %111)
  %113 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %114 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %116 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %120 = call i32 @vt_generate_cons_palette(i32 %118, i32 %119, i32 255, i32 0, i32 255, i32 8, i32 255, i32 16)
  %121 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %4, align 8
  %122 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  store i32 16, i32* %123, align 4
  %124 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %125 = call i32 @vt_fb_init(%struct.vt_device* %124)
  %126 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %101, %99, %58, %46, %33
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_instance_to_package(i8 signext) #1

declare dso_local signext i8 @OF_open(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i64 @OF_decode_addr(i32, i32, i32*, i32*) #1

declare dso_local i32 @sparc64_fake_bustag(i32, i32, i32*) #1

declare dso_local i32 @vt_generate_cons_palette(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vt_fb_init(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
