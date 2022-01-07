; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_attach_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_attach_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.TYPE_24__*, i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_28__*, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { %struct.usb_bus*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_22__ = type { %struct.usb_bus*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_21__ = type { %struct.usb_bus*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { %struct.usb_bus*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_33__ = type { %struct.usb_bus*, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_31__ = type { %struct.usb_bus*, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_28__ = type { %struct.usb_bus*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { %struct.usb_bus*, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }

@Giant = common dso_local global i32 0, align 4
@usb_devclass_ptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@usb_bus_explore = common dso_local global i32 0, align 4
@usb_bus_detach = common dso_local global i32 0, align 4
@usb_bus_attach = common dso_local global i32 0, align 4
@usb_bus_suspend = common dso_local global i32 0, align 4
@usb_bus_resume = common dso_local global i32 0, align 4
@usb_bus_reset = common dso_local global i32 0, align 4
@usb_bus_shutdown = common dso_local global i32 0, align 4
@USB_PRI_HIGH = common dso_local global i32 0, align 4
@USB_PRI_HIGHEST = common dso_local global i32 0, align 4
@USB_PRI_MED = common dso_local global i32 0, align 4
@usb_bus_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.usb_bus*)* @usb_attach_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_attach_sub(i32 %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_bus*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.usb_bus* %1, %struct.usb_bus** %4, align 8
  %5 = call i32 @mtx_lock(i32* @Giant)
  %6 = load i32*, i32** @usb_devclass_ptr, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32* @devclass_find(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** @usb_devclass_ptr, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 @mtx_unlock(i32* @Giant)
  %12 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %13 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %12, i32 0, i32 9
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  store i32* @usb_bus_explore, i32** %17, align 8
  %18 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %19 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %20 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %19, i32 0, i32 9
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  store %struct.usb_bus* %18, %struct.usb_bus** %23, align 8
  %24 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %25 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %24, i32 0, i32 9
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  store i32* @usb_bus_explore, i32** %29, align 8
  %30 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %31 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %32 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %31, i32 0, i32 9
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store %struct.usb_bus* %30, %struct.usb_bus** %35, align 8
  %36 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %37 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %36, i32 0, i32 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  store i32* @usb_bus_detach, i32** %41, align 8
  %42 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %43 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %44 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %43, i32 0, i32 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  store %struct.usb_bus* %42, %struct.usb_bus** %47, align 8
  %48 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %49 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %48, i32 0, i32 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  store i32* @usb_bus_detach, i32** %53, align 8
  %54 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %55 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %56 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %55, i32 0, i32 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  store %struct.usb_bus* %54, %struct.usb_bus** %59, align 8
  %60 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %61 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %60, i32 0, i32 0
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  store i32* @usb_bus_attach, i32** %65, align 8
  %66 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %67 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %68 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %67, i32 0, i32 0
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  store %struct.usb_bus* %66, %struct.usb_bus** %71, align 8
  %72 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %73 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %72, i32 0, i32 0
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  store i32* @usb_bus_attach, i32** %77, align 8
  %78 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %79 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %80 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %79, i32 0, i32 0
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  store %struct.usb_bus* %78, %struct.usb_bus** %83, align 8
  %84 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %85 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %84, i32 0, i32 7
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  store i32* @usb_bus_suspend, i32** %89, align 8
  %90 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %91 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %92 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %91, i32 0, i32 7
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  store %struct.usb_bus* %90, %struct.usb_bus** %95, align 8
  %96 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %97 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %96, i32 0, i32 7
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 0
  store i32* @usb_bus_suspend, i32** %101, align 8
  %102 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %103 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %104 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %103, i32 0, i32 7
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 0
  store %struct.usb_bus* %102, %struct.usb_bus** %107, align 8
  %108 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %109 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %108, i32 0, i32 6
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  store i32* @usb_bus_resume, i32** %113, align 8
  %114 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %115 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %116 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %115, i32 0, i32 6
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  store %struct.usb_bus* %114, %struct.usb_bus** %119, align 8
  %120 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %121 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %120, i32 0, i32 6
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  store i32* @usb_bus_resume, i32** %125, align 8
  %126 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %127 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %128 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %127, i32 0, i32 6
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  store %struct.usb_bus* %126, %struct.usb_bus** %131, align 8
  %132 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %133 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %132, i32 0, i32 5
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  store i32* @usb_bus_reset, i32** %137, align 8
  %138 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %139 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %140 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %139, i32 0, i32 5
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  store %struct.usb_bus* %138, %struct.usb_bus** %143, align 8
  %144 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %145 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %144, i32 0, i32 5
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i32* @usb_bus_reset, i32** %149, align 8
  %150 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %151 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %152 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %151, i32 0, i32 5
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store %struct.usb_bus* %150, %struct.usb_bus** %155, align 8
  %156 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %157 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %156, i32 0, i32 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  store i32* @usb_bus_shutdown, i32** %161, align 8
  %162 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %163 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %164 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %163, i32 0, i32 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  store %struct.usb_bus* %162, %struct.usb_bus** %167, align 8
  %168 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %169 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %168, i32 0, i32 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32* @usb_bus_shutdown, i32** %173, align 8
  %174 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %175 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %176 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %175, i32 0, i32 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store %struct.usb_bus* %174, %struct.usb_bus** %179, align 8
  %180 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %181 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %180)
  %182 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %183 = call i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %182)
  %184 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %185 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %184, i32 0, i32 0
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i64 0
  %188 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %189 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %188, i32 0, i32 0
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i64 1
  %192 = call i32 @usb_proc_msignal(i32 %183, %struct.TYPE_24__* %187, %struct.TYPE_24__* %191)
  %193 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %194 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %193)
  %195 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %196 = call i32 @usb_needs_explore(%struct.usb_bus* %195, i32 1)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @usb_proc_msignal(i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @USB_BUS_EXPLORE_PROC(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @usb_needs_explore(%struct.usb_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
