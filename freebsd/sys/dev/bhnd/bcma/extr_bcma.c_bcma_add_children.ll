; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_chipid = type { i32 }
%struct.bcma_corecfg = type { i32 }
%struct.bcma_devinfo = type { i32 }

@BCMA_EROM_RID = common dso_local global i32 0, align 4
@bcma_erom_parser = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_add_children(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bcma_erom*, align 8
  %6 = alloca %struct.bhnd_erom_io*, align 8
  %7 = alloca %struct.bhnd_chipid*, align 8
  %8 = alloca %struct.bcma_corecfg*, align 8
  %9 = alloca %struct.bcma_devinfo*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.bhnd_chipid* @BHND_BUS_GET_CHIPID(i32* %12, i32* %13)
  store %struct.bhnd_chipid* %14, %struct.bhnd_chipid** %7, align 8
  store %struct.bcma_corecfg* null, %struct.bcma_corecfg** %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @BCMA_EROM_RID, align 4
  %17 = call %struct.bhnd_erom_io* @bhnd_erom_iores_new(i32* %15, i32 %16)
  store %struct.bhnd_erom_io* %17, %struct.bhnd_erom_io** %6, align 8
  %18 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %19 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %6, align 8
  %20 = call i32* @bhnd_erom_alloc(i32* @bcma_erom_parser, %struct.bhnd_chipid* %18, %struct.bhnd_erom_io* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %6, align 8
  %25 = call i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io* %24)
  %26 = load i32, i32* @ENODEV, align 4
  store i32 %26, i32* %2, align 4
  br label %84

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = bitcast i32* %28 to %struct.bcma_erom*
  store %struct.bcma_erom* %29, %struct.bcma_erom** %5, align 8
  br label %30

30:                                               ; preds = %58, %27
  %31 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %32 = call i32 @bcma_erom_next_corecfg(%struct.bcma_erom* %31, %struct.bcma_corecfg** %8)
  store i32 %32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @BUS_ADD_CHILD(i32* %35, i32 0, i32* null, i32 -1)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %11, align 4
  br label %68

41:                                               ; preds = %34
  %42 = load i32*, i32** %10, align 8
  %43 = call %struct.bcma_devinfo* @device_get_ivars(i32* %42)
  store %struct.bcma_devinfo* %43, %struct.bcma_devinfo** %9, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %9, align 8
  %47 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %8, align 8
  %48 = call i32 @bcma_init_dinfo(i32* %44, i32* %45, %struct.bcma_devinfo* %46, %struct.bcma_corecfg* %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %68

51:                                               ; preds = %41
  store %struct.bcma_corecfg* null, %struct.bcma_corecfg** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i64 @bhnd_is_hw_disabled(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @device_disable(i32* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @BHND_BUS_CHILD_ADDED(i32* %59, i32* %60)
  br label %30

62:                                               ; preds = %30
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %50, %39
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @bhnd_erom_free(i32* %69)
  %71 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %8, align 8
  %72 = icmp ne %struct.bcma_corecfg* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %8, align 8
  %75 = call i32 @bcma_free_corecfg(%struct.bcma_corecfg* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @device_delete_children(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.bhnd_chipid* @BHND_BUS_GET_CHIPID(i32*, i32*) #1

declare dso_local %struct.bhnd_erom_io* @bhnd_erom_iores_new(i32*, i32) #1

declare dso_local i32* @bhnd_erom_alloc(i32*, %struct.bhnd_chipid*, %struct.bhnd_erom_io*) #1

declare dso_local i32 @bhnd_erom_io_fini(%struct.bhnd_erom_io*) #1

declare dso_local i32 @bcma_erom_next_corecfg(%struct.bcma_erom*, %struct.bcma_corecfg**) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i32*, i32) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @bcma_init_dinfo(i32*, i32*, %struct.bcma_devinfo*, %struct.bcma_corecfg*) #1

declare dso_local i64 @bhnd_is_hw_disabled(i32*) #1

declare dso_local i32 @device_disable(i32*) #1

declare dso_local i32 @BHND_BUS_CHILD_ADDED(i32*, i32*) #1

declare dso_local i32 @bhnd_erom_free(i32*) #1

declare dso_local i32 @bcma_free_corecfg(%struct.bcma_corecfg*) #1

declare dso_local i32 @device_delete_children(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
