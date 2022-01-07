; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_mkey_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_mkey_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_mkey_seg = type { i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.ib_send_wr = type { i32 }
%struct.mlx5_umr_wr = type { i32, i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5_IB_SEND_UMR_UNREG = common dso_local global i32 0, align 4
@MLX5_MKEY_STATUS_FREE = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_MTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_mkey_seg*, %struct.ib_send_wr*)* @set_reg_mkey_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_mkey_segment(%struct.mlx5_mkey_seg* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca %struct.mlx5_mkey_seg*, align 8
  %4 = alloca %struct.ib_send_wr*, align 8
  %5 = alloca %struct.mlx5_umr_wr*, align 8
  store %struct.mlx5_mkey_seg* %0, %struct.mlx5_mkey_seg** %3, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %4, align 8
  %6 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %7 = call %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr* %6)
  store %struct.mlx5_umr_wr* %7, %struct.mlx5_umr_wr** %5, align 8
  %8 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %9 = call i32 @memset(%struct.mlx5_mkey_seg* %8, i32 0, i32 48)
  %10 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MLX5_IB_SEND_UMR_UNREG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MLX5_MKEY_STATUS_FREE, align 4
  %18 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @convert_access(i32 %23)
  %25 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_MTT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %20
  %34 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_4__* @to_mpd(i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %38, %33
  %49 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_be64(i32 %52)
  %54 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %48, %20
  %57 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_be64(i32 %59)
  %61 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %62 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mlx5_mkey_variant(i32 %70)
  %72 = or i32 -256, %71
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %56, %16
  ret void
}

declare dso_local %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @memset(%struct.mlx5_mkey_seg*, i32, i32) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_4__* @to_mpd(i64) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @mlx5_mkey_variant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
