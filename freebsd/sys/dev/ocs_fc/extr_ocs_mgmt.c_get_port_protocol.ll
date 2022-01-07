; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_port_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_port_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"get_port_protocol\00", align 1
@ocs_mgmt_get_port_protocol_cb = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@MGMT_MODE_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"port_protocol\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iSCSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FCoE\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"getting port profile status 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32*)* @get_port_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_port_protocol(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %12 = call i32 @ocs_sem_init(i32* %11, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @ocs_get_bus_dev_func(%struct.TYPE_8__* %13, i32* %8, i32* %9, i32* %10)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ocs_mgmt_get_port_protocol_cb, align 4
  %19 = call i64 @ocs_hw_get_port_protocol(i32* %16, i32 %17, i32 %18, %struct.TYPE_9__* %7)
  %20 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %24 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %25 = call i64 @ocs_sem_p(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i32 @ocs_log_err(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %53 [
    i32 129, label %37
    i32 130, label %41
    i32 131, label %45
    i32 128, label %49
  ]

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @MGMT_MODE_RW, align 4
  %40 = call i32 @ocs_mgmt_emit_string(i32* %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %53

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @MGMT_MODE_RW, align 4
  %44 = call i32 @ocs_mgmt_emit_string(i32* %42, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %53

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @MGMT_MODE_RW, align 4
  %48 = call i32 @ocs_mgmt_emit_string(i32* %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %53

49:                                               ; preds = %34
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @MGMT_MODE_RW, align 4
  %52 = call i32 @ocs_mgmt_emit_string(i32* %50, i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %34, %49, %45, %41, %37
  br label %62

54:                                               ; preds = %30
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ocs_log_test(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @MGMT_MODE_RW, align 4
  %61 = call i32 @ocs_mgmt_emit_string(i32* %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %54, %53
  br label %63

63:                                               ; preds = %62, %3
  ret void
}

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i32 @ocs_get_bus_dev_func(%struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i64 @ocs_hw_get_port_protocol(i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
