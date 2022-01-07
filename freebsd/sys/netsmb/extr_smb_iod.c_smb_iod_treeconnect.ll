; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_treeconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_treeconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbiod = type { i64, i32 }
%struct.smb_share = type { i32, i32 }

@SMBIOD_ST_VCACTIVE = common dso_local global i64 0, align 8
@SMBIOD_ST_DEAD = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SMBIOD_ST_RECONNECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree reconnect\0A\00", align 1
@SMBS_RECONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbiod*, %struct.smb_share*)* @smb_iod_treeconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_iod_treeconnect(%struct.smbiod* %0, %struct.smb_share* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbiod*, align 8
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca i32, align 4
  store %struct.smbiod* %0, %struct.smbiod** %4, align 8
  store %struct.smb_share* %1, %struct.smb_share** %5, align 8
  %7 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %8 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SMBIOD_ST_VCACTIVE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %14 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMBIOD_ST_DEAD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOTCONN, align 4
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %12
  %21 = load i64, i64* @SMBIOD_ST_RECONNECT, align 8
  %22 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %23 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %25 = call i32 @smb_iod_connect(%struct.smbiod* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %2
  %32 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %34 = call i32 @SMBS_ST_LOCK(%struct.smb_share* %33)
  %35 = load i32, i32* @SMBS_RECONNECTING, align 4
  %36 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %37 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %41 = call i32 @SMBS_ST_UNLOCK(%struct.smb_share* %40)
  %42 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %43 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %44 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %43, i32 0, i32 1
  %45 = call i32 @smb_smb_treeconnect(%struct.smb_share* %42, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %47 = call i32 @SMBS_ST_LOCK(%struct.smb_share* %46)
  %48 = load i32, i32* @SMBS_RECONNECTING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %51 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %55 = call i32 @SMBS_ST_UNLOCK(%struct.smb_share* %54)
  %56 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %57 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %56, i32 0, i32 0
  %58 = call i32 @wakeup(i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %31, %28, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @smb_iod_connect(%struct.smbiod*) #1

declare dso_local i32 @SMBIODEBUG(i8*) #1

declare dso_local i32 @SMBS_ST_LOCK(%struct.smb_share*) #1

declare dso_local i32 @SMBS_ST_UNLOCK(%struct.smb_share*) #1

declare dso_local i32 @smb_smb_treeconnect(%struct.smb_share*, i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
