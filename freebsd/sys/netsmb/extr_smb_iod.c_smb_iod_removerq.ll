; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_removerq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_removerq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, %struct.smb_vc* }
%struct.smb_vc = type { %struct.smbiod* }
%struct.smbiod = type { i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMBR_INTERNAL = common dso_local global i32 0, align 4
@sr_link = common dso_local global i32 0, align 4
@SMBR_XLOCK = common dso_local global i32 0, align 4
@SMBR_XLOCKWANT = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"90xrm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_iod_removerq(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.smbiod*, align 8
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %6 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %7 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %6, i32 0, i32 1
  %8 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  store %struct.smb_vc* %8, %struct.smb_vc** %4, align 8
  %9 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %10 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %9, i32 0, i32 0
  %11 = load %struct.smbiod*, %struct.smbiod** %10, align 8
  store %struct.smbiod* %11, %struct.smbiod** %5, align 8
  %12 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %14 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SMBR_INTERNAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %21 = call i32 @SMB_IOD_RQLOCK(%struct.smbiod* %20)
  %22 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %23 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %22, i32 0, i32 2
  %24 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %25 = load i32, i32* @sr_link, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* %23, %struct.smb_rq* %24, i32 %25)
  %27 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %28 = call i32 @SMB_IOD_RQUNLOCK(%struct.smbiod* %27)
  store i32 0, i32* %2, align 4
  br label %75

29:                                               ; preds = %1
  %30 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %31 = call i32 @SMB_IOD_RQLOCK(%struct.smbiod* %30)
  br label %32

32:                                               ; preds = %39, %29
  %33 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %34 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SMBR_XLOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load i32, i32* @SMBR_XLOCKWANT, align 4
  %41 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %42 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %46 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %47 = call i32 @SMB_IOD_RQLOCKPTR(%struct.smbiod* %46)
  %48 = load i32, i32* @PWAIT, align 4
  %49 = call i32 @msleep(%struct.smb_rq* %45, i32 %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %52 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %51, i32 0, i32 2
  %53 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %54 = load i32, i32* @sr_link, align 4
  %55 = call i32 @TAILQ_REMOVE(i32* %52, %struct.smb_rq* %53, i32 %54)
  %56 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %57 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %61 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %66 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %70 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %69, i32 0, i32 0
  %71 = call i32 @wakeup(i64* %70)
  br label %72

72:                                               ; preds = %64, %50
  %73 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %74 = call i32 @SMB_IOD_RQUNLOCK(%struct.smbiod* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %19
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @SMBIODEBUG(i8*) #1

declare dso_local i32 @SMB_IOD_RQLOCK(%struct.smbiod*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.smb_rq*, i32) #1

declare dso_local i32 @SMB_IOD_RQUNLOCK(%struct.smbiod*) #1

declare dso_local i32 @msleep(%struct.smb_rq*, i32, i32, i8*, i32) #1

declare dso_local i32 @SMB_IOD_RQLOCKPTR(%struct.smbiod*) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
