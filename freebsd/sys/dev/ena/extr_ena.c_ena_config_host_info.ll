; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_config_host_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_config_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ena_admin_host_info* }
%struct.ena_admin_host_info = type { i64, i32, i32, i32, i32, i64, i32, i32 }

@ENA_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate host info\0A\00", align 1
@PCI_ID_RID = common dso_local global i32 0, align 4
@ENA_ADMIN_OS_FREEBSD = common dso_local global i32 0, align 4
@osreldate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@osrelease = common dso_local global i32 0, align 4
@DRV_MODULE_VER_MAJOR = common dso_local global i32 0, align 4
@DRV_MODULE_VER_MINOR = common dso_local global i32 0, align 4
@ENA_ADMIN_HOST_INFO_MINOR_SHIFT = common dso_local global i32 0, align 4
@DRV_MODULE_VER_SUBMINOR = common dso_local global i32 0, align 4
@ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot set host attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, i32)* @ena_config_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_config_host_info(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_admin_host_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %9 = call i32 @ena_com_allocate_host_info(%struct.ena_com_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENA_ALERT, align 4
  %17 = call i32 @ena_trace(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %21, align 8
  store %struct.ena_admin_host_info* %22, %struct.ena_admin_host_info** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PCI_ID_RID, align 4
  %25 = call i64 @pci_get_id(i32 %23, i32 %24, i64* %6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %30 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @ENA_ADMIN_OS_FREEBSD, align 4
  %33 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %34 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @osreldate, align 4
  %36 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %37 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %39 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @osreldate, align 4
  %42 = call i32 @sprintf(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %44 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %46 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @osrelease, align 4
  %49 = call i32 @strncpy(i32 %47, i32 %48, i32 3)
  %50 = load i32, i32* @DRV_MODULE_VER_MAJOR, align 4
  %51 = load i32, i32* @DRV_MODULE_VER_MINOR, align 4
  %52 = load i32, i32* @ENA_ADMIN_HOST_INFO_MINOR_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* @DRV_MODULE_VER_SUBMINOR, align 4
  %56 = load i32, i32* @ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  %59 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %60 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @mp_ncpus, align 4
  %62 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %63 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %65 = call i32 @ena_com_set_host_attributes(%struct.ena_com_dev* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %31
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @ENA_WARNING, align 4
  %77 = call i32 @ena_trace(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @ENA_ALERT, align 4
  %80 = call i32 @ena_trace(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  br label %83

82:                                               ; preds = %31
  br label %86

83:                                               ; preds = %81
  %84 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %85 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %84)
  br label %86

86:                                               ; preds = %83, %82, %15
  ret void
}

declare dso_local i32 @ena_com_allocate_host_info(%struct.ena_com_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i64 @pci_get_id(i32, i32, i64*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ena_com_set_host_attributes(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
