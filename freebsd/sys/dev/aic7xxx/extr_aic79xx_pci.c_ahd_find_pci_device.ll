; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_find_pci_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_find_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_pci_identity = type { i32, i32, i32* }

@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@ADAPTECVENDORID = common dso_local global i64 0, align 8
@SUBVENDOR9005 = common dso_local global i64 0, align 8
@DEVICE8081 = common dso_local global i64 0, align 8
@DEVICE8088 = common dso_local global i64 0, align 8
@DEVICE8089 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Controller device ID conflict with PMC Adaptec HBA\0A\00", align 1
@ahd_attach_to_HostRAID_controllers = common dso_local global i64 0, align 8
@ID_ALL_IROC_MASK = common dso_local global i32 0, align 4
@ahd_num_pci_devs = common dso_local global i64 0, align 8
@ahd_pci_ident_table = common dso_local global %struct.ahd_pci_identity* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahd_pci_identity* @ahd_find_pci_device(i32 %0) #0 {
  %2 = alloca %struct.ahd_pci_identity*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahd_pci_identity*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %13 = call i64 @aic_pci_read_config(i32 %11, i32 %12, i32 2)
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCIR_DEVICE, align 4
  %16 = call i64 @aic_pci_read_config(i32 %14, i32 %15, i32 2)
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %19 = call i64 @aic_pci_read_config(i32 %17, i32 %18, i32 2)
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %22 = call i64 @aic_pci_read_config(i32 %20, i32 %21, i32 2)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ADAPTECVENDORID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %1
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @SUBVENDOR9005, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @DEVICE8081, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @DEVICE8088, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @DEVICE8089, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30
  %43 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store %struct.ahd_pci_identity* null, %struct.ahd_pci_identity** %2, align 8
  br label %88

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %26, %1
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @ahd_compose_id(i64 %46, i64 %47, i64 %48, i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @ahd_attach_to_HostRAID_controllers, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @ID_ALL_IROC_MASK, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %45
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @ahd_num_pci_devs, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** @ahd_pci_ident_table, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %63, i64 %64
  store %struct.ahd_pci_identity* %65, %struct.ahd_pci_identity** %9, align 8
  %66 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %67 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %71 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %69, %72
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %77 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store %struct.ahd_pci_identity* null, %struct.ahd_pci_identity** %2, align 8
  br label %88

81:                                               ; preds = %75
  %82 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  store %struct.ahd_pci_identity* %82, %struct.ahd_pci_identity** %2, align 8
  br label %88

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %58

87:                                               ; preds = %58
  store %struct.ahd_pci_identity* null, %struct.ahd_pci_identity** %2, align 8
  br label %88

88:                                               ; preds = %87, %81, %80, %42
  %89 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %2, align 8
  ret %struct.ahd_pci_identity* %89
}

declare dso_local i64 @aic_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahd_compose_id(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
