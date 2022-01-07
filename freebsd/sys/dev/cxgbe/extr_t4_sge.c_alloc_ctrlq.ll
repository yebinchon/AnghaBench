; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_ctrlq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_6__, %struct.TYPE_4__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sge_wrq = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s ctrlq%d\00", align 1
@EQ_CTRL = common dso_local global i32 0, align 4
@CTRL_EQ_QSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ctrl queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_wrq*, i32, %struct.sysctl_oid*)* @alloc_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ctrlq(%struct.adapter* %0, %struct.sge_wrq* %1, i32 %2, %struct.sysctl_oid* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_wrq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_wrq* %1, %struct.sge_wrq** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sysctl_oid* %3, %struct.sysctl_oid** %8, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @device_get_nameunit(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load %struct.sge_wrq*, %struct.sge_wrq** %6, align 8
  %21 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %20, i32 0, i32 0
  %22 = load i32, i32* @EQ_CTRL, align 4
  %23 = load i32, i32* @CTRL_EQ_QSIZE, align 4
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adapter*, %struct.adapter** %5, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %39 = call i32 @init_eq(%struct.adapter* %19, i32* %21, i32 %22, i32 %23, i32 %32, i32 %37, i8* %38)
  %40 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %41 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %40)
  store %struct.sysctl_oid_list* %41, %struct.sysctl_oid_list** %11, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %11, align 8
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %46, %struct.sysctl_oid_list* %47, i32 %48, i8* %49, i32 %50, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %51, %struct.sysctl_oid** %8, align 8
  %52 = load %struct.adapter*, %struct.adapter** %5, align 8
  %53 = load %struct.sge_wrq*, %struct.sge_wrq** %6, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %55 = call i32 @alloc_wrq(%struct.adapter* %52, i32* null, %struct.sge_wrq* %53, %struct.sysctl_oid* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @init_eq(%struct.adapter*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @alloc_wrq(%struct.adapter*, i32*, %struct.sge_wrq*, %struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
