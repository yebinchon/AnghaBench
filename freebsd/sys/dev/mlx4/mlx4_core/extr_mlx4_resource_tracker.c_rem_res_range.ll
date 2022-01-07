; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_rem_res_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_rem_res_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { i32* }
%struct.res_common = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i64, i32, i32, i32)* @rem_res_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rem_res_range(%struct.mlx4_dev* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_priv*, align 8
  %16 = alloca %struct.mlx4_resource_tracker*, align 8
  %17 = alloca %struct.res_common*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %19 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %18)
  store %struct.mlx4_priv* %19, %struct.mlx4_priv** %15, align 8
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %15, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %23, %struct.mlx4_resource_tracker** %16, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %25 = call i32 @mlx4_tlock(%struct.mlx4_dev* %24)
  %26 = call i32 @spin_lock_irq(i32 %25)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %67, %6
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %16, align 8
  %37 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i64, i64* %13, align 8
  %43 = call %struct.res_common* @res_tracker_lookup(i32* %41, i64 %42)
  store %struct.res_common* %43, %struct.res_common** %17, align 8
  %44 = load %struct.res_common*, %struct.res_common** %17, align 8
  %45 = icmp ne %struct.res_common* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %106

49:                                               ; preds = %35
  %50 = load %struct.res_common*, %struct.res_common** %17, align 8
  %51 = getelementptr inbounds %struct.res_common, %struct.res_common* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %106

58:                                               ; preds = %49
  %59 = load %struct.res_common*, %struct.res_common** %17, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @remove_ok(%struct.res_common* %59, i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %106

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %28

70:                                               ; preds = %28
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %102, %70
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %72
  %80 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %16, align 8
  %81 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i64, i64* %13, align 8
  %87 = call %struct.res_common* @res_tracker_lookup(i32* %85, i64 %86)
  store %struct.res_common* %87, %struct.res_common** %17, align 8
  %88 = load %struct.res_common*, %struct.res_common** %17, align 8
  %89 = getelementptr inbounds %struct.res_common, %struct.res_common* %88, i32 0, i32 2
  %90 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %16, align 8
  %91 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @rb_erase(i32* %89, i32* %95)
  %97 = load %struct.res_common*, %struct.res_common** %17, align 8
  %98 = getelementptr inbounds %struct.res_common, %struct.res_common* %97, i32 0, i32 1
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.res_common*, %struct.res_common** %17, align 8
  %101 = call i32 @kfree(%struct.res_common* %100)
  br label %102

102:                                              ; preds = %79
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %72

105:                                              ; preds = %72
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %65, %55, %46
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %108 = call i32 @mlx4_tlock(%struct.mlx4_dev* %107)
  %109 = call i32 @spin_unlock_irq(i32 %108)
  %110 = load i32, i32* %14, align 4
  ret i32 %110
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @res_tracker_lookup(i32*, i64) #1

declare dso_local i32 @remove_ok(%struct.res_common*, i32, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.res_common*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
