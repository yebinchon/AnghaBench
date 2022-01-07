; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbioc_lookup = type { i64, i32, i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smb_vc = type { i32 }
%struct.smb_share = type { i32 }
%struct.smb_vcspec = type { %struct.smb_share*, i32 }
%struct.smb_sharespec = type { i32 }

@SMBL_VC = common dso_local global i64 0, align 8
@SMBL_SHARE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SMBLK_CREATE = common dso_local global i32 0, align 4
@SMBV_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_usr_lookup(%struct.smbioc_lookup* %0, %struct.smb_cred* %1, %struct.smb_vc** %2, %struct.smb_share** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbioc_lookup*, align 8
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_vc**, align 8
  %9 = alloca %struct.smb_share**, align 8
  %10 = alloca %struct.smb_vc*, align 8
  %11 = alloca %struct.smb_vcspec, align 8
  %12 = alloca %struct.smb_sharespec, align 4
  %13 = alloca %struct.smb_sharespec*, align 8
  %14 = alloca i32, align 4
  store %struct.smbioc_lookup* %0, %struct.smbioc_lookup** %6, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %7, align 8
  store %struct.smb_vc** %2, %struct.smb_vc*** %8, align 8
  store %struct.smb_share** %3, %struct.smb_share*** %9, align 8
  store %struct.smb_vc* null, %struct.smb_vc** %10, align 8
  store %struct.smb_sharespec* null, %struct.smb_sharespec** %13, align 8
  %15 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %16 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SMBL_VC, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %22 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SMBL_SHARE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %30 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %29, i32 0, i32 3
  %31 = call i32 @smb_usr_vc2spec(i32* %30, %struct.smb_vcspec* %11)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %28
  %37 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %38 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SMBLK_CREATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @SMBV_CREATE, align 4
  %45 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %50 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SMBL_SHARE, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.smbioc_lookup*, %struct.smbioc_lookup** %6, align 8
  %56 = getelementptr inbounds %struct.smbioc_lookup, %struct.smbioc_lookup* %55, i32 0, i32 2
  %57 = call i32 @smb_usr_share2spec(i32* %56, %struct.smb_sharespec* %12)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %75

61:                                               ; preds = %54
  store %struct.smb_sharespec* %12, %struct.smb_sharespec** %13, align 8
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.smb_sharespec*, %struct.smb_sharespec** %13, align 8
  %64 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %65 = call i32 @smb_sm_lookup(%struct.smb_vcspec* %11, %struct.smb_sharespec* %63, %struct.smb_cred* %64, %struct.smb_vc** %10)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %70 = load %struct.smb_vc**, %struct.smb_vc*** %8, align 8
  store %struct.smb_vc* %69, %struct.smb_vc** %70, align 8
  %71 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %11, i32 0, i32 0
  %72 = load %struct.smb_share*, %struct.smb_share** %71, align 8
  %73 = load %struct.smb_share**, %struct.smb_share*** %9, align 8
  store %struct.smb_share* %72, %struct.smb_share** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %60
  %76 = call i32 @smb_usr_vcspec_free(%struct.smb_vcspec* %11)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %34, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @smb_usr_vc2spec(i32*, %struct.smb_vcspec*) #1

declare dso_local i32 @smb_usr_share2spec(i32*, %struct.smb_sharespec*) #1

declare dso_local i32 @smb_sm_lookup(%struct.smb_vcspec*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_vc**) #1

declare dso_local i32 @smb_usr_vcspec_free(%struct.smb_vcspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
