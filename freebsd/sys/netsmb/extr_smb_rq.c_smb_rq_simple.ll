; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i32, i32, %struct.smb_vc* }
%struct.smb_vc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMB_MAXRCN = common dso_local global i32 0, align 4
@SMBR_RESTART = common dso_local global i32 0, align 4
@SMBRQ_NOTSENT = common dso_local global i32 0, align 4
@SMBR_NORESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rq_simple(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %7 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %8 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %7, i32 0, i32 3
  %9 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  store %struct.smb_vc* %9, %struct.smb_vc** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %54, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SMB_MAXRCN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i32, i32* @SMBR_RESTART, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %19 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %23 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %26 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @SMBRQ_NOTSENT, align 4
  %28 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %29 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %31 = call i32 @smb_rq_enqueue(%struct.smb_rq* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %59

36:                                               ; preds = %15
  %37 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %38 = call i32 @smb_rq_reply(%struct.smb_rq* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %57

42:                                               ; preds = %36
  %43 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %44 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SMBR_RESTART, align 4
  %47 = load i32, i32* @SMBR_NORESTART, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @SMBR_RESTART, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %11

57:                                               ; preds = %52, %41, %11
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %34
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @smb_rq_enqueue(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_reply(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
