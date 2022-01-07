; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_add_sgids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_add_sgids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%union.ib_gid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*)* @qlnxr_add_sgids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_add_sgids(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca %struct.qlnxr_dev*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ib_gid, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %2, align 8
  %7 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @qlnxr_add_ip_based_gid(%struct.qlnxr_dev* %10, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @is_vlan_dev(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vlan_dev_vlan_id(i32 %24)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @qlnxr_build_sgid_mac(%union.ib_gid* %6, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %36 = call i32 @qlnxr_add_sgid(%struct.qlnxr_dev* %35, %union.ib_gid* %6)
  ret void
}

declare dso_local i32 @qlnxr_add_ip_based_gid(%struct.qlnxr_dev*, i32) #1

declare dso_local i32 @is_vlan_dev(i32) #1

declare dso_local i32 @vlan_dev_vlan_id(i32) #1

declare dso_local i32 @qlnxr_build_sgid_mac(%union.ib_gid*, i32, i32, i32) #1

declare dso_local i32 @qlnxr_add_sgid(%struct.qlnxr_dev*, %union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
