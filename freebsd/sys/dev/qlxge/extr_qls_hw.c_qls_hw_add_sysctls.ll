; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_hw_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_hw_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_RX_RINGS = common dso_local global i32 0, align 4
@MAX_TX_RINGS = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"num_rx_rings\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Number of Completion Queues\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"num_tx_rings\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Number of Transmit Rings\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mpi_dump\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@qls_syctl_mpi_dump = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"MPI Dump\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"link_status\00", align 1
@qls_syctl_link_status = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"Link Status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qls_hw_add_sysctls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MAX_RX_RINGS, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @MAX_TX_RINGS, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_sysctl_ctx(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_sysctl_tree(i32 %15)
  %17 = call i32 @SYSCTL_CHILDREN(i32 %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SYSCTL_ADD_UINT(i32 %14, i32 %17, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, i32* %21, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_sysctl_ctx(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_sysctl_tree(i32 %28)
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SYSCTL_ADD_UINT(i32 %27, i32 %30, i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32* %34, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_sysctl_ctx(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_sysctl_tree(i32 %41)
  %43 = call i32 @SYSCTL_CHILDREN(i32 %42)
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLTYPE_INT, align 4
  %46 = load i32, i32* @CTLFLAG_RW, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = bitcast %struct.TYPE_3__* %48 to i8*
  %50 = load i32, i32* @qls_syctl_mpi_dump, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(i32 %40, i32 %43, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %47, i8* %49, i32 0, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_get_sysctl_ctx(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_get_sysctl_tree(i32 %54)
  %56 = call i32 @SYSCTL_CHILDREN(i32 %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLTYPE_INT, align 4
  %59 = load i32, i32* @CTLFLAG_RW, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = bitcast %struct.TYPE_3__* %61 to i8*
  %63 = load i32, i32* @qls_syctl_link_status, align 4
  %64 = call i32 @SYSCTL_ADD_PROC(i32 %53, i32 %56, i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %60, i8* %62, i32 0, i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
