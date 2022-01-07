; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_drm_add_busid_modesetting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_drm_add_busid_modesetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pci:%04x:%02x:%02x.%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"busid\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"modesetting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_busid_modesetting(%struct.drm_device* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %6, align 8
  store %struct.sysctl_oid* %2, %struct.sysctl_oid** %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i32 %11, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.sysctl_oid* @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 0, i32* null)
  store %struct.sysctl_oid* %33, %struct.sysctl_oid** %8, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %35 = icmp eq %struct.sysctl_oid* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %3
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DRIVER_MODESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 4
  %58 = call %struct.sysctl_oid* @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32* %57, i32 0, i32* null)
  store %struct.sysctl_oid* %58, %struct.sysctl_oid** %8, align 8
  %59 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %60 = icmp eq %struct.sysctl_oid* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61, %36
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
