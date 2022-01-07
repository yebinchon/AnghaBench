; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_opensession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_opensession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbioc_ossn = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_vc = type { i32 }
%struct.smb_vcspec = type { i32 }

@SMBVOPT_CREATE = common dso_local global i32 0, align 4
@SMBV_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_usr_opensession(%struct.smbioc_ossn* %0, %struct.smb_cred* %1, %struct.smb_vc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbioc_ossn*, align 8
  %6 = alloca %struct.smb_cred*, align 8
  %7 = alloca %struct.smb_vc**, align 8
  %8 = alloca %struct.smb_vc*, align 8
  %9 = alloca %struct.smb_vcspec, align 4
  %10 = alloca i32, align 4
  store %struct.smbioc_ossn* %0, %struct.smbioc_ossn** %5, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %6, align 8
  store %struct.smb_vc** %2, %struct.smb_vc*** %7, align 8
  store %struct.smb_vc* null, %struct.smb_vc** %8, align 8
  %11 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %5, align 8
  %12 = call i32 @smb_usr_vc2spec(%struct.smbioc_ossn* %11, %struct.smb_vcspec* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %5, align 8
  %19 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SMBVOPT_CREATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @SMBV_CREATE, align 4
  %26 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.smb_cred*, %struct.smb_cred** %6, align 8
  %31 = call i32 @smb_sm_lookup(%struct.smb_vcspec* %9, i32* null, %struct.smb_cred* %30, %struct.smb_vc** %8)
  store i32 %31, i32* %10, align 4
  %32 = call i32 @smb_usr_vcspec_free(%struct.smb_vcspec* %9)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @smb_usr_vc2spec(%struct.smbioc_ossn*, %struct.smb_vcspec*) #1

declare dso_local i32 @smb_sm_lookup(%struct.smb_vcspec*, i32*, %struct.smb_cred*, %struct.smb_vc**) #1

declare dso_local i32 @smb_usr_vcspec_free(%struct.smb_vcspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
