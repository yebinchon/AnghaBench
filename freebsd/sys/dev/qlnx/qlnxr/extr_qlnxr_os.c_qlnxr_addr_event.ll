; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_addr_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_addr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }
%union.ib_gid = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Link event occured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, i64, %struct.ifnet*, %union.ib_gid*)* @qlnxr_addr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_addr_event(%struct.qlnxr_dev* %0, i64 %1, %struct.ifnet* %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid, align 4
  %11 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 65535, i32* %11, align 4
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @QL_DPRINT12(%struct.TYPE_2__* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_vlan_dev(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vlan_dev_vlan_id(i32 %29)
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 0, %31 ]
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %6, align 8
  switch i64 %34, label %71 [
    i64 128, label %35
    i64 129, label %53
  ]

35:                                               ; preds = %32
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %37 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %38 = call i32 @qlnxr_add_sgid(%struct.qlnxr_dev* %36, %union.ib_gid* %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %43 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @qlnxr_build_sgid_mac(%union.ib_gid* %10, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %51 = call i32 @qlnxr_add_sgid(%struct.qlnxr_dev* %50, %union.ib_gid* %10)
  br label %52

52:                                               ; preds = %41, %35
  br label %72

53:                                               ; preds = %32
  %54 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %55 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %56 = call i32 @qlnxr_del_sgid(%struct.qlnxr_dev* %54, %union.ib_gid* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %61 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @qlnxr_build_sgid_mac(%union.ib_gid* %10, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %69 = call i32 @qlnxr_del_sgid(%struct.qlnxr_dev* %68, %union.ib_gid* %10)
  br label %70

70:                                               ; preds = %59, %53
  br label %72

71:                                               ; preds = %32
  br label %72

72:                                               ; preds = %71, %70, %52
  ret i32 1
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @is_vlan_dev(i32) #1

declare dso_local i32 @vlan_dev_vlan_id(i32) #1

declare dso_local i32 @qlnxr_add_sgid(%struct.qlnxr_dev*, %union.ib_gid*) #1

declare dso_local i32 @qlnxr_build_sgid_mac(%union.ib_gid*, i32, i32, i32) #1

declare dso_local i32 @qlnxr_del_sgid(%struct.qlnxr_dev*, %union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
