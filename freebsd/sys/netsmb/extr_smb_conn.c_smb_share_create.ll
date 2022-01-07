; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32 }
%struct.smb_sharespec = type { i64, i64, i32, i32, i64*, i64* }
%struct.smb_cred = type { %struct.ucred* }
%struct.ucred = type { i64, i64* }
%struct.smb_share = type { i32, i64, i64, i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMBM_ANY_OWNER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SMBM_ANY_GROUP = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@M_SMBCONN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SMBL_SHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"smbss ilock\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smbss\00", align 1
@smb_share_free = common dso_local global i32 0, align 4
@smb_share_gone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ssstlock\00", align 1
@SMB_TID_UNKNOWN = common dso_local global i32 0, align 4
@SMBM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_share_create(%struct.smb_vc* %0, %struct.smb_sharespec* %1, %struct.smb_cred* %2, %struct.smb_share** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_vc*, align 8
  %7 = alloca %struct.smb_sharespec*, align 8
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca %struct.smb_share**, align 8
  %10 = alloca %struct.smb_share*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %6, align 8
  store %struct.smb_sharespec* %1, %struct.smb_sharespec** %7, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %8, align 8
  store %struct.smb_share** %3, %struct.smb_share*** %9, align 8
  %17 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %18 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %17, i32 0, i32 0
  %19 = load %struct.ucred*, %struct.ucred** %18, align 8
  store %struct.ucred* %19, %struct.ucred** %11, align 8
  %20 = load %struct.ucred*, %struct.ucred** %11, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %24 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %27 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.ucred*, %struct.ucred** %11, align 8
  %30 = call i64 @smb_suser(%struct.ucred* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @SMBM_ANY_OWNER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EPERM, align 4
  store i32 %44, i32* %5, align 4
  br label %159

45:                                               ; preds = %40, %36, %4
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @SMBM_ANY_GROUP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.ucred*, %struct.ucred** %11, align 8
  %52 = call i32 @groupmember(i64 %50, %struct.ucred* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %5, align 4
  br label %159

59:                                               ; preds = %54, %49, %45
  %60 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %61 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %62 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %63 = call i32 @smb_vc_lookupshare(%struct.smb_vc* %60, %struct.smb_sharespec* %61, %struct.smb_cred* %62, %struct.smb_share** %10)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %68 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %69 = call i32 @smb_share_put(%struct.smb_share* %67, %struct.smb_cred* %68)
  %70 = load i32, i32* @EEXIST, align 4
  store i32 %70, i32* %5, align 4
  br label %159

71:                                               ; preds = %59
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @SMBM_ANY_OWNER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @SMBM_ANY_GROUP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.ucred*, %struct.ucred** %11, align 8
  %83 = getelementptr inbounds %struct.ucred, %struct.ucred* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %81, %77
  %88 = load i32, i32* @M_SMBCONN, align 4
  %89 = load i32, i32* @M_WAITOK, align 4
  %90 = call %struct.smb_share* @smb_zmalloc(i32 64, i32 %88, i32 %89)
  store %struct.smb_share* %90, %struct.smb_share** %10, align 8
  %91 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %92 = call i32 @SSTOCP(%struct.smb_share* %91)
  %93 = load i32, i32* @SMBL_SHARE, align 4
  %94 = call i32 @smb_co_init(i32 %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @smb_share_free, align 4
  %96 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %97 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @smb_share_gone, align 4
  %100 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %101 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %104 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %103, i32 0, i32 7
  %105 = call i32 @smb_sl_init(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %107 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %106, i32 0, i32 5
  %108 = load i64*, i64** %107, align 8
  %109 = call i8* @smb_strdup(i64* %108)
  %110 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %111 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %113 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %87
  %117 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %118 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %125 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = call i8* @smb_strdup(i64* %126)
  %128 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %129 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %123, %116, %87
  %131 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %132 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %135 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @SMB_TID_UNKNOWN, align 4
  %137 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %138 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %141 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %144 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.smb_sharespec*, %struct.smb_sharespec** %7, align 8
  %146 = getelementptr inbounds %struct.smb_sharespec, %struct.smb_sharespec* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SMBM_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %151 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %153 = call i32 @VCTOCP(%struct.smb_vc* %152)
  %154 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %155 = call i32 @SSTOCP(%struct.smb_share* %154)
  %156 = call i32 @smb_co_addchild(i32 %153, i32 %155)
  %157 = load %struct.smb_share*, %struct.smb_share** %10, align 8
  %158 = load %struct.smb_share**, %struct.smb_share*** %9, align 8
  store %struct.smb_share* %157, %struct.smb_share** %158, align 8
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %130, %66, %57, %43
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @smb_suser(%struct.ucred*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local i32 @smb_vc_lookupshare(%struct.smb_vc*, %struct.smb_sharespec*, %struct.smb_cred*, %struct.smb_share**) #1

declare dso_local i32 @smb_share_put(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local %struct.smb_share* @smb_zmalloc(i32, i32, i32) #1

declare dso_local i32 @smb_co_init(i32, i32, i8*, i8*) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_sl_init(i32*, i8*) #1

declare dso_local i8* @smb_strdup(i64*) #1

declare dso_local i32 @smb_co_addchild(i32, i32) #1

declare dso_local i32 @VCTOCP(%struct.smb_vc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
