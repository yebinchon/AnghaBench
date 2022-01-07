; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_openshare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_openshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32 }
%struct.smbioc_oshare = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_share = type { i32 }
%struct.smb_sharespec = type { i32 }

@SMBSOPT_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_usr_openshare(%struct.smb_vc* %0, %struct.smbioc_oshare* %1, %struct.smb_cred* %2, %struct.smb_share** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_vc*, align 8
  %7 = alloca %struct.smbioc_oshare*, align 8
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca %struct.smb_share**, align 8
  %10 = alloca %struct.smb_share*, align 8
  %11 = alloca %struct.smb_sharespec, align 4
  %12 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %6, align 8
  store %struct.smbioc_oshare* %1, %struct.smbioc_oshare** %7, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %8, align 8
  store %struct.smb_share** %3, %struct.smb_share*** %9, align 8
  %13 = load %struct.smbioc_oshare*, %struct.smbioc_oshare** %7, align 8
  %14 = call i32 @smb_usr_share2spec(%struct.smbioc_oshare* %13, %struct.smb_sharespec* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %60

19:                                               ; preds = %4
  %20 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %21 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %22 = call i32 @smb_vc_lookupshare(%struct.smb_vc* %20, %struct.smb_sharespec* %11, %struct.smb_cred* %21, %struct.smb_share** %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %27 = load %struct.smb_share**, %struct.smb_share*** %9, align 8
  store %struct.smb_share* %26, %struct.smb_share** %27, align 8
  store i32 0, i32* %5, align 4
  br label %60

28:                                               ; preds = %19
  %29 = load %struct.smbioc_oshare*, %struct.smbioc_oshare** %7, align 8
  %30 = getelementptr inbounds %struct.smbioc_oshare, %struct.smbioc_oshare* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SMBSOPT_CREATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %28
  %38 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %39 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %40 = call i32 @smb_share_create(%struct.smb_vc* %38, %struct.smb_sharespec* %11, %struct.smb_cred* %39, %struct.smb_share** %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %47 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %48 = call i32 @smb_smb_treeconnect(%struct.smb_share* %46, %struct.smb_cred* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %53 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %54 = call i32 @smb_share_put(%struct.smb_share* %52, %struct.smb_cred* %53)
  br label %58

55:                                               ; preds = %45
  %56 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %57 = load %struct.smb_share**, %struct.smb_share*** %9, align 8
  store %struct.smb_share* %56, %struct.smb_share** %57, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %43, %35, %25, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @smb_usr_share2spec(%struct.smbioc_oshare*, %struct.smb_sharespec*) #1

declare dso_local i32 @smb_vc_lookupshare(%struct.smb_vc*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_share**) #1

declare dso_local i32 @smb_share_create(%struct.smb_vc*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_share**) #1

declare dso_local i32 @smb_smb_treeconnect(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_put(%struct.smb_share*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
