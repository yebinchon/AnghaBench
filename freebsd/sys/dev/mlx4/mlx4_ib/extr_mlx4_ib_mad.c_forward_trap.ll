; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_forward_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_forward_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, i32*, %struct.ib_mad_agent*** }
%struct.ib_mad_agent = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_mad_send_buf = type { i32, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, %struct.ib_mad*)* @forward_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forward_trap(%struct.mlx4_ib_dev* %0, i32 %1, %struct.ib_mad* %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_send_buf*, align 8
  %9 = alloca %struct.ib_mad_agent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %6, align 8
  %12 = load %struct.ib_mad*, %struct.ib_mad** %6, align 8
  %13 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 2
  %21 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %21, i64 %24
  %26 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %26, i64 %28
  %30 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %29, align 8
  store %struct.ib_mad_agent* %30, %struct.ib_mad_agent** %9, align 8
  %31 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  %32 = icmp ne %struct.ib_mad_agent* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %3
  %34 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %37 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %40 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %34, i32 %35, i32 0, i32 0, i32 %36, i32 %37, i32 %38, i32 %39)
  store %struct.ib_mad_send_buf* %40, %struct.ib_mad_send_buf** %8, align 8
  %41 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %42 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %83

45:                                               ; preds = %33
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %51 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_mad*, %struct.ib_mad** %6, align 8
  %54 = call i32 @memcpy(i32 %52, %struct.ib_mad* %53, i32 8)
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %64 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = icmp ne i32 %62, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %68 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %67, i32* null)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %45
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %81 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %80)
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %44, %82, %3
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ib_mad*, i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
