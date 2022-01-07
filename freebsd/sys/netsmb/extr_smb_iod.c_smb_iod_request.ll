; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbiod = type { i32 }
%struct.smbiod_event = type { i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@M_SMBIOD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ev_link = common dso_local global i32 0, align 4
@SMBIOD_EV_SYNC = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"90evw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_iod_request(%struct.smbiod* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbiod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.smbiod_event*, align 8
  %9 = alloca i32, align 4
  store %struct.smbiod* %0, %struct.smbiod** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @M_SMBIOD, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call %struct.smbiod_event* @smb_zmalloc(i32 16, i32 %11, i32 %12)
  store %struct.smbiod_event* %13, %struct.smbiod_event** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %16 = getelementptr inbounds %struct.smbiod_event, %struct.smbiod_event* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %19 = getelementptr inbounds %struct.smbiod_event, %struct.smbiod_event* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %21 = call i32 @SMB_IOD_EVLOCK(%struct.smbiod* %20)
  %22 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %23 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %22, i32 0, i32 0
  %24 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %25 = load i32, i32* @ev_link, align 4
  %26 = call i32 @STAILQ_INSERT_TAIL(i32* %23, %struct.smbiod_event* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SMBIOD_EV_SYNC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %33 = call i32 @SMB_IOD_EVUNLOCK(%struct.smbiod* %32)
  %34 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %35 = call i32 @smb_iod_wakeup(%struct.smbiod* %34)
  store i32 0, i32* %4, align 4
  br label %53

36:                                               ; preds = %3
  %37 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %38 = call i32 @smb_iod_wakeup(%struct.smbiod* %37)
  %39 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %40 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %41 = call i32 @SMB_IOD_EVLOCKPTR(%struct.smbiod* %40)
  %42 = load i32, i32* @PWAIT, align 4
  %43 = load i32, i32* @PDROP, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @msleep(%struct.smbiod_event* %39, i32 %41, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %46 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %47 = getelementptr inbounds %struct.smbiod_event, %struct.smbiod_event* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.smbiod_event*, %struct.smbiod_event** %8, align 8
  %50 = load i32, i32* @M_SMBIOD, align 4
  %51 = call i32 @free(%struct.smbiod_event* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %36, %31
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @SMBIODEBUG(i8*) #1

declare dso_local %struct.smbiod_event* @smb_zmalloc(i32, i32, i32) #1

declare dso_local i32 @SMB_IOD_EVLOCK(%struct.smbiod*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.smbiod_event*, i32) #1

declare dso_local i32 @SMB_IOD_EVUNLOCK(%struct.smbiod*) #1

declare dso_local i32 @smb_iod_wakeup(%struct.smbiod*) #1

declare dso_local i32 @msleep(%struct.smbiod_event*, i32, i32, i8*, i32) #1

declare dso_local i32 @SMB_IOD_EVLOCKPTR(%struct.smbiod*) #1

declare dso_local i32 @free(%struct.smbiod_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
