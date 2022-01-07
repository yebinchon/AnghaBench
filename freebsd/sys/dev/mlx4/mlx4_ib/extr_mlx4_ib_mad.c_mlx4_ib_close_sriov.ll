; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_close_sriov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_close_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__*, i32**, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_close_sriov(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  %5 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @mlx4_is_mfunc(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %91

11:                                               ; preds = %1
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @mlx4_is_master(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %81, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %31
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @flush_workqueue(i32 %46)
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @mlx4_ib_free_sqp_ctx(i32* %55)
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* null, i32** %72, align 8
  %73 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = call i32 @mlx4_ib_free_demux_ctx(%struct.TYPE_4__* %79)
  br label %81

81:                                               ; preds = %37
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %31

84:                                               ; preds = %31
  %85 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %86 = call i32 @mlx4_ib_cm_paravirt_clean(%struct.mlx4_ib_dev* %85, i32 -1)
  %87 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %88 = call i32 @mlx4_ib_destroy_alias_guid_service(%struct.mlx4_ib_dev* %87)
  %89 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %90 = call i32 @mlx4_ib_device_unregister_sysfs(%struct.mlx4_ib_dev* %89)
  br label %91

91:                                               ; preds = %10, %84, %11
  ret void
}

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mlx4_is_master(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mlx4_ib_free_sqp_ctx(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlx4_ib_free_demux_ctx(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx4_ib_cm_paravirt_clean(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_destroy_alias_guid_service(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @mlx4_ib_device_unregister_sysfs(%struct.mlx4_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
