; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_setup_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_gsi_qp = type { i32, %struct.ib_qp**, i32, %struct.TYPE_2__* }
%struct.ib_qp = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"unable to read P_Key at port %d, index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid P_Key at port %d, index %d.  Skipping.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"already existing GSI TX QP at port %d, index %d. Skipping\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"unable to create hardware UD QP for GSI: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_gsi_qp*, i64)* @setup_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qp(%struct.mlx5_ib_gsi_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %5, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %6, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ib_query_pkey(%struct.ib_device* %18, i32 %21, i64 %22, i64* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %28 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  br label %111

33:                                               ; preds = %2
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %38 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %41)
  br label %111

43:                                               ; preds = %33
  %44 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %48, i32 0, i32 1
  %50 = load %struct.ib_qp**, %struct.ib_qp*** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %50, i64 %51
  %53 = load %struct.ib_qp*, %struct.ib_qp** %52, align 8
  store %struct.ib_qp* %53, %struct.ib_qp** %7, align 8
  %54 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %59 = icmp ne %struct.ib_qp* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %43
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %62 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %65)
  br label %111

67:                                               ; preds = %43
  %68 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %69 = call %struct.ib_qp* @create_gsi_ud_qp(%struct.mlx5_ib_gsi_qp* %68)
  store %struct.ib_qp* %69, %struct.ib_qp** %7, align 8
  %70 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %71 = call i64 @IS_ERR(%struct.ib_qp* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %75 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %76 = call i32 @PTR_ERR(%struct.ib_qp* %75)
  %77 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %111

78:                                               ; preds = %67
  %79 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %80 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @modify_to_rts(%struct.mlx5_ib_gsi_qp* %79, %struct.ib_qp* %80, i64 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %108

86:                                               ; preds = %78
  %87 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %87, i32 0, i32 0
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %91, i32 0, i32 1
  %93 = load %struct.ib_qp**, %struct.ib_qp*** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %93, i64 %94
  %96 = load %struct.ib_qp*, %struct.ib_qp** %95, align 8
  %97 = call i32 @WARN_ON_ONCE(%struct.ib_qp* %96)
  %98 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %99 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %100 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %99, i32 0, i32 1
  %101 = load %struct.ib_qp**, %struct.ib_qp*** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %101, i64 %102
  store %struct.ib_qp* %98, %struct.ib_qp** %103, align 8
  %104 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %3, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %104, i32 0, i32 0
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %111

108:                                              ; preds = %85
  %109 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %110 = call i32 @WARN_ON_ONCE(%struct.ib_qp* %109)
  br label %111

111:                                              ; preds = %108, %86, %73, %60, %36, %26
  ret void
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_pkey(%struct.ib_device*, i32, i64, i64*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ib_qp* @create_gsi_ud_qp(%struct.mlx5_ib_gsi_qp*) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local i32 @modify_to_rts(%struct.mlx5_ib_gsi_qp*, %struct.ib_qp*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
