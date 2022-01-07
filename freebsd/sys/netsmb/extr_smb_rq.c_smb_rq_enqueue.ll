; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.smb_share* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smb_share = type { i32, i32 }

@SMBS_RECONNECTING = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"90trcn\00", align 1
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SMBS_CONNECTED = common dso_local global i32 0, align 4
@SMBIOD_EV_TREECONNECT = common dso_local global i32 0, align 4
@SMBIOD_EV_SYNC = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_rq*)* @smb_rq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_rq_enqueue(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.smb_share*, align 8
  %5 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %6 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %7 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %6, i32 0, i32 2
  %8 = load %struct.smb_share*, %struct.smb_share** %7, align 8
  store %struct.smb_share* %8, %struct.smb_share** %4, align 8
  %9 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %10 = icmp eq %struct.smb_share* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %13 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %16 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = icmp eq %struct.TYPE_4__* %14, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11, %1
  %23 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %24 = call i32 @smb_iod_addrq(%struct.smb_rq* %23)
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %94, %54, %25
  %27 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %28 = call i32 @SMBS_ST_LOCK(%struct.smb_share* %27)
  %29 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %30 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SMBS_RECONNECTING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %37 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %36, i32 0, i32 1
  %38 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %39 = call i32 @SMBS_ST_LOCKPTR(%struct.smb_share* %38)
  %40 = load i32, i32* @PWAIT, align 4
  %41 = load i32, i32* @PDROP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @hz, align 4
  %44 = call i32 @msleep(i32* %37, i32 %39, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %46 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @smb_td_intr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @EINTR, align 4
  store i32 %53, i32* %2, align 4
  br label %97

54:                                               ; preds = %35
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %57 = call i64 @smb_share_valid(%struct.smb_share* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %61 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SMBS_CONNECTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59, %55
  %67 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %68 = call i32 @SMBS_ST_UNLOCK(%struct.smb_share* %67)
  br label %87

69:                                               ; preds = %59
  %70 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %71 = call i32 @SMBS_ST_UNLOCK(%struct.smb_share* %70)
  %72 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %73 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* @SMBIOD_EV_TREECONNECT, align 4
  %78 = load i32, i32* @SMBIOD_EV_SYNC, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %81 = call i32 @smb_iod_request(%struct.TYPE_6__* %76, i32 %79, %struct.smb_share* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %97

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %66
  %88 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %89 = call i32 @smb_iod_addrq(%struct.smb_rq* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @EXDEV, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %95

94:                                               ; preds = %87
  br label %26

95:                                               ; preds = %93
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %84, %52, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @smb_iod_addrq(%struct.smb_rq*) #1

declare dso_local i32 @SMBS_ST_LOCK(%struct.smb_share*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SMBS_ST_LOCKPTR(%struct.smb_share*) #1

declare dso_local i64 @smb_td_intr(i32) #1

declare dso_local i64 @smb_share_valid(%struct.smb_share*) #1

declare dso_local i32 @SMBS_ST_UNLOCK(%struct.smb_share*) #1

declare dso_local i32 @smb_iod_request(%struct.TYPE_6__*, i32, %struct.smb_share*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
