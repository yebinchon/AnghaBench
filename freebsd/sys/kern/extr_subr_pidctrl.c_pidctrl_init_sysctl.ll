; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_init_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_init_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Current difference from setpoint value (P)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"olderror\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error value from last interval\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"integral\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Accumulated error integral (I)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"derivative\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Error derivative (D)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Last controller process variable input\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Last controller output\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ticks\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Last controller runtime\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"setpoint\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"Desired level for process variable\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Interval between calculations (ticks)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bound\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Integral wind-up limit\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"kpd\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Inverse of proportional gain\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"kid\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Inverse of integral gain\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"kdd\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Inverse of derivative gain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pidctrl_init_sysctl(%struct.pidctrl* %0, %struct.sysctl_oid_list* %1) #0 {
  %3 = alloca %struct.pidctrl*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.pidctrl* %0, %struct.pidctrl** %3, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %4, align 8
  %5 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %6 = load i32, i32* @OID_AUTO, align 4
  %7 = load i32, i32* @CTLFLAG_RD, align 4
  %8 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %9 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %8, i32 0, i32 12
  %10 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %5, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %9, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %15 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %14, i32 0, i32 11
  %16 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32* %15, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %21 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %20, i32 0, i32 10
  %22 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32* %21, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %23 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLFLAG_RD, align 4
  %26 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %27 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %26, i32 0, i32 9
  %28 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %23, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %25, i32* %27, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLFLAG_RD, align 4
  %32 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %33 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %32, i32 0, i32 8
  %34 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %31, i32* %33, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RD, align 4
  %38 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %39 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %38, i32 0, i32 7
  %40 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %37, i32* %39, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %45 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %44, i32 0, i32 6
  %46 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %43, i32* %45, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %47 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RW, align 4
  %50 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %51 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %50, i32 0, i32 5
  %52 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %47, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %49, i32* %51, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %57 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %56, i32 0, i32 4
  %58 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %55, i32* %57, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RW, align 4
  %62 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %63 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %62, i32 0, i32 3
  %64 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %61, i32* %63, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RW, align 4
  %68 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %69 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %68, i32 0, i32 2
  %70 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %65, i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %67, i32* %69, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RW, align 4
  %74 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %75 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %74, i32 0, i32 1
  %76 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %71, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %73, i32* %75, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RW, align 4
  %80 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %81 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %80, i32 0, i32 0
  %82 = call i32 @SYSCTL_ADD_INT(i32* null, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 %79, i32* %81, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_INT(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
