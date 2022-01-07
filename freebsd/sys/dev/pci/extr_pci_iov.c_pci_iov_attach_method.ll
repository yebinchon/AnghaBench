; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_attach_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_attach_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.pci_devinfo* }

@PCIZ_SRIOV = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Unsupported version of SR-IOV (%d) detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_SRIOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iov_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"iov/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_iov_attach_method(i32 %0, i32 %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_devinfo*, align 8
  %14 = alloca %struct.pcicfg_iov*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.pci_devinfo* @device_get_ivars(i32 %19)
  store %struct.pci_devinfo* %20, %struct.pci_devinfo** %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  store i32 %22, i32* %12, align 4
  store i32* null, i32** %15, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PCIZ_SRIOV, align 4
  %25 = call i32 @pci_find_extcap(i32 %23, i32 %24, i32* %18)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @pci_read_config(i32 %31, i32 %32, i32 4)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @PCI_EXTCAP_VER(i32 %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @PCI_EXTCAP_VER(i32 %42)
  %44 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %6, align 4
  br label %117

47:                                               ; preds = %30
  %48 = load i32, i32* @M_SRIOV, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.pcicfg_iov* @malloc(i32 24, i32 %48, i32 %51)
  store %struct.pcicfg_iov* %52, %struct.pcicfg_iov** %14, align 8
  %53 = call i32 @mtx_lock(i32* @Giant)
  %54 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %55 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %56, align 8
  %58 = icmp ne %struct.pcicfg_iov* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %17, align 4
  br label %105

61:                                               ; preds = %47
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %64 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = call i32* @pci_iov_build_schema(i32** %9, i32** %10)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %17, align 4
  br label %105

70:                                               ; preds = %61
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @pci_iov_validate_schema(i32* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %105

76:                                               ; preds = %70
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %79 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @device_get_unit(i32 %80)
  %82 = load i32, i32* @UID_ROOT, align 4
  %83 = load i32, i32* @GID_WHEEL, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = call %struct.TYPE_4__* @make_dev(i32* @iov_cdevsw, i32 %81, i32 %82, i32 %83, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %87 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %86, i32 0, i32 1
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %87, align 8
  %88 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %89 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = icmp eq %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %17, align 4
  br label %105

94:                                               ; preds = %76
  %95 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %96 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %97 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store %struct.pcicfg_iov* %95, %struct.pcicfg_iov** %98, align 8
  %99 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %100 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %101 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store %struct.pci_devinfo* %99, %struct.pci_devinfo** %103, align 8
  %104 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %6, align 4
  br label %117

105:                                              ; preds = %92, %75, %68, %59
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @nvlist_destroy(i32* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @nvlist_destroy(i32* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @nvlist_destroy(i32* %110)
  %112 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %14, align 8
  %113 = load i32, i32* @M_SRIOV, align 4
  %114 = call i32 @free(%struct.pcicfg_iov* %112, i32 %113)
  %115 = call i32 @mtx_unlock(i32* @Giant)
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %105, %94, %45, %28
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_find_extcap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCI_EXTCAP_VER(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.pcicfg_iov* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @pci_iov_build_schema(i32**, i32**) #1

declare dso_local i32 @pci_iov_validate_schema(i32*) #1

declare dso_local %struct.TYPE_4__* @make_dev(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @free(%struct.pcicfg_iov*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
