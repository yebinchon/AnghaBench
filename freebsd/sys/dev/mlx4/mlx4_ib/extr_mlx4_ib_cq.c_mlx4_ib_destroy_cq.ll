; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_cq = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca %struct.mlx4_ib_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %5 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %6 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.mlx4_ib_dev* @to_mdev(i32 %7)
  store %struct.mlx4_ib_dev* %8, %struct.mlx4_ib_dev** %3, align 8
  %9 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %10 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %9)
  store %struct.mlx4_ib_cq* %10, %struct.mlx4_ib_cq** %4, align 8
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %14, i32 0, i32 3
  %16 = call i32 @mlx4_cq_free(i32 %13, i32* %15)
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mlx4_mtt_cleanup(i32 %19, i32* %22)
  %24 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %25 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %30 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @to_mucontext(i32 %33)
  %35 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %35, i32 0, i32 0
  %37 = call i32 @mlx4_ib_db_unmap_user(i32 %34, i32* %36)
  %38 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ib_umem_release(i32 %40)
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %44 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %44, i32 0, i32 1
  %46 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %47 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %43, %struct.TYPE_4__* %45, i32 %48)
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %53, i32 0, i32 0
  %55 = call i32 @mlx4_db_free(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %42, %28
  %57 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %58 = call i32 @kfree(%struct.mlx4_ib_cq* %57)
  ret i32 0
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mlx4_cq_free(i32, i32*) #1

declare dso_local i32 @mlx4_mtt_cleanup(i32, i32*) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(i32, i32*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx4_db_free(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
