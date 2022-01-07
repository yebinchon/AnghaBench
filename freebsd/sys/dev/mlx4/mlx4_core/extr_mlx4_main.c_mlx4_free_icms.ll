; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_free_icms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_free_icms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_free_icms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_free_icms(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %5 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %4)
  store %struct.mlx4_priv* %5, %struct.mlx4_priv** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %6, i32* %9)
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %11, i32* %14)
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %16, i32* %19)
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %21, i32* %24)
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %26, i32* %29)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %31, i32* %34)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %37 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %36, i32* %39)
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %41, i32* %44)
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %46, i32* %49)
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %52 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %51, i32* %54)
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %57 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %56, i32* %59)
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %62 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %61, i32* %64)
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %66, i32* %69)
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %72 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %71, i32* %74)
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %77 = call i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev* %76)
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %79 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %78, i32 %82, i32 0)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
