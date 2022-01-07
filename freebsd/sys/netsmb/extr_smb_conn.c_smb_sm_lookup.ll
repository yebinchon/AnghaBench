; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_sm_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_sm_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vcspec = type { i32, %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_sharespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_vc = type { i32 }

@SMBV_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_sm_lookup(%struct.smb_vcspec* %0, %struct.smb_sharespec* %1, %struct.smb_cred* %2, %struct.smb_vc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_vcspec*, align 8
  %7 = alloca %struct.smb_sharespec*, align 8
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca %struct.smb_vc**, align 8
  %10 = alloca %struct.smb_vc*, align 8
  %11 = alloca %struct.smb_share*, align 8
  %12 = alloca i32, align 4
  store %struct.smb_vcspec* %0, %struct.smb_vcspec** %6, align 8
  store %struct.smb_sharespec* %1, %struct.smb_sharespec** %7, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %8, align 8
  store %struct.smb_vc** %3, %struct.smb_vc*** %9, align 8
  store %struct.smb_share* null, %struct.smb_share** %11, align 8
  store %struct.smb_vc* null, %struct.smb_vc** %10, align 8
  %13 = load %struct.smb_vc**, %struct.smb_vc*** %9, align 8
  store %struct.smb_vc* null, %struct.smb_vc** %13, align 8
  %14 = call i32 (...) @smb_sm_lockvclist()
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %104

19:                                               ; preds = %4
  %20 = load %struct.smb_vcspec*, %struct.smb_vcspec** %6, align 8
  %21 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %22 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %23 = load %struct.smb_vc**, %struct.smb_vc*** %9, align 8
  %24 = call i32 @smb_sm_lookupint(%struct.smb_vcspec* %20, %struct.smb_sharespec* %21, %struct.smb_cred* %22, %struct.smb_vc** %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.smb_vcspec*, %struct.smb_vcspec** %6, align 8
  %29 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SMBV_CREATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %19
  %35 = call i32 (...) @smb_sm_unlockvclist()
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %104

37:                                               ; preds = %27
  %38 = load %struct.smb_vcspec*, %struct.smb_vcspec** %6, align 8
  %39 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %40 = call i32 @smb_sm_lookupint(%struct.smb_vcspec* %38, %struct.smb_sharespec* null, %struct.smb_cred* %39, %struct.smb_vc** %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.smb_vcspec*, %struct.smb_vcspec** %6, align 8
  %45 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %46 = call i32 @smb_vc_create(%struct.smb_vcspec* %44, %struct.smb_cred* %45, %struct.smb_vc** %10)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %85

50:                                               ; preds = %43
  %51 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %52 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %53 = call i32 @smb_vc_connect(%struct.smb_vc* %51, %struct.smb_cred* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %85

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %60 = icmp eq %struct.smb_sharespec* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %85

62:                                               ; preds = %58
  %63 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %64 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %65 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %66 = call i32 @smb_share_create(%struct.smb_vc* %63, %struct.smb_sharespec* %64, %struct.smb_cred* %65, %struct.smb_share** %11)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %85

70:                                               ; preds = %62
  %71 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %72 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %73 = call i32 @smb_smb_treeconnect(%struct.smb_share* %71, %struct.smb_cred* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %78 = load %struct.smb_vcspec*, %struct.smb_vcspec** %6, align 8
  %79 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %78, i32 0, i32 1
  store %struct.smb_share* %77, %struct.smb_share** %79, align 8
  br label %84

80:                                               ; preds = %70
  %81 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %82 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %83 = call i32 @smb_share_put(%struct.smb_share* %81, %struct.smb_cred* %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %69, %61, %56, %49
  %86 = call i32 (...) @smb_sm_unlockvclist()
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %91 = load %struct.smb_vc**, %struct.smb_vc*** %9, align 8
  store %struct.smb_vc* %90, %struct.smb_vc** %91, align 8
  br label %102

92:                                               ; preds = %85
  %93 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %94 = icmp ne %struct.smb_vc* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %97 = call i32 @smb_vc_lock(%struct.smb_vc* %96)
  %98 = load %struct.smb_vc*, %struct.smb_vc** %10, align 8
  %99 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %100 = call i32 @smb_vc_put(%struct.smb_vc* %98, %struct.smb_cred* %99)
  br label %101

101:                                              ; preds = %95, %92
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %34, %17
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @smb_sm_lockvclist(...) #1

declare dso_local i32 @smb_sm_lookupint(%struct.smb_vcspec*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_vc**) #1

declare dso_local i32 @smb_sm_unlockvclist(...) #1

declare dso_local i32 @smb_vc_create(%struct.smb_vcspec*, %struct.smb_cred*, %struct.smb_vc**) #1

declare dso_local i32 @smb_vc_connect(%struct.smb_vc*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_create(%struct.smb_vc*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_share**) #1

declare dso_local i32 @smb_smb_treeconnect(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_put(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_vc_lock(%struct.smb_vc*) #1

declare dso_local i32 @smb_vc_put(%struct.smb_vc*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
