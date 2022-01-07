; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_enable_sriov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_enable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pf_loading = common dso_local global i32 0, align 4
@MLX4_FLAG_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"SR-IOV was already enabled, but with num_vfs (%d) different than requested (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for VFs\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Enabling SR-IOV with %d VFs\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Failed to enable SR-IOV, continuing without SR-IOV (err = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Running in master mode\0A\00", align 1
@MLX4_FLAG_MASTER = common dso_local global i32 0, align 4
@MLX4_FLAG_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.pci_dev*, i32, i32, i32)* @mlx4_enable_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_enable_sriov(%struct.mlx4_dev* %0, %struct.pci_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %109

30:                                               ; preds = %19
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %124

32:                                               ; preds = %5
  %33 = call i32 @atomic_inc(i32* @pf_loading)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i32 %55, i32 %56)
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* null, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %66 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %107

67:                                               ; preds = %51
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pci_enable_sriov(%struct.pci_dev* %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %85, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %107

88:                                               ; preds = %81
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %90 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %92 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %102 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %124

107:                                              ; preds = %84, %64
  %108 = call i32 @atomic_dec(i32* @pf_loading)
  br label %109

109:                                              ; preds = %107, %29
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %115 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %119 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %109, %105, %30
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
