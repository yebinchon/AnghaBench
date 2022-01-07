; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_find_gid_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_find_gid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i64, i32 }
%struct.find_gid_index_context = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* @find_gid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gid_index(%union.ib_gid* %0, %struct.ib_gid_attr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.find_gid_index_context*, align 8
  store %union.ib_gid* %0, %union.ib_gid** %5, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.find_gid_index_context*
  store %struct.find_gid_index_context* %11, %struct.find_gid_index_context** %9, align 8
  %12 = load %struct.find_gid_index_context*, %struct.find_gid_index_context** %9, align 8
  %13 = getelementptr inbounds %struct.find_gid_index_context, %struct.find_gid_index_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %16 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @rdma_vlan_dev_vlan_id(i32 %23)
  %25 = load %struct.find_gid_index_context*, %struct.find_gid_index_context** %9, align 8
  %26 = getelementptr inbounds %struct.find_gid_index_context, %struct.find_gid_index_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = xor i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 65535
  br label %34

34:                                               ; preds = %31, %20
  %35 = phi i1 [ true, %20 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @rdma_vlan_dev_vlan_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
