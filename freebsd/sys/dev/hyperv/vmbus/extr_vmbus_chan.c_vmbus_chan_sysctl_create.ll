; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_sysctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_sysctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.sysctl_ctx_list }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"chanid\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"channel id\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"owner CPU id\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mnf\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@vmbus_chan_sysctl_mnf = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"has monitor notification facilities\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @vmbus_chan_sysctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_sysctl_create(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.sysctl_oid*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 7
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %6, align 8
  %11 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %12 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %11)
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  %18 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %13, i32 %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %23, %struct.sysctl_oid** %3, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %25 = icmp eq %struct.sysctl_oid* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %144

27:                                               ; preds = %1
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %29 = call i64 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %27
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @snprintf(i8* %42, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %47 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %45, i32 %47, i32 %48, i8* %49, i32 %52, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %53, %struct.sysctl_oid** %4, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = icmp eq %struct.sysctl_oid* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %144

57:                                               ; preds = %41
  %58 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %59 = call i64 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %100, label %61

61:                                               ; preds = %57
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %62, i32 %64, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %69, %struct.sysctl_oid** %3, align 8
  %70 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %71 = icmp eq %struct.sysctl_oid* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %144

73:                                               ; preds = %61
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %75 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %76 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snprintf(i8* %74, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %81 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %80)
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %79, i32 %81, i32 %82, i8* %83, i32 %86, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %87, %struct.sysctl_oid** %4, align 8
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %89 = icmp eq %struct.sysctl_oid* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %144

91:                                               ; preds = %73
  %92 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %93 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %94 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %98 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %97, i32 0, i32 0
  %99 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %92, i32 %94, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32* %98, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %91, %57
  %101 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %102 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %103 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %102)
  %104 = load i32, i32* @OID_AUTO, align 4
  %105 = load i32, i32* @CTLFLAG_RD, align 4
  %106 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %107 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %106, i32 0, i32 2
  %108 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %101, i32 %103, i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32* %107, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %110 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %111 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %110)
  %112 = load i32, i32* @OID_AUTO, align 4
  %113 = load i32, i32* @CTLTYPE_INT, align 4
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %119 = load i32, i32* @vmbus_chan_sysctl_mnf, align 4
  %120 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %109, i32 %111, i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %117, %struct.vmbus_channel* %118, i32 0, i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %121 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %122 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %123 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %127 = or i32 %125, %126
  %128 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %121, i32 %123, i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %127, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %128, %struct.sysctl_oid** %5, align 8
  %129 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %130 = icmp ne %struct.sysctl_oid* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %100
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %133 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %134 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %135 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = call i32 @vmbus_br_sysctl_create(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid* %133, i32* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %138 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %139 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %140 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %141 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = call i32 @vmbus_br_sysctl_create(%struct.sysctl_ctx_list* %138, %struct.sysctl_oid* %139, i32* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %144

144:                                              ; preds = %26, %56, %72, %90, %131, %100
  ret void
}

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i64 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.vmbus_channel*, i32, i32, i8*, i8*) #1

declare dso_local i32 @vmbus_br_sysctl_create(%struct.sysctl_ctx_list*, %struct.sysctl_oid*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
