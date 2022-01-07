; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_os.c_qls_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_os.c_qls_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ver_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Driver Version\00", align 1
@qls_dbg_level = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Debug Level\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"drvr_stats\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@qls_sysctl_get_drvr_stats = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Driver Maintained Statistics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qls_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qls_add_sysctls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_sysctl_ctx(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_sysctl_tree(i32 %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load i32, i32* @ver_str, align 4
  %15 = call i32 @SYSCTL_ADD_STRING(i32 %8, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @qls_dbg_level, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_sysctl_ctx(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_sysctl_tree(i32 %18)
  %20 = call i32 @SYSCTL_CHILDREN(i32 %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = load i64, i64* @qls_dbg_level, align 8
  %24 = call i32 @SYSCTL_ADD_UINT(i32 %17, i32 %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %22, i64* @qls_dbg_level, i64 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_sysctl_ctx(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_sysctl_tree(i32 %27)
  %29 = call i32 @SYSCTL_CHILDREN(i32 %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_INT, align 4
  %32 = load i32, i32* @CTLFLAG_RW, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = bitcast %struct.TYPE_3__* %34 to i8*
  %36 = load i32, i32* @qls_sysctl_get_drvr_stats, align 4
  %37 = call i32 @SYSCTL_ADD_PROC(i32 %26, i32 %29, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %33, i8* %35, i32 0, i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_STRING(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i64*, i64, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
