; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_release_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_release_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.mlx4_ib_demux_ctx* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_demux_ctx = type { i32, i32, i32, i32 }

@MCAST_IDLE = common dso_local global i64 0, align 8
@mgid0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"releasing a group with non empty pending list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i32)* @release_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_group(%struct.mcast_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %9 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %8, i32 0, i32 9
  %10 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %9, align 8
  store %struct.mlx4_ib_demux_ctx* %10, %struct.mlx4_ib_demux_ctx** %6, align 8
  %11 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %15 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %18 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %17, i32 0, i32 7
  %19 = call i64 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %26 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MCAST_IDLE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %32 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %31, i32 0, i32 8
  %33 = call i32 @cancel_delayed_work(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %37 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %36, i32 0, i32 7
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %40 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %101

45:                                               ; preds = %30, %24
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %48 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @memcmp(i32* %49, i32* @mgid0, i32 4)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %61 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @del_sysfs_port_mcg_attr(i32 %56, i32 %59, i32* %62)
  br label %64

64:                                               ; preds = %53, %46
  %65 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %66 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %65, i32 0, i32 4
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %71 = call i32 @mcg_warn_group(%struct.mcast_group* %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %77 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %76, i32 0, i32 3
  %78 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %78, i32 0, i32 1
  %80 = call i32 @rb_erase(i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %83 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %82, i32 0, i32 2
  %84 = call i32 @list_del_init(i32* %83)
  %85 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %86 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %92 = call i32 @kfree(%struct.mcast_group* %91)
  store i32 1, i32* %3, align 4
  br label %101

93:                                               ; preds = %2
  %94 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %95 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  br label %100

100:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %81, %35
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @del_sysfs_port_mcg_attr(i32, i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mcg_warn_group(%struct.mcast_group*, i8*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.mcast_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
