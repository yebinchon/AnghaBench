; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_add_outstanding_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_mlx5_ib_add_outstanding_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_gsi_qp = type { i64, i64, %struct.TYPE_6__, %struct.mlx5_ib_gsi_wr*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5_ib_gsi_wr = type { i32, %struct.TYPE_8__, %struct.ib_wc }
%struct.TYPE_8__ = type { i32* }
%struct.ib_wc = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_ud_wr = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.mlx5_ib_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no available GSI work request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@handle_single_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_gsi_qp*, %struct.ib_ud_wr*, %struct.ib_wc*)* @mlx5_ib_add_outstanding_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_add_outstanding_wr(%struct.mlx5_ib_gsi_qp* %0, %struct.ib_ud_wr* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %6 = alloca %struct.ib_ud_wr*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_gsi_wr*, align 8
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %5, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %10 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mlx5_ib_dev* @to_mdev(i32 %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %8, align 8
  %16 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %21, %25
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %30 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %86

33:                                               ; preds = %3
  %34 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %34, i32 0, i32 3
  %36 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %35, align 8
  %37 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = urem i64 %39, %43
  %45 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %36, i64 %44
  store %struct.mlx5_ib_gsi_wr* %45, %struct.mlx5_ib_gsi_wr** %9, align 8
  %46 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %51 = icmp ne %struct.ib_wc* %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %33
  %53 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %53, i32 0, i32 2
  %55 = call i32 @memset(%struct.ib_wc* %54, i32 0, i32 8)
  %56 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %77

69:                                               ; preds = %33
  %70 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %70, i32 0, i32 2
  %72 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %73 = bitcast %struct.ib_wc* %71 to i8*
  %74 = bitcast %struct.ib_wc* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 4 %74, i64 8, i1 false)
  %75 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %52
  %78 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32* @handle_single_completion, i32** %80, align 8
  %81 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %9, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %81, i32 0, i32 1
  %83 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %6, align 8
  %84 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %77, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
