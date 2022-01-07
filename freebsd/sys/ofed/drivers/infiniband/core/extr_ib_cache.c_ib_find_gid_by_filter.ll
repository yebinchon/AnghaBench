; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_find_gid_by_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_find_gid_by_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type opaque
%struct.ib_gid_attr.0 = type opaque

@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_gid_by_filter(%struct.ib_device* %0, %union.ib_gid* %1, i32 %2, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store %union.ib_gid* %1, %union.ib_gid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %3, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @rdma_cap_roce_gid_table(%struct.ib_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)*, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)** %11, align 8
  %20 = icmp ne i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EPROTONOSUPPORT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %18, %6
  %25 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %26 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)*, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)** %11, align 8
  %29 = bitcast i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %28 to i32 (%union.ib_gid*, %struct.ib_gid_attr.0*, i8*)*
  %30 = load i8*, i8** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @ib_cache_gid_find_by_filter(%struct.ib_device* %25, %union.ib_gid* %26, i32 %27, i32 (%union.ib_gid*, %struct.ib_gid_attr.0*, i8*)* %29, i8* %30, i32* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @rdma_cap_roce_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_cache_gid_find_by_filter(%struct.ib_device*, %union.ib_gid*, i32, i32 (%union.ib_gid*, %struct.ib_gid_attr.0*, i8*)*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
