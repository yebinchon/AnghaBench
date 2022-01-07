; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_sysfs.c_unregister_alias_guid_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_sysfs.c_unregister_alias_guid_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.mlx4_ib_iov_port*, %struct.TYPE_6__* }
%struct.mlx4_ib_iov_port = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*)* @unregister_alias_guid_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_alias_guid_tree(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca %struct.mlx4_ib_iov_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  %5 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @mlx4_is_master(%struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %77

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %74, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %12
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  %24 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %24, i64 %26
  store %struct.mlx4_ib_iov_port* %27, %struct.mlx4_ib_iov_port** %3, align 8
  %28 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kobject_put(i32 %30)
  %32 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kobject_put(i32 %34)
  %36 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kobject_put(i32 %38)
  %40 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kobject_put(i32 %42)
  %44 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kobject_put(i32 %46)
  %48 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kobject_put(i32 %50)
  %52 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kobject_put(i32 %54)
  %56 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kobject_put(i32 %58)
  %60 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kobject_put(i32 %62)
  %64 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kobject_put(i32 %68)
  %70 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %3, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kfree(i32 %72)
  br label %74

74:                                               ; preds = %21
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %12

77:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @mlx4_is_master(%struct.TYPE_6__*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
