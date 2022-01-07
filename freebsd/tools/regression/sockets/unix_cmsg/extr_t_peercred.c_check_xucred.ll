; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_check_xucred.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_check_xucred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.xucred = type { i64, i64, i64, i64* }

@.str = private unnamed_addr constant [29 x i8] c"option value size %zu != %zu\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"xucred.cr_version %u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"xucred.cr_uid %lu\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"xucred.cr_ngroups %d\00", align 1
@XUCRED_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"xucred.cr_version %u != %d\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"xucred.cr_uid %lu != %lu (EUID)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"xucred.cr_ngroups == 0\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"xucred.cr_ngroups < 0\00", align 1
@XU_NGROUPS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"xucred.cr_ngroups %hu > %u (max)\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"xucred.cr_groups[0] %lu != %lu (EGID)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"xucred.cr_groups\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"xucred.cr_ngroups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xucred*, i32)* @check_xucred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_xucred(%struct.xucred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xucred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xucred* %0, %struct.xucred** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 32
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i64 32)
  store i32 -1, i32* %3, align 4
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.xucred*, %struct.xucred** %4, align 8
  %16 = getelementptr inbounds %struct.xucred, %struct.xucred* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load %struct.xucred*, %struct.xucred** %4, align 8
  %20 = getelementptr inbounds %struct.xucred, %struct.xucred* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load %struct.xucred*, %struct.xucred** %4, align 8
  %24 = getelementptr inbounds %struct.xucred, %struct.xucred* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  store i32 0, i32* %6, align 4
  %27 = load %struct.xucred*, %struct.xucred** %4, align 8
  %28 = getelementptr inbounds %struct.xucred, %struct.xucred* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XUCRED_VERSION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load %struct.xucred*, %struct.xucred** %4, align 8
  %34 = getelementptr inbounds %struct.xucred, %struct.xucred* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XUCRED_VERSION, align 8
  %37 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %35, i64 %36)
  store i32 -1, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %14
  %39 = load %struct.xucred*, %struct.xucred** %4, align 8
  %40 = getelementptr inbounds %struct.xucred, %struct.xucred* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.xucred*, %struct.xucred** %4, align 8
  %46 = getelementptr inbounds %struct.xucred, %struct.xucred* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %49 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %47, i64 %48)
  store i32 -1, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.xucred*, %struct.xucred** %4, align 8
  %52 = getelementptr inbounds %struct.xucred, %struct.xucred* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.xucred*, %struct.xucred** %4, align 8
  %59 = getelementptr inbounds %struct.xucred, %struct.xucred* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.xucred*, %struct.xucred** %4, align 8
  %66 = getelementptr inbounds %struct.xucred, %struct.xucred* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XU_NGROUPS, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.xucred*, %struct.xucred** %4, align 8
  %72 = getelementptr inbounds %struct.xucred, %struct.xucred* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @XU_NGROUPS, align 8
  %75 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %73, i64 %74)
  store i32 -1, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.xucred*, %struct.xucred** %4, align 8
  %78 = getelementptr inbounds %struct.xucred, %struct.xucred* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.xucred*, %struct.xucred** %4, align 8
  %86 = getelementptr inbounds %struct.xucred, %struct.xucred* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %91 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i64 %89, i64 %90)
  store i32 -1, i32* %6, align 4
  br label %92

92:                                               ; preds = %84, %76
  %93 = load %struct.xucred*, %struct.xucred** %4, align 8
  %94 = getelementptr inbounds %struct.xucred, %struct.xucred* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.xucred*, %struct.xucred** %4, align 8
  %97 = getelementptr inbounds %struct.xucred, %struct.xucred* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @uc_check_groups(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %98, i32 0)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 -1, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %10
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i32 @uc_dbgmsg(i8*, i64) #1

declare dso_local i64 @uc_check_groups(i8*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
