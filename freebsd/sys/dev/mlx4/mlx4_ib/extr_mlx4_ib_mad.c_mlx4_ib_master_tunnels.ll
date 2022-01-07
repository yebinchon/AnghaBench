; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_master_tunnels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_master_tunnels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32)* @mlx4_ib_master_tunnels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_master_tunnels(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @mlx4_is_master(%struct.TYPE_5__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %24 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @mlx4_master_func_num(%struct.TYPE_5__* %26)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mlx4_ib_tunnels_update(%struct.mlx4_ib_dev* %23, i32 %27, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @mlx4_is_master(%struct.TYPE_5__*) #1

declare dso_local i32 @mlx4_ib_tunnels_update(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
