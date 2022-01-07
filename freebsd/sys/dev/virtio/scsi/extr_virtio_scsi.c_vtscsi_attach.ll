; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtio_scsi_config = type { i32, i32, i32, i32, i32 }

@vtscsi_feature_desc = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VTSCSI_FLAG_INDIRECT = common dso_local global i32 0, align 4
@VIRTIO_SCSI_F_INOUT = common dso_local global i32 0, align 4
@VTSCSI_FLAG_BIDIRECTIONAL = common dso_local global i32 0, align 4
@VIRTIO_SCSI_F_HOTPLUG = common dso_local global i32 0, align 4
@VTSCSI_FLAG_HOTPLUG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot allocate sglist\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot allocate virtqueues\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot populate the eventvq\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot allocate requests\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot allocate CAM structures\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"cannot setup virtqueue interrupts\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"cannot register with CAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtscsi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtio_scsi_config, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.vtscsi_softc* @device_get_softc(i32 %6)
  store %struct.vtscsi_softc* %7, %struct.vtscsi_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @device_get_nameunit(i32 %12)
  %14 = call i32 @VTSCSI_LOCK_INIT(%struct.vtscsi_softc* %11, i32 %13)
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 7
  %17 = call i32 @TAILQ_INIT(i32* %16)
  %18 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %19 = call i32 @vtscsi_get_tunables(%struct.vtscsi_softc* %18)
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %21 = call i32 @vtscsi_add_sysctl(%struct.vtscsi_softc* %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @vtscsi_feature_desc, align 4
  %24 = call i32 @virtio_set_feature_desc(i32 %22, i32 %23)
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %26 = call i32 @vtscsi_negotiate_features(%struct.vtscsi_softc* %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %29 = call i64 @virtio_with_feature(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @VTSCSI_FLAG_INDIRECT, align 4
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @VIRTIO_SCSI_F_INOUT, align 4
  %40 = call i64 @virtio_with_feature(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @VTSCSI_FLAG_BIDIRECTIONAL, align 4
  %44 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @VIRTIO_SCSI_F_HOTPLUG, align 4
  %51 = call i64 @virtio_with_feature(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @VTSCSI_FLAG_HOTPLUG, align 4
  %55 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %61 = call i32 @vtscsi_read_config(%struct.vtscsi_softc* %60, %struct.virtio_scsi_config* %4)
  %62 = getelementptr inbounds %struct.virtio_scsi_config, %struct.virtio_scsi_config* %4, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.virtio_scsi_config, %struct.virtio_scsi_config* %4, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.virtio_scsi_config, %struct.virtio_scsi_config* %4, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %73 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.virtio_scsi_config, %struct.virtio_scsi_config* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %77 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %79 = call i32 @vtscsi_write_device_config(%struct.vtscsi_softc* %78)
  %80 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.virtio_scsi_config, %struct.virtio_scsi_config* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vtscsi_maximum_segments(%struct.vtscsi_softc* %80, i32 %82)
  %84 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %85 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %87 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @M_NOWAIT, align 4
  %90 = call i32* @sglist_alloc(i32 %88, i32 %89)
  %91 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %94 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %59
  %98 = load i32, i32* @ENOMEM, align 4
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %155

101:                                              ; preds = %59
  %102 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %103 = call i32 @vtscsi_alloc_virtqueues(%struct.vtscsi_softc* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %155

109:                                              ; preds = %101
  %110 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %111 = call i32 @vtscsi_check_sizes(%struct.vtscsi_softc* %110)
  %112 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %113 = call i32 @vtscsi_init_event_vq(%struct.vtscsi_softc* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %155

119:                                              ; preds = %109
  %120 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %121 = call i32 @vtscsi_alloc_requests(%struct.vtscsi_softc* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @device_printf(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %155

127:                                              ; preds = %119
  %128 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %129 = call i32 @vtscsi_alloc_cam(%struct.vtscsi_softc* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %155

135:                                              ; preds = %127
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* @INTR_TYPE_CAM, align 4
  %138 = call i32 @virtio_setup_intr(i32 %136, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %155

144:                                              ; preds = %135
  %145 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %146 = call i32 @vtscsi_enable_vqs_intr(%struct.vtscsi_softc* %145)
  %147 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %148 = call i32 @vtscsi_register_cam(%struct.vtscsi_softc* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @device_printf(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %151, %141, %132, %124, %116, %106, %97
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @vtscsi_detach(i32 %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.vtscsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTSCSI_LOCK_INIT(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @vtscsi_get_tunables(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_add_sysctl(%struct.vtscsi_softc*) #1

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local i32 @vtscsi_negotiate_features(%struct.vtscsi_softc*) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i32 @vtscsi_read_config(%struct.vtscsi_softc*, %struct.virtio_scsi_config*) #1

declare dso_local i32 @vtscsi_write_device_config(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_maximum_segments(%struct.vtscsi_softc*, i32) #1

declare dso_local i32* @sglist_alloc(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtscsi_alloc_virtqueues(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_check_sizes(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_init_event_vq(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_alloc_requests(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_alloc_cam(%struct.vtscsi_softc*) #1

declare dso_local i32 @virtio_setup_intr(i32, i32) #1

declare dso_local i32 @vtscsi_enable_vqs_intr(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_register_cam(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
