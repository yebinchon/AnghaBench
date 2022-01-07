; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_clear_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__**, i32, i32, i32, i32, i32, %struct.mlx4_en_dev* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.mlx4_en_dev = type { i32 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed dumping statistics\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mlx4_en_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_clear_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %3, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 9
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  store %struct.mlx4_en_dev* %10, %struct.mlx4_en_dev** %4, align 8
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlx4_is_slave(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @mlx4_en_DUMP_ETH_STATS(%struct.mlx4_en_dev* %17, i32 %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @HW, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %26 = call i32 @en_dbg(i32 %24, %struct.mlx4_en_priv* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 7
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 6
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 5
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 4
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %80, %28
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %74, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %47
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %41

83:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %123, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %84
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %90
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %84

126:                                              ; preds = %84
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_is_slave(i32) #1

declare dso_local i64 @mlx4_en_DUMP_ETH_STATS(%struct.mlx4_en_dev*, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
