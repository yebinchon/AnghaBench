; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_ib_init_ah_from_mcmember.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_ib_init_ah_from_mcmember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ib_ah_attr = type { %struct.TYPE_2__, i32, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_from_mcmember(%struct.ib_device* %0, i8* %1, %struct.ib_sa_mcmember_rec* %2, %struct.net_device* %3, i32 %4, %struct.ib_ah_attr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_ah_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ib_sa_mcmember_rec* %2, %struct.ib_sa_mcmember_rec** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_ah_attr* %5, %struct.ib_ah_attr** %13, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @rdma_protocol_ib(%struct.ib_device* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.net_device* null, %struct.net_device** %11, align 8
  br label %30

21:                                               ; preds = %6
  %22 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @rdma_protocol_roce(%struct.ib_device* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %97

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %32 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %33 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %32, i32 0, i32 7
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.net_device*, %struct.net_device** %11, align 8
  %37 = call i32 @ib_find_cached_gid_by_port(%struct.ib_device* %31, i32* %33, i32 %34, i8* %35, %struct.net_device* %36, i64* %15)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %97

42:                                               ; preds = %30
  %43 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %44 = call i32 @memset(%struct.ib_ah_attr* %43, i32 0, i32 56)
  %45 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %46 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %50 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %52 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %55 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %58 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %60 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @IB_AH_GRH, align 4
  %65 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %66 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %68 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %71 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load i64, i64* %15, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %76 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %79 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be32_to_cpu(i32 %80)
  %82 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %83 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %86 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %89 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %92 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %95 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %42, %40, %26
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i8*) #1

declare dso_local i32 @rdma_protocol_roce(%struct.ib_device*, i8*) #1

declare dso_local i32 @ib_find_cached_gid_by_port(%struct.ib_device*, i32*, i32, i8*, %struct.net_device*, i64*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
