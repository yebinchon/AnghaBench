; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_active_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_active_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@MAX_PROFILE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"get_active_profile\00", align 1
@ocs_mgmt_get_active_profile_cb = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@MGMT_MODE_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"active_profile\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"getting active profile status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32*)* @get_active_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_active_profile(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @MAX_PROFILE_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %15 = call i32 @ocs_sem_init(i32* %14, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* @ocs_mgmt_get_active_profile_cb, align 4
  %19 = call i64 @ocs_hw_get_active_profile(i32* %17, i32 %18, %struct.TYPE_8__* %9)
  %20 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %24 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %25 = call i64 @ocs_sem_p(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 @ocs_log_err(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @MGMT_MODE_RW, align 4
  %40 = call i32 @ocs_mgmt_emit_string(i32* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ocs_log_test(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #2

declare dso_local i64 @ocs_hw_get_active_profile(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i64 @ocs_sem_p(i32*, i32) #2

declare dso_local i32 @ocs_log_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i8*) #2

declare dso_local i32 @ocs_log_test(%struct.TYPE_7__*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
