; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_get_pcie_dev_link_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_get_pcie_dev_link_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PCIE_LNK_WIDTH_UNKNOWN = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2 = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_8_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_8_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_5_0GB = common dso_local global i32 0, align 4
@PCIE_SPEED_5_0GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_2_5GB = common dso_local global i32 0, align 4
@PCIE_SPEED_2_5GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_MLW = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_5_0GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_2_5GB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCIE_MLW_CAP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32*, i32*)* @mlx4_get_pcie_dev_link_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_get_pcie_dev_link_caps(%struct.mlx4_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @PCIE_LNK_WIDTH_UNKNOWN, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %22 = call i32 @pcie_capability_read_dword(i32 %20, i32 %21, i32* %8)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCI_EXP_LNKCAP2, align 4
  %29 = call i32 @pcie_capability_read_dword(i32 %27, i32 %28, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_8_0GB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_5_0GB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PCI_EXP_LNKCAP2_SLS_2_5GB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @PCIE_SPEED_2_5GT, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %32, %3
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @PCI_EXP_LNKCAP_MLW, align 4
  %68 = and i32 %66, %67
  %69 = ashr i32 %68, 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @PCI_EXP_LNKCAP_SLS_5_0GB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %90

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @PCIE_SPEED_2_5GT, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %62
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PCIE_LNK_WIDTH_UNKNOWN, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  br label %117

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  br label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %111, %110 ], [ %114, %112 ]
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i32 [ %106, %105 ], [ %116, %115 ]
  store i32 %118, i32* %4, align 4
  br label %120

119:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %117
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @pcie_capability_read_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
