; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_port_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_set_port_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_port_protocol\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@OCS_HW_PORT_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@OCS_HW_PORT_PROTOCOL_FC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"fcoe\00", align 1
@OCS_HW_PORT_PROTOCOL_FCOE = common dso_local global i32 0, align 4
@ocs_mgmt_set_port_protocol_cb = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"setting active profile status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*)* @set_port_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_protocol(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i32 @ocs_get_bus_dev_func(%struct.TYPE_8__* %14, i32* %11, i32* %12, i32* %13)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %17 = call i32 @ocs_sem_init(i32* %16, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @ocs_strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @OCS_HW_PORT_PROTOCOL_ISCSI, align 4
  store i32 %22, i32* %10, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @ocs_strcasecmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @OCS_HW_PORT_PROTOCOL_FC, align 4
  store i32 %28, i32* %10, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @ocs_strcasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @OCS_HW_PORT_PROTOCOL_FCOE, align 4
  store i32 %34, i32* %10, align 4
  br label %36

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %71

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ocs_mgmt_set_port_protocol_cb, align 4
  %44 = call i32 @ocs_hw_set_port_protocol(i32* %40, i32 %41, i32 %42, i32 %43, %struct.TYPE_9__* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %50 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %51 = call i64 @ocs_sem_p(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @ocs_log_err(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %68

63:                                               ; preds = %58
  store i32 -1, i32* %9, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ocs_log_test(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %63, %62
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %53, %35
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ocs_get_bus_dev_func(%struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i64 @ocs_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ocs_hw_set_port_protocol(i32*, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
