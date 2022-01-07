; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_cmpshare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_cmpshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i64, i64, i32, i32 }
%struct.smb_sharespec = type { i64, i64, i32, i32, i32 }

@SMBM_ANY_OWNER = common dso_local global i64 0, align 8
@SMBM_ANY_GROUP = common dso_local global i64 0, align 8
@SMBM_EXACT = common dso_local global i32 0, align 4
@SMBM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, %struct.smb_sharespec*)* @smb_vc_cmpshare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_vc_cmpshare(%struct.smb_share* %0, %struct.smb_sharespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_share*, align 8
  %5 = alloca %struct.smb_sharespec*, align 8
  %6 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %4, align 8
  store %struct.smb_sharespec* %1, %struct.smb_sharespec** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %8 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %11 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strcmp(i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %18 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SMBM_ANY_OWNER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %24 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %27 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %85

31:                                               ; preds = %22
  br label %33

32:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %35 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SMBM_ANY_GROUP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %41 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %44 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %85

48:                                               ; preds = %39
  br label %50

49:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %52 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SMBM_EXACT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %85

61:                                               ; preds = %57
  %62 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %63 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SMBM_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %68 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 1
  store i32 %72, i32* %3, align 4
  br label %85

73:                                               ; preds = %50
  %74 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %75 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %76 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.smb_sharespec*, %struct.smb_sharespec** %5, align 8
  %79 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @smb_share_access(%struct.smb_share* %74, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %61, %60, %47, %30, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @smb_share_access(%struct.smb_share*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
