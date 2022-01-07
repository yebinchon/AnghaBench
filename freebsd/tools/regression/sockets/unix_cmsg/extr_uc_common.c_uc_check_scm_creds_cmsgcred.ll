; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_scm_creds_cmsgcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_scm_creds_cmsgcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.cmsghdr = type { i32 }
%struct.cmsgcred = type { i64, i64, i64, i64, i64, i64* }

@SCM_CREDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cmsgcred.cmcred_pid %ld\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cmsgcred.cmcred_uid %lu\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cmsgcred.cmcred_euid %lu\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cmsgcred.cmcred_gid %lu\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cmsgcred.cmcred_ngroups %d\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"cmsgcred.cmcred_pid %ld != %ld\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"cmsgcred.cmcred_uid %lu != %lu\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"cmsgcred.cmcred_euid %lu != %lu\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"cmsgcred.cmcred_gid %lu != %lu\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"cmsgcred.cmcred_ngroups == 0\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"cmsgcred.cmcred_ngroups %d < 0\00", align 1
@CMGROUP_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"cmsgcred.cmcred_ngroups %d > %d\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"cmsgcred.cmcred_groups[0] %lu != %lu (EGID)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"cmsgcred.cmcred_groups\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cmsgcred.cmcred_ngroups\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_check_scm_creds_cmsgcred(%struct.cmsghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca %struct.cmsgcred*, align 8
  %5 = alloca i32, align 4
  store %struct.cmsghdr* %0, %struct.cmsghdr** %3, align 8
  %6 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %7 = load i32, i32* @SCM_CREDS, align 4
  %8 = call i64 @uc_check_cmsghdr(%struct.cmsghdr* %6, i32 %7, i32 48)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %139

11:                                               ; preds = %1
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %13 = call i64 @CMSG_DATA(%struct.cmsghdr* %12)
  %14 = inttoptr i64 %13 to %struct.cmsgcred*
  store %struct.cmsgcred* %14, %struct.cmsgcred** %4, align 8
  %15 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %16 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %20 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %24 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %28 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %32 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %33)
  store i32 0, i32* %5, align 4
  %35 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %36 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %11
  %41 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %42 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %45 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %43, i64 %44)
  store i32 -1, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %11
  %47 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %48 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %54 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %57 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %55, i64 %56)
  store i32 -1, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %60 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 1), align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %66 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 1), align 8
  %69 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %67, i64 %68)
  store i32 -1, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %72 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 2), align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %78 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 2), align 8
  %81 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %79, i64 %80)
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %84 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %91 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %96 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %97)
  store i32 -1, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %101 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CMGROUP_MAX, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %107 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CMGROUP_MAX, align 8
  %110 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %108, i64 %109)
  store i32 -1, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %113 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %112, i32 0, i32 5
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 3), align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %121 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %120, i32 0, i32 5
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 3), align 8
  %126 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %124, i64 %125)
  store i32 -1, i32* %5, align 4
  br label %127

127:                                              ; preds = %119, %111
  %128 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %129 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %128, i32 0, i32 5
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.cmsgcred*, %struct.cmsgcred** %4, align 8
  %132 = getelementptr inbounds %struct.cmsgcred, %struct.cmsgcred* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @uc_check_groups(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i64 %133, i32 0)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32 -1, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %127
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %10
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @uc_check_cmsghdr(%struct.cmsghdr*, i32, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @uc_dbgmsg(i8*, i64) #1

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i64 @uc_check_groups(i8*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
