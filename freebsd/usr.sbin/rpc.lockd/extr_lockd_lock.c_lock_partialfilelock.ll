; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_lock_partialfilelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_lock_partialfilelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Entering lock_partialfilelock\0A\00", align 1
@PFL_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"HW GRANTED\0A\00", align 1
@PFL_GRANTED_DUPLICATE = common dso_local global i32 0, align 4
@PFL_GRANTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"HW RESERR\0A\00", align 1
@PFL_HWRESERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"HW DENIED\0A\00", align 1
@PFL_HWDENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unmatched hwstatus %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Deleting trial NFS lock\0A\00", align 1
@PFL_NFSDENIED = common dso_local global i32 0, align 4
@PFL_NFSRESERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Unmatched lnlstatus %d\0A\00", align 1
@PFL_NFSDENIED_NOLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"BLOCKING LOCK RECEIVED\0A\00", align 1
@PFL_NFSBLOCKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"BLOCKING LOCK DENIED IN HARDWARE\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Lock denied.  Non-blocking failure\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Exiting lock_partialfilelock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_partialfilelock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %6 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @PFL_DENIED, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %9 = call i32 @lock_nfslock(%struct.file_lock* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %54 [
    i32 130, label %11
    i32 129, label %11
    i32 131, label %50
    i32 128, label %52
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %13 = call i32 @lock_hwlock(%struct.file_lock* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %34 [
    i32 134, label %15
    i32 133, label %15
    i32 132, label %28
    i32 135, label %31
  ]

15:                                               ; preds = %11, %11
  %16 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PFL_GRANTED_DUPLICATE, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @PFL_GRANTED, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @monitor_lock_host(i32 %26)
  br label %37

28:                                               ; preds = %11
  %29 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @PFL_HWRESERR, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %11
  %32 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @PFL_HWDENIED, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %11
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %31, %28, %23
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PFL_GRANTED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PFL_GRANTED_DUPLICATE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %48 = call i32 @delete_nfslock(%struct.file_lock* %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  br label %57

50:                                               ; preds = %1
  %51 = load i32, i32* @PFL_NFSDENIED, align 4
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %1
  %53 = load i32, i32* @PFL_NFSRESERR, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %1
  %55 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32, i32* @PFL_NFSDENIED_NOLOCK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %52, %50, %49
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @PFL_NFSDENIED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @PFL_HWDENIED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61, %57
  %66 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %67 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @PFL_NFSDENIED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32, i32* @PFL_NFSBLOCKED, align 4
  store i32 %76, i32* %3, align 4
  %77 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %78 = call i32 @add_blockingfilelock(%struct.file_lock* %77)
  %79 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %80 = call i32 @dump_filelock(%struct.file_lock* %79)
  br label %85

81:                                               ; preds = %70
  %82 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %83 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %84 = call i32 @dump_filelock(%struct.file_lock* %83)
  br label %85

85:                                               ; preds = %81, %74
  br label %90

86:                                               ; preds = %65
  %87 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %89 = call i32 @dump_filelock(%struct.file_lock* %88)
  br label %90

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90, %61
  %92 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @debuglog(i8*, ...) #1

declare dso_local i32 @lock_nfslock(%struct.file_lock*) #1

declare dso_local i32 @lock_hwlock(%struct.file_lock*) #1

declare dso_local i32 @monitor_lock_host(i32) #1

declare dso_local i32 @delete_nfslock(%struct.file_lock*) #1

declare dso_local i32 @add_blockingfilelock(%struct.file_lock*) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
