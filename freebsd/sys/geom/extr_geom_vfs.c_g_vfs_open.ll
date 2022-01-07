; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.vnode*, i32, %struct.bufobj }
%struct.bufobj = type { i32, %struct.vnode*, i32 }
%struct.g_consumer = type { i32, %struct.g_consumer*, i32, %struct.bufobj }
%struct.g_geom = type { %struct.g_vfs_softc* }
%struct.g_vfs_softc = type { %struct.bufobj*, i32 }
%struct.g_provider = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@g_vfs_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"g_vfs\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@g_vfs_bufops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_vfs_open(%struct.vnode* %0, %struct.g_consumer** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.g_consumer**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.g_provider*, align 8
  %12 = alloca %struct.g_consumer*, align 8
  %13 = alloca %struct.g_vfs_softc*, align 8
  %14 = alloca %struct.bufobj*, align 8
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.g_consumer** %1, %struct.g_consumer*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = call i32 (...) @g_topology_assert()
  %17 = load %struct.g_consumer**, %struct.g_consumer*** %7, align 8
  store %struct.g_consumer* null, %struct.g_consumer** %17, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 3
  store %struct.bufobj* %19, %struct.bufobj** %14, align 8
  %20 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %21 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %20, i32 0, i32 1
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = icmp ne %struct.vnode* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* %5, align 4
  br label %108

27:                                               ; preds = %4
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.g_provider* @g_dev_getprovider(i32 %30)
  store %struct.g_provider* %31, %struct.g_provider** %11, align 8
  %32 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %33 = icmp eq %struct.g_provider* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %5, align 4
  br label %108

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.g_geom* @g_new_geomf(i32* @g_vfs_class, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %40)
  store %struct.g_geom* %41, %struct.g_geom** %10, align 8
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.g_vfs_softc* @g_malloc(i32 16, i32 %44)
  store %struct.g_vfs_softc* %45, %struct.g_vfs_softc** %13, align 8
  %46 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %13, align 8
  %47 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %46, i32 0, i32 1
  %48 = load i32, i32* @MTX_DEF, align 4
  %49 = call i32 @mtx_init(i32* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %48)
  %50 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %51 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %13, align 8
  %52 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %51, i32 0, i32 0
  store %struct.bufobj* %50, %struct.bufobj** %52, align 8
  %53 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %13, align 8
  %54 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %55 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %54, i32 0, i32 0
  store %struct.g_vfs_softc* %53, %struct.g_vfs_softc** %55, align 8
  %56 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %57 = call %struct.vnode* @g_new_consumer(%struct.g_geom* %56)
  %58 = bitcast %struct.vnode* %57 to %struct.g_consumer*
  store %struct.g_consumer* %58, %struct.g_consumer** %12, align 8
  %59 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %60 = bitcast %struct.g_consumer* %59 to %struct.vnode*
  %61 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %62 = call i32 @g_attach(%struct.vnode* %60, %struct.g_provider* %61)
  %63 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %64 = bitcast %struct.g_consumer* %63 to %struct.vnode*
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @g_access(%struct.vnode* %64, i32 1, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %36
  %71 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %72 = load i32, i32* @ENXIO, align 4
  %73 = call i32 @g_wither_geom(%struct.g_geom* %71, i32 %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %108

75:                                               ; preds = %36
  %76 = load %struct.vnode*, %struct.vnode** %6, align 8
  %77 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @curthread, align 4
  %81 = call i32 @vnode_create_vobject(%struct.vnode* %76, i32 %79, i32 %80)
  %82 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %83 = load %struct.g_consumer**, %struct.g_consumer*** %7, align 8
  store %struct.g_consumer* %82, %struct.g_consumer** %83, align 8
  %84 = load %struct.vnode*, %struct.vnode** %6, align 8
  %85 = bitcast %struct.vnode* %84 to %struct.g_consumer*
  %86 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %87 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %86, i32 0, i32 1
  store %struct.g_consumer* %85, %struct.g_consumer** %87, align 8
  %88 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %89 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %92 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @g_vfs_bufops, align 4
  %96 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %97 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %99 = bitcast %struct.g_consumer* %98 to %struct.vnode*
  %100 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %101 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %100, i32 0, i32 1
  store %struct.vnode* %99, %struct.vnode** %101, align 8
  %102 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %103 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %106 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %75, %70, %34, %25
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @g_dev_getprovider(i32) #1

declare dso_local %struct.g_geom* @g_new_geomf(i32*, i8*, i8*, i32) #1

declare dso_local %struct.g_vfs_softc* @g_malloc(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.vnode* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.vnode*, %struct.g_provider*) #1

declare dso_local i32 @g_access(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
