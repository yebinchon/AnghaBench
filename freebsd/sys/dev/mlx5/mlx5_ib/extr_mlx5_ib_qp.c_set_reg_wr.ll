; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_reg_wr = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_mr = type { i32 }
%struct.mlx5_ib_pd = type { i32 }

@IB_SEND_INLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid IB_SEND_INLINE send flag\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_reg_wr*, i8**, i32*)* @set_reg_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_wr(%struct.mlx5_ib_qp* %0, %struct.ib_reg_wr* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca %struct.ib_reg_wr*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5_ib_mr*, align 8
  %11 = alloca %struct.mlx5_ib_pd*, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %6, align 8
  store %struct.ib_reg_wr* %1, %struct.ib_reg_wr** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %7, align 8
  %13 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mlx5_ib_mr* @to_mmr(i32 %14)
  store %struct.mlx5_ib_mr* %15, %struct.mlx5_ib_mr** %10, align 8
  %16 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5_ib_pd* @to_mpd(i32 %19)
  store %struct.mlx5_ib_pd* %20, %struct.mlx5_ib_pd** %11, align 8
  %21 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %7, align 8
  %22 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IB_SEND_INLINE, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @to_mdev(i32 %33)
  %35 = call i32 @mlx5_ib_warn(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %112

38:                                               ; preds = %4
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %10, align 8
  %42 = call i32 @set_reg_umr_seg(i8* %40, %struct.mlx5_ib_mr* %41)
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr i8, i8* %44, i64 4
  store i8* %45, i8** %43, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 0
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %52, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %38
  %62 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %63 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %62, i32 0)
  %64 = load i8**, i8*** %8, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %38
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %10, align 8
  %69 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %7, align 8
  %73 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_reg_mkey_seg(i8* %67, %struct.mlx5_ib_mr* %68, i32 %71, i32 %74)
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr i8, i8* %77, i64 4
  store i8* %78, i8** %76, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 0
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %85, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %65
  %95 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %96 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %95, i32 0)
  %97 = load i8**, i8*** %8, align 8
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %65
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %10, align 8
  %102 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %11, align 8
  %103 = call i32 @set_reg_data_seg(i8* %100, %struct.mlx5_ib_mr* %101, %struct.mlx5_ib_pd* %102)
  %104 = load i8**, i8*** %8, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr i8, i8* %105, i64 4
  store i8* %106, i8** %104, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 0
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %98, %29
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(i32) #1

declare dso_local %struct.mlx5_ib_pd* @to_mpd(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_warn(i32, i8*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @set_reg_umr_seg(i8*, %struct.mlx5_ib_mr*) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @set_reg_mkey_seg(i8*, %struct.mlx5_ib_mr*, i32, i32) #1

declare dso_local i32 @set_reg_data_seg(i8*, %struct.mlx5_ib_mr*, %struct.mlx5_ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
