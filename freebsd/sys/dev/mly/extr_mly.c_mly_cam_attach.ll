; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, %struct.TYPE_2__*, i32, i32**, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't allocate CAM SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"hw.mly.register_physical_channels\00", align 1
@mly_cam_action = common dso_local global i32 0, align 4
@mly_cam_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"mly\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"CAM XPT phsyical channel registration failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"registered physical channel %d\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"CAM XPT virtual channel registration failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"registered virtual channel %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_cam_attach(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cam_devq* @cam_simq_alloc(i32 %12)
  store %struct.cam_devq* %13, %struct.cam_devq** %4, align 8
  %14 = icmp eq %struct.cam_devq* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %17 = call i32 @mly_printf(%struct.mly_softc* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %178

19:                                               ; preds = %1
  %20 = call i64 @testenv(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %85, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %23
  %32 = load i32, i32* @mly_cam_action, align 4
  %33 = load i32, i32* @mly_cam_poll, align 4
  %34 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %35 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %39, i32 0, i32 4
  %41 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %47 = call i8* @cam_sim_alloc(i32 %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.mly_softc* %34, i32 %38, i32* %40, i32 %45, i32 1, %struct.cam_devq* %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* %48, i32** %54, align 8
  %55 = icmp eq i32* %48, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %2, align 4
  br label %178

58:                                               ; preds = %31
  %59 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %60 = call i32 @MLY_LOCK(%struct.mly_softc* %59)
  %61 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %61, i32 0, i32 3
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @xpt_bus_register(i32* %67, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %58
  %75 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %76 = call i32 @MLY_UNLOCK(%struct.mly_softc* %75)
  %77 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %78 = call i32 @mly_printf(%struct.mly_softc* %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %178

80:                                               ; preds = %58
  %81 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %82 = call i32 @MLY_UNLOCK(%struct.mly_softc* %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %23

90:                                               ; preds = %23
  br label %91

91:                                               ; preds = %90, %19
  %92 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %93 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %159, %91
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %164

105:                                              ; preds = %97
  %106 = load i32, i32* @mly_cam_action, align 4
  %107 = load i32, i32* @mly_cam_poll, align 4
  %108 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %109 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %110 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_get_unit(i32 %111)
  %113 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %114 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %113, i32 0, i32 4
  %115 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %121 = call i8* @cam_sim_alloc(i32 %106, i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.mly_softc* %108, i32 %112, i32* %114, i32 %119, i32 0, %struct.cam_devq* %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %124 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %123, i32 0, i32 3
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* %122, i32** %128, align 8
  %129 = icmp eq i32* %122, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %105
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %2, align 4
  br label %178

132:                                              ; preds = %105
  %133 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %134 = call i32 @MLY_LOCK(%struct.mly_softc* %133)
  %135 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %136 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %135, i32 0, i32 3
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %143 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @xpt_bus_register(i32* %141, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %150 = call i32 @MLY_UNLOCK(%struct.mly_softc* %149)
  %151 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %152 = call i32 @mly_printf(%struct.mly_softc* %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* @ENXIO, align 4
  store i32 %153, i32* %2, align 4
  br label %178

154:                                              ; preds = %132
  %155 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %156 = call i32 @MLY_UNLOCK(%struct.mly_softc* %155)
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @debug(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %97

164:                                              ; preds = %97
  %165 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %166 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %169, %174
  %176 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %177 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %164, %148, %130, %74, %56, %15
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*) #1

declare dso_local i64 @testenv(i8*) #1

declare dso_local i8* @cam_sim_alloc(i32, i32, i8*, %struct.mly_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @MLY_LOCK(%struct.mly_softc*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @MLY_UNLOCK(%struct.mly_softc*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
