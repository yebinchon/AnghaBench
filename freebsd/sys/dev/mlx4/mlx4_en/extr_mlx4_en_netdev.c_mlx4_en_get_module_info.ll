; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_get_module_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i8*, i8* }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Failed to read eeprom module first two bytes, error: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8636 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8636_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8472 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8472_LEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"mlx4_en_get_module_info :  Not recognized cable type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @mlx4_en_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 1
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %7, align 8
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %22 = call i32 @mlx4_get_module_info(i32 %17, i32 %20, i32 0, i32 2, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  switch i32 %34, label %75 [
    i32 131, label %35
    i32 129, label %42
    i32 130, label %61
    i32 128, label %68
  ]

35:                                               ; preds = %32
  %36 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %37 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %40 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %80

42:                                               ; preds = %32
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %48 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @ETH_MODULE_SFF_8636_LEN, align 8
  %51 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %60

53:                                               ; preds = %42
  %54 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %55 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %58 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %46
  br label %80

61:                                               ; preds = %32
  %62 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %63 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ETH_MODULE_SFF_8636_LEN, align 8
  %66 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %80

68:                                               ; preds = %32
  %69 = load i8*, i8** @ETH_MODULE_SFF_8472, align 8
  %70 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @ETH_MODULE_SFF_8472_LEN, align 8
  %73 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %80

75:                                               ; preds = %32
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %77 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %68, %61, %60, %35
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %75, %25
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_get_module_info(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
