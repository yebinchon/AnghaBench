; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_cmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@MLX4_CMD_CLEANUP_STRUCT = common dso_local global i32 0, align 4
@MLX4_HCR_BASE = common dso_local global i64 0, align 8
@MLX4_HCR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't map command register\0A\00", align 1
@MLX4_CMD_CLEANUP_HCR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_VHCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mlx4_cmd\00", align 1
@MLX4_MAILBOX_SIZE = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_POOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_init(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %1
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 8
  %17 = call i32 @init_rwsem(i32* %16)
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = call i32 @sema_init(i32* %24, i32 1)
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = call i32 @sema_init(i32* %28, i32 0)
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @MLX4_CMD_CLEANUP_STRUCT, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %13, %1
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %44 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %42
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %46
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i64 @pci_resource_start(%struct.TYPE_9__* %57, i32 0)
  %59 = load i64, i64* @MLX4_HCR_BASE, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @MLX4_HCR_SIZE, align 4
  %62 = call i64 @ioremap(i64 %60, i32 %61)
  %63 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i64 %62, i64* %65, align 8
  %66 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %52
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %73 = call i32 @mlx4_err(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %143

74:                                               ; preds = %52
  %75 = load i32, i32* @MLX4_CMD_CLEANUP_HCR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %46, %42
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %78
  %83 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %84 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %114, label %88

88:                                               ; preds = %82
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %90 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %97 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i64 @dma_alloc_coherent(i32* %94, i32 %95, i32* %98, i32 %99)
  %101 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %88
  br label %143

110:                                              ; preds = %88
  %111 = load i32, i32* @MLX4_CMD_CLEANUP_VHCR, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %82, %78
  %115 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %114
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %127 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %128 = call i64 @pci_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %125, i32 %126, i32 %127, i32 0)
  %129 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i64 %128, i64* %131, align 8
  %132 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %133 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %120
  br label %143

138:                                              ; preds = %120
  %139 = load i32, i32* @MLX4_CMD_CLEANUP_POOL, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %114
  store i32 0, i32* %2, align 4
  br label %149

143:                                              ; preds = %137, %109, %71
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %144, i32 %145)
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %142
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @pci_pool_create(i8*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd_cleanup(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
