; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_find_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_find_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.ib_gid = type { i32 }
%struct.net_device = type { i32 }

@IB_GID_TYPE_IB = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_gid(%struct.ib_device* %0, %union.ib_gid* %1, i32 %2, %struct.net_device* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.ib_gid, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store %union.ib_gid* %1, %union.ib_gid** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %19 = call i32 @rdma_start_port(%struct.ib_device* %18)
  store i32 %19, i32* %16, align 4
  br label %20

20:                                               ; preds = %87, %6
  %21 = load i32, i32* %16, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %23 = call i32 @rdma_end_port(%struct.ib_device* %22)
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %20
  %26 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %27 = load i32, i32* %16, align 4
  %28 = call i64 @rdma_cap_roce_gid_table(%struct.ib_device* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %32 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @ib_find_cached_gid_by_port(%struct.ib_device* %31, %union.ib_gid* %32, i32 %33, i32 %34, %struct.net_device* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %7, align 4
  br label %93

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @IB_GID_TYPE_IB, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %87

48:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %52 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %50, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %49
  %61 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @ib_query_gid(%struct.ib_device* %61, i32 %62, i32 %63, %union.ib_gid* %14, i32* null)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %7, align 4
  br label %93

69:                                               ; preds = %60
  %70 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %71 = call i32 @memcmp(%union.ib_gid* %14, %union.ib_gid* %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %17, align 4
  %80 = load i32*, i32** %13, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %73
  store i32 0, i32* %7, align 4
  br label %93

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %49

86:                                               ; preds = %49
  br label %87

87:                                               ; preds = %86, %47
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %20

90:                                               ; preds = %20
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %81, %67, %39
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_cap_roce_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_find_cached_gid_by_port(%struct.ib_device*, %union.ib_gid*, i32, i32, %struct.net_device*, i32*) #1

declare dso_local i32 @ib_query_gid(%struct.ib_device*, i32, i32, %union.ib_gid*, i32*) #1

declare dso_local i32 @memcmp(%union.ib_gid*, %union.ib_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
