; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_clean_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_clean_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { i32, %struct.TYPE_8__, %struct.mlx5_ib_mr*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to destroy mem psv %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to destroy wire psv %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to destroy mkey 0x%x (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed unregister\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_mr*)* @clean_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_mr(%struct.mlx5_ib_mr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_mr*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_mr* %0, %struct.mlx5_ib_mr** %3, align 8
  %7 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.mlx5_ib_dev* @to_mdev(i32 %10)
  store %struct.mlx5_ib_dev* %11, %struct.mlx5_ib_dev** %4, align 8
  %12 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %15, i32 0, i32 2
  %17 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %18 = icmp ne %struct.mlx5_ib_mr* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %1
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %23, i32 0, i32 2
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @mlx5_core_destroy_psv(i32 %22, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %33, i32 0, i32 2
  %35 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %34, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %19
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %44, i32 0, i32 2
  %46 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %45, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @mlx5_core_destroy_psv(i32 %43, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %54 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %54, i32 0, i32 2
  %56 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %55, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %40
  %62 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %62, i32 0, i32 2
  %64 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %63, align 8
  %65 = call i32 @kfree(%struct.mlx5_ib_mr* %64)
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 2
  store %struct.mlx5_ib_mr* null, %struct.mlx5_ib_mr** %67, align 8
  br label %68

68:                                               ; preds = %61, %1
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %70 = call i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %68
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %76 = call i32 @destroy_mkey(%struct.mlx5_ib_dev* %74, %struct.mlx5_ib_mr* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %81 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %110

88:                                               ; preds = %73
  br label %103

89:                                               ; preds = %68
  %90 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %91 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %92 = call i32 @unreg_umr(%struct.mlx5_ib_dev* %90, %struct.mlx5_ib_mr* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %97 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %110

99:                                               ; preds = %89
  %100 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %101 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %102 = call i32 @free_cached_mr(%struct.mlx5_ib_dev* %100, %struct.mlx5_ib_mr* %101)
  br label %103

103:                                              ; preds = %99, %88
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %108 = call i32 @kfree(%struct.mlx5_ib_mr* %107)
  br label %109

109:                                              ; preds = %106, %103
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %95, %79
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @mlx5_core_destroy_psv(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @destroy_mkey(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @unreg_umr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @free_cached_mr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
