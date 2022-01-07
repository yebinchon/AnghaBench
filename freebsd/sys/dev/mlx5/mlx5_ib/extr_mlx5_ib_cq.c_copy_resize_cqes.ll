; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_copy_resize_cqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_copy_resize_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"resize from different cqe size is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"expected cqe in sw ownership\0A\00", align 1
@MLX5_CQE_RESIZE_CQ = common dso_local global i32 0, align 4
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"resize CQ failed to get resize CQE, CQN 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_cq*)* @copy_resize_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_resize_cqes(%struct.mlx5_ib_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_cq*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %3, align 8
  %14 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %4, align 8
  %19 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %157

36:                                               ; preds = %1
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @get_sw_cqe(%struct.mlx5_ib_cq* %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i8*, i8** %8, align 8
  br label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr i8, i8* %49, i64 64
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i8* [ %47, %46 ], [ %50, %48 ]
  %53 = bitcast i8* %52 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %53, %struct.mlx5_cqe64** %5, align 8
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %59 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %157

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %150, %62
  %64 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = load i32, i32* @MLX5_CQE_RESIZE_CQ, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %151

70:                                               ; preds = %63
  %71 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %75, %80
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @get_cqe_from_buf(%struct.TYPE_8__* %73, i32 %81, i32 %82)
  store i8* %83, i8** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i8*, i8** %9, align 8
  br label %91

88:                                               ; preds = %70
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr i8, i8* %89, i64 64
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i8* [ %87, %86 ], [ %90, %88 ]
  %93 = bitcast i8* %92 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %93, %struct.mlx5_cqe64** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sw_ownership_bit(i32 %95, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @memcpy(i8* %102, i8* %103, i32 %104)
  %106 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i8* @get_sw_cqe(%struct.mlx5_ib_cq* %118, i32 %119)
  store i8* %120, i8** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 64
  br i1 %122, label %123, label %125

123:                                              ; preds = %91
  %124 = load i8*, i8** %8, align 8
  br label %128

125:                                              ; preds = %91
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr i8, i8* %126, i64 64
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i8* [ %124, %123 ], [ %127, %125 ]
  %130 = bitcast i8* %129 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %130, %struct.mlx5_cqe64** %5, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %135 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %157

138:                                              ; preds = %128
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %144 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %157

150:                                              ; preds = %138
  br label %63

151:                                              ; preds = %63
  %152 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %153 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %151, %142, %133, %57, %31
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i8* @get_sw_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i8* @get_cqe_from_buf(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sw_ownership_bit(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
