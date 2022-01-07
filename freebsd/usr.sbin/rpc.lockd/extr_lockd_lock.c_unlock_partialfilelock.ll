; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_unlock_partialfilelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_unlock_partialfilelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Entering unlock_partialfilelock\0A\00", align 1
@PFL_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Value of releasedfl: %p\0A\00", align 1
@HW_GRANTED_DUPLICATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"HW duplicate lock failure for left split\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"HW duplicate lock failure for right split\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"NFS unlock granted.  Attempting hardware unlock\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"HW unlock returned with code %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"HW unlock granted\0A\00", align 1
@PFL_GRANTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"HW unlock denied no lock\0A\00", align 1
@PFL_HWRESERR = common dso_local global i32 0, align 4
@NFS_RESERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"HW unlock failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Exiting with status retval: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"All locks cleaned out\0A\00", align 1
@PFL_NFSRESERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"NFS unlock failure\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Attempt to unlock self\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"WARNING!  Destroying incoming lock pointer\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Exiting unlock_partialfilelock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unlock_partialfilelock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %11 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.file_lock* null, %struct.file_lock** %6, align 8
  store %struct.file_lock* null, %struct.file_lock** %3, align 8
  store %struct.file_lock* null, %struct.file_lock** %4, align 8
  store %struct.file_lock* null, %struct.file_lock** %5, align 8
  %12 = load i32, i32* @PFL_DENIED, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %108, %1
  %14 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %15 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.file_lock* %14)
  %16 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %17 = call i32 @unlock_nfslock(%struct.file_lock* %16, %struct.file_lock** %5, %struct.file_lock** %3, %struct.file_lock** %4)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %19 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.file_lock* %18)
  %20 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %21 = icmp ne %struct.file_lock* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  %23 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %24 = call i32 @lock_hwlock(%struct.file_lock* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 130
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @HW_GRANTED_DUPLICATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27, %22
  %34 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @monitor_lock_host(i32 %36)
  br label %38

38:                                               ; preds = %33, %13
  %39 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %40 = icmp ne %struct.file_lock* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %43 = call i32 @lock_hwlock(%struct.file_lock* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 130
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @HW_GRANTED_DUPLICATE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46, %41
  %53 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @monitor_lock_host(i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %88 [
    i32 128, label %59
    i32 129, label %85
  ]

59:                                               ; preds = %57
  %60 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %62 = call i32 @unlock_hwlock(%struct.file_lock* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %77 [
    i32 130, label %66
    i32 131, label %73
  ]

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @unmonitor_lock_host(i32 %70)
  %72 = load i32, i32* @PFL_GRANTED, align 4
  store i32 %72, i32* %7, align 4
  br label %81

73:                                               ; preds = %59
  %74 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i32, i32* @PFL_HWRESERR, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @NFS_RESERR, align 4
  store i32 %76, i32* %8, align 4
  br label %81

77:                                               ; preds = %59
  %78 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* @PFL_HWRESERR, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @NFS_RESERR, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %73, %66
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  %84 = call i32 (...) @retry_blockingfilelocklist()
  br label %93

85:                                               ; preds = %57
  %86 = load i32, i32* @PFL_GRANTED, align 4
  store i32 %86, i32* %7, align 4
  %87 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %93

88:                                               ; preds = %57
  %89 = load i32, i32* @PFL_NFSRESERR, align 4
  store i32 %89, i32* %7, align 4
  %90 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %91 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %92 = call i32 @dump_filelock(%struct.file_lock* %91)
  br label %93

93:                                               ; preds = %88, %85, %81
  %94 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %95 = icmp ne %struct.file_lock* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %98 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %99 = icmp eq %struct.file_lock* %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %102 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  store %struct.file_lock* %102, %struct.file_lock** %6, align 8
  br label %106

103:                                              ; preds = %96
  %104 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %105 = call i32 @deallocate_file_lock(%struct.file_lock* %104)
  store %struct.file_lock* null, %struct.file_lock** %5, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %13, label %111

111:                                              ; preds = %108
  %112 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %113 = icmp ne %struct.file_lock* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %116 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %117 = call i32 @deallocate_file_lock(%struct.file_lock* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @debuglog(i8*, ...) #1

declare dso_local i32 @unlock_nfslock(%struct.file_lock*, %struct.file_lock**, %struct.file_lock**, %struct.file_lock**) #1

declare dso_local i32 @lock_hwlock(%struct.file_lock*) #1

declare dso_local i32 @monitor_lock_host(i32) #1

declare dso_local i32 @unlock_hwlock(%struct.file_lock*) #1

declare dso_local i32 @unmonitor_lock_host(i32) #1

declare dso_local i32 @retry_blockingfilelocklist(...) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

declare dso_local i32 @deallocate_file_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
