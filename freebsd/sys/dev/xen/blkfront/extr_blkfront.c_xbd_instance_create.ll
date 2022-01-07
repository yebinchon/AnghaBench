; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_instance_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_instance_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i64, i64, i64, i32, i32, i64, %struct.xbd_softc*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"xbd\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"attaching as %s%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"features: %s\0A\00", align 1
@xbd_open = common dso_local global i32 0, align 4
@xbd_close = common dso_local global i32 0, align 4
@xbd_ioctl = common dso_local global i32 0, align 4
@xbd_strategy = common dso_local global i32 0, align 4
@xbd_dump = common dso_local global i32 0, align 4
@DISKFLAG_UNMAPPED_BIO = common dso_local global i32 0, align 4
@XBDF_FLUSH = common dso_local global i32 0, align 4
@XBDF_BARRIER = common dso_local global i32 0, align 4
@DISKFLAG_CANFLUSHCACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"synchronize cache commands enabled.\0A\00", align 1
@DISK_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xbd_instance_create(%struct.xbd_softc* %0, i64 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.xbd_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [80 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.xbd_softc* %0, %struct.xbd_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @xbd_vdevice_to_unit(i32 %17, i32* %14, i8** %16)
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %21 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %27 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %6
  %33 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %35 = call i64 @xbd_feature_string(%struct.xbd_softc* %33, i8* %34, i32 80)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %39 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = call %struct.TYPE_3__* (...) @disk_alloc()
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %46 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %45, i32 0, i32 2
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %46, align 8
  %47 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %48 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %51 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* @xbd_open, align 4
  %55 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %56 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 13
  store i32 %54, i32* %58, align 8
  %59 = load i32, i32* @xbd_close, align 4
  %60 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %61 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 12
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @xbd_ioctl, align 4
  %65 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %66 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 11
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* @xbd_strategy, align 4
  %70 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %71 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 10
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @xbd_dump, align 4
  %75 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %76 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 9
  store i32 %74, i32* %78, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %81 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %85 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %86 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 8
  store %struct.xbd_softc* %84, %struct.xbd_softc** %88, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %91 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i64 %89, i64* %93, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %96 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i64 %94, i64* %98, align 8
  %99 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %100 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %11, align 8
  %105 = mul i64 %103, %104
  %106 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %107 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  store i64 %105, i64* %109, align 8
  %110 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %111 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %114 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 6
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @DISKFLAG_UNMAPPED_BIO, align 4
  %118 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %119 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  store i32 %117, i32* %121, align 8
  %122 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %123 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @XBDF_FLUSH, align 4
  %126 = load i32, i32* @XBDF_BARRIER, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %43
  %131 = load i32, i32* @DISKFLAG_CANFLUSHCACHE, align 4
  %132 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %133 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 8
  %138 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %139 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %130, %43
  %143 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  %144 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* @DISK_VERSION, align 4
  %147 = call i32 @disk_create(%struct.TYPE_3__* %145, i32 %146)
  %148 = load i32, i32* %15, align 4
  ret i32 %148
}

declare dso_local i32 @xbd_vdevice_to_unit(i32, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @xbd_feature_string(%struct.xbd_softc*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
