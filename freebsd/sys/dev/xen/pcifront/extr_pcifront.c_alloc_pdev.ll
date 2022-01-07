; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_alloc_pdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_alloc_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, i32, i32, i32, i32, %struct.xen_pci_sharedinfo*, %struct.xenbus_device* }
%struct.xen_pci_sharedinfo = type { i64 }
%struct.xenbus_device = type { %struct.pcifront_device*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"device/pci/%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error scanning pci device instance number\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error allocating pcifront_device struct\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error allocating sh_info struct\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"info_lock\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"pci shared dev info lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@INVALID_EVTCHN = common dso_local global i32 0, align 4
@INVALID_GRANT_REF = common dso_local global i32 0, align 4
@pdev_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Allocated pdev @ 0x%p (unit=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcifront_device* (%struct.xenbus_device*)* @alloc_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcifront_device* @alloc_pdev(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  store %struct.pcifront_device* null, %struct.pcifront_device** %3, align 8
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @sscanf(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 6
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %21, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %90

24:                                               ; preds = %1
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i64 @malloc(i32 40, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.pcifront_device*
  store %struct.pcifront_device* %28, %struct.pcifront_device** %3, align 8
  %29 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %30 = icmp eq %struct.pcifront_device* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %34, i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %90

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %42 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %42, i32 0, i32 6
  store %struct.xenbus_device* %41, %struct.xenbus_device** %43, align 8
  %44 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = call i64 @malloc(i32 %46, i32 %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.xen_pci_sharedinfo*
  %51 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %51, i32 0, i32 5
  store %struct.xen_pci_sharedinfo* %50, %struct.xen_pci_sharedinfo** %52, align 8
  %53 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %53, i32 0, i32 5
  %55 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %54, align 8
  %56 = icmp eq %struct.xen_pci_sharedinfo* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %37
  %58 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(%struct.pcifront_device* %58, i32 %59)
  store %struct.pcifront_device* null, %struct.pcifront_device** %3, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %63, i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %90

66:                                               ; preds = %37
  %67 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %68 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %67, i32 0, i32 5
  %69 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %68, align 8
  %70 = getelementptr inbounds %struct.xen_pci_sharedinfo, %struct.xen_pci_sharedinfo* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %72 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %73 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %72, i32 0, i32 0
  store %struct.pcifront_device* %71, %struct.pcifront_device** %73, align 8
  %74 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %75 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %74, i32 0, i32 4
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @INVALID_EVTCHN, align 4
  %79 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %80 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @INVALID_GRANT_REF, align 4
  %82 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %83 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %85 = load i32, i32* @next, align 4
  %86 = call i32 @STAILQ_INSERT_TAIL(i32* @pdev_list, %struct.pcifront_device* %84, i32 %85)
  %87 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.pcifront_device* %87, i32 %88)
  br label %90

90:                                               ; preds = %66, %57, %31, %18
  %91 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  ret %struct.pcifront_device* %91
}

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.pcifront_device*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pcifront_device*, i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.pcifront_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
