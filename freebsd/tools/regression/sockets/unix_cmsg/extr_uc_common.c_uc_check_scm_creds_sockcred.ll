; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_scm_creds_sockcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_scm_creds_sockcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.cmsghdr = type { i32 }
%struct.sockcred = type { i64, i64, i64, i64, i64, i32 }

@SCM_CREDS = common dso_local global i32 0, align 4
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"sockcred.sc_uid %lu\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sockcred.sc_euid %lu\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sockcred.sc_gid %lu\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sockcred.sc_egid %lu\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"sockcred.sc_ngroups %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sockcred.sc_uid %lu != %lu\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"sockcred.sc_euid %lu != %lu\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"sockcred.sc_gid %lu != %lu\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"sockcred.sc_egid %lu != %lu\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"sockcred.sc_ngroups == 0\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"sockcred.sc_ngroups %d < 0\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"sockcred.sc_ngroups %d != %u\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"sockcred.sc_groups\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"sockcred.sc_ngroups\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_check_scm_creds_sockcred(%struct.cmsghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca %struct.sockcred*, align 8
  %5 = alloca i32, align 4
  store %struct.cmsghdr* %0, %struct.cmsghdr** %3, align 8
  %6 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %7 = load i32, i32* @SCM_CREDS, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %9 = call i32 @SOCKCREDSIZE(i64 %8)
  %10 = call i64 @uc_check_cmsghdr(%struct.cmsghdr* %6, i32 %7, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %125

13:                                               ; preds = %1
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %15 = call i64 @CMSG_DATA(%struct.cmsghdr* %14)
  %16 = inttoptr i64 %15 to %struct.sockcred*
  store %struct.sockcred* %16, %struct.sockcred** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %18 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %22 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %26 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %30 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  %33 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %34 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %35)
  %37 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %38 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %13
  %43 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %44 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %47 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %45, i64 %46)
  store i32 -1, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %13
  %49 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %50 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 2), align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %56 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 2), align 8
  %59 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %57, i64 %58)
  store i32 -1, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %62 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 3), align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %68 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 3), align 8
  %71 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %69, i64 %70)
  store i32 -1, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %74 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 4), align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %80 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 4), align 8
  %83 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %81, i64 %82)
  store i32 -1, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %86 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %93 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %98 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %99)
  store i32 -1, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %103 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %109 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %112 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i64 %110, i64 %111)
  store i32 -1, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %115 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sockcred*, %struct.sockcred** %4, align 8
  %118 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @uc_check_groups(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %119, i32 1)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 -1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %113
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @uc_check_cmsghdr(%struct.cmsghdr*, i32, i32) #1

declare dso_local i32 @SOCKCREDSIZE(i64) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @uc_dbgmsg(i8*, i64) #1

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i64 @uc_check_groups(i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
