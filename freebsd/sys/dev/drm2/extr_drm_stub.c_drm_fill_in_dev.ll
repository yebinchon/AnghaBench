; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_fill_in_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_fill_in_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_driver*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"drmirq\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"drmcount\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"drmev\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"drmslk\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"drmctxlist\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"drmpcir\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@_DRM_STAT_LOCK = common dso_local global i32 0, align 4
@_DRM_STAT_OPENS = common dso_local global i32 0, align 4
@_DRM_STAT_CLOSES = common dso_local global i32 0, align 4
@_DRM_STAT_IOCTLS = common dso_local global i32 0, align 4
@_DRM_STAT_LOCKS = common dso_local global i32 0, align 4
@_DRM_STAT_UNLOCKS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Cannot allocate memory for context bitmap.\0A\00", align 1
@DRIVER_GEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"Cannot initialize graphics execution manager (GEM)\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Failed to create hw.dri sysctl entry: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fill_in_dev(%struct.drm_device* %0, %struct.drm_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_driver* %1, %struct.drm_driver** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 14
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 13
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 12
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 11
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 10
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 9
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 8
  %30 = load i32, i32* @MTX_DEF, align 4
  %31 = call i32 @mtx_init(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 7
  %34 = call i32 @sx_init(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 6
  %37 = load i32, i32* @MTX_DEF, align 4
  %38 = call i32 @mtx_init(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 5
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 4
  %45 = call i64 @drm_ht_create(i32* %44, i32 12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %145

50:                                               ; preds = %2
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  store i32 6, i32* %52, align 8
  %53 = load i32, i32* @_DRM_STAT_LOCK, align 4
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @_DRM_STAT_OPENS, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @_DRM_STAT_CLOSES, align 4
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @_DRM_STAT_IOCTLS, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @_DRM_STAT_LOCKS, align 4
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @_DRM_STAT_UNLOCKS, align 4
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  store i32 %78, i32* %82, align 4
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %98, %50
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ARRAY_SIZE(i32* %87)
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %83

101:                                              ; preds = %83
  %102 = load %struct.drm_driver*, %struct.drm_driver** %5, align 8
  %103 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 1
  store %struct.drm_driver* %102, %struct.drm_driver** %104, align 8
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = call i32 @drm_pci_agp_init(%struct.drm_device* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %141

110:                                              ; preds = %101
  %111 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %112 = call i32 @drm_ctxbitmap_init(%struct.drm_device* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %141

117:                                              ; preds = %110
  %118 = load %struct.drm_driver*, %struct.drm_driver** %5, align 8
  %119 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DRIVER_GEM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %126 = call i32 @drm_gem_init(%struct.drm_device* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %141

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %117
  %133 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %134 = call i32 @drm_sysctl_init(%struct.drm_device* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %132
  store i32 0, i32* %3, align 4
  br label %145

141:                                              ; preds = %129, %115, %109
  %142 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %143 = call i32 @drm_cancel_fill_in_dev(%struct.drm_device* %142)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %140, %47
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i64 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_pci_agp_init(%struct.drm_device*) #1

declare dso_local i32 @drm_ctxbitmap_init(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_gem_init(%struct.drm_device*) #1

declare dso_local i32 @drm_sysctl_init(%struct.drm_device*) #1

declare dso_local i32 @drm_cancel_fill_in_dev(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
