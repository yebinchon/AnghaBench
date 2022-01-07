; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_waitrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_waitrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smbiod* }
%struct.smbiod = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMBR_INTERNAL = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"90irq\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"90wrq\00", align 1
@SMBR_MULTIPACKET = common dso_local global i32 0, align 4
@sr_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_iod_waitrq(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.smbiod*, align 8
  %5 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %6 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %7 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.smbiod*, %struct.smbiod** %9, align 8
  store %struct.smbiod* %10, %struct.smbiod** %4, align 8
  %11 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %13 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SMBR_INTERNAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %32, %18
  %20 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %21 = call i32 @smb_iod_sendall(%struct.smbiod* %20)
  %22 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %23 = call i32 @smb_iod_recvall(%struct.smbiod* %22)
  %24 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %25 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %28 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %34 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %33, i32 0, i32 1
  %35 = load i32, i32* @PWAIT, align 4
  %36 = load i32, i32* @hz, align 4
  %37 = call i32 @tsleep(i32* %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %19

38:                                               ; preds = %31
  %39 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %40 = call i32 @smb_iod_removerq(%struct.smb_rq* %39)
  %41 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %42 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %2, align 4
  br label %97

44:                                               ; preds = %1
  %45 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %46 = call i32 @SMBRQ_SLOCK(%struct.smb_rq* %45)
  %47 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %48 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %51 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %56 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %55, i32 0, i32 4
  %57 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %58 = call i32 @SMBRQ_SLOCKPTR(%struct.smb_rq* %57)
  %59 = load i32, i32* @PWAIT, align 4
  %60 = call i32 @msleep(i32* %56, i32 %58, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %63 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %67 = call i32 @SMBRQ_SUNLOCK(%struct.smb_rq* %66)
  %68 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %69 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %5, align 4
  %71 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %72 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SMBR_MULTIPACKET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %61
  %78 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %79 = call i32 @SMB_IOD_RQLOCK(%struct.smbiod* %78)
  %80 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %81 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %80, i32 0, i32 0
  %82 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %83 = load i32, i32* @sr_link, align 4
  %84 = call i32 @TAILQ_REMOVE(i32* %81, %struct.smb_rq* %82, i32 %83)
  %85 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %86 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %85, i32 0, i32 0
  %87 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %88 = load i32, i32* @sr_link, align 4
  %89 = call i32 @TAILQ_INSERT_TAIL(i32* %86, %struct.smb_rq* %87, i32 %88)
  %90 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %91 = call i32 @SMB_IOD_RQUNLOCK(%struct.smbiod* %90)
  br label %95

92:                                               ; preds = %61
  %93 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %94 = call i32 @smb_iod_removerq(%struct.smb_rq* %93)
  br label %95

95:                                               ; preds = %92, %77
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %38
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @SMBIODEBUG(i8*) #1

declare dso_local i32 @smb_iod_sendall(%struct.smbiod*) #1

declare dso_local i32 @smb_iod_recvall(%struct.smbiod*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @smb_iod_removerq(%struct.smb_rq*) #1

declare dso_local i32 @SMBRQ_SLOCK(%struct.smb_rq*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SMBRQ_SLOCKPTR(%struct.smb_rq*) #1

declare dso_local i32 @SMBRQ_SUNLOCK(%struct.smb_rq*) #1

declare dso_local i32 @SMB_IOD_RQLOCK(%struct.smbiod*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.smb_rq*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.smb_rq*, i32) #1

declare dso_local i32 @SMB_IOD_RQUNLOCK(%struct.smbiod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
