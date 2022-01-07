; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i64, i32, i32*, i32, i32, i32, i32, i32 }
%struct.virtio_blk_config = type { i64 }

@vtblk_feature_desc = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_SIZE_MAX = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"host requires unsupported maximum segment size feature\0A\00", align 1
@VTBLK_MIN_SEGMENTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"fewer than minimum number of segments allowed: %d\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot allocate sglist\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot allocate virtqueue\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot preallocate requests\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"cannot setup virtqueue interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtblk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.virtio_blk_config, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @vtblk_feature_desc, align 4
  %8 = call i32 @virtio_set_feature_desc(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.vtblk_softc* @device_get_softc(i32 %9)
  store %struct.vtblk_softc* %10, %struct.vtblk_softc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = call i32 @VTBLK_LOCK_INIT(%struct.vtblk_softc* %14, i32 %16)
  %18 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %18, i32 0, i32 6
  %20 = call i32 @bioq_init(i32* %19)
  %21 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %21, i32 0, i32 5
  %23 = call i32 @TAILQ_INIT(i32* %22)
  %24 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %24, i32 0, i32 4
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %27, i32 0, i32 3
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %31 = call i32 @vtblk_setup_sysctl(%struct.vtblk_softc* %30)
  %32 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %33 = call i32 @vtblk_setup_features(%struct.vtblk_softc* %32)
  %34 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %35 = call i32 @vtblk_read_config(%struct.vtblk_softc* %34, %struct.virtio_blk_config* %4)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @VIRTIO_BLK_F_SIZE_MAX, align 4
  %38 = call i64 @virtio_with_feature(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAXPHYS, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOTSUP, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %119

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %52 = call i64 @vtblk_maximum_segments(%struct.vtblk_softc* %51, %struct.virtio_blk_config* %4)
  %53 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %54 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VTBLK_MIN_SEGMENTS, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %64 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  br label %119

67:                                               ; preds = %50
  %68 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %69 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = call i32* @sglist_alloc(i64 %70, i32 %71)
  %73 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %74 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %76 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %119

83:                                               ; preds = %67
  %84 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %85 = call i32 @vtblk_alloc_virtqueue(%struct.vtblk_softc* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %119

91:                                               ; preds = %83
  %92 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %93 = call i32 @vtblk_request_prealloc(%struct.vtblk_softc* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %2, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %119

99:                                               ; preds = %91
  %100 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %101 = call i32 @vtblk_alloc_disk(%struct.vtblk_softc* %100, %struct.virtio_blk_config* %4)
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @INTR_TYPE_BIO, align 4
  %104 = load i32, i32* @INTR_ENTROPY, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @virtio_setup_intr(i32 %102, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load i32, i32* %2, align 4
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %119

112:                                              ; preds = %99
  %113 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %114 = call i32 @vtblk_create_disk(%struct.vtblk_softc* %113)
  %115 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %116 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @virtqueue_enable_intr(i32 %117)
  br label %119

119:                                              ; preds = %112, %109, %96, %88, %79, %60, %45
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @vtblk_detach(i32 %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local %struct.vtblk_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTBLK_LOCK_INIT(%struct.vtblk_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @vtblk_setup_sysctl(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_setup_features(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_read_config(%struct.vtblk_softc*, %struct.virtio_blk_config*) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @vtblk_maximum_segments(%struct.vtblk_softc*, %struct.virtio_blk_config*) #1

declare dso_local i32* @sglist_alloc(i64, i32) #1

declare dso_local i32 @vtblk_alloc_virtqueue(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_request_prealloc(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_alloc_disk(%struct.vtblk_softc*, %struct.virtio_blk_config*) #1

declare dso_local i32 @virtio_setup_intr(i32, i32) #1

declare dso_local i32 @vtblk_create_disk(%struct.vtblk_softc*) #1

declare dso_local i32 @virtqueue_enable_intr(i32) #1

declare dso_local i32 @vtblk_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
