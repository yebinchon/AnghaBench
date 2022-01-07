; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_fwq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_fwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.sge_iq }
%struct.sge_iq = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@FW_IQ_QSIZE = common dso_local global i32 0, align 4
@IS_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to create firmware event queue: %d\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fwq\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"firmware event queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @alloc_fwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_fwq(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_iq*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.sge_iq* %11, %struct.sge_iq** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %14)
  store %struct.sysctl_oid* %15, %struct.sysctl_oid** %7, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %8, align 8
  %18 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @FW_IQ_QSIZE, align 4
  %21 = call i32 @init_iq(%struct.sge_iq* %18, %struct.adapter* %19, i32 0, i32 0, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IS_VF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %28
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @alloc_iq_fl(i32* %44, %struct.sge_iq* %45, i32* null, i32 %46, i32 -1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %36
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 2
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %59, %struct.sysctl_oid_list* %60, i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %63, %struct.sysctl_oid** %7, align 8
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 2
  %66 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %67 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %68 = call i32 @add_iq_sysctls(i32* %65, %struct.sysctl_oid* %66, %struct.sge_iq* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %57, %50
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @init_iq(%struct.sge_iq*, %struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @alloc_iq_fl(i32*, %struct.sge_iq*, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @add_iq_sysctls(i32*, %struct.sysctl_oid*, %struct.sge_iq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
