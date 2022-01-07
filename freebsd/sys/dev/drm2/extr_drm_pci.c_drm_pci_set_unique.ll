; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_set_unique.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_set_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32 }
%struct.drm_master = type { i64, i64, i8* }
%struct.drm_unique = type { i64, i32 }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PCI:%d:%d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_pci_set_unique(%struct.drm_device* %0, %struct.drm_master* %1, %struct.drm_unique* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_master*, align 8
  %7 = alloca %struct.drm_unique*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_master* %1, %struct.drm_master** %6, align 8
  store %struct.drm_unique* %2, %struct.drm_unique** %7, align 8
  %13 = load %struct.drm_unique*, %struct.drm_unique** %7, align 8
  %14 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %17 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.drm_unique*, %struct.drm_unique** %7, align 8
  %19 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 1
  %22 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %23 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %25 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i8* @malloc(i64 %26, i32 %27, i32 %28)
  %30 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %31 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %33 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %103

39:                                               ; preds = %3
  %40 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %41 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.drm_unique*, %struct.drm_unique** %7, align 8
  %44 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %47 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @copy_from_user(i8* %42, i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %103

54:                                               ; preds = %39
  %55 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %56 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %59 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %63 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %103

71:                                               ; preds = %54
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 8
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 255
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %99, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %87, %81, %71
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  br label %103

102:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %105

103:                                              ; preds = %99, %68, %51, %36
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
