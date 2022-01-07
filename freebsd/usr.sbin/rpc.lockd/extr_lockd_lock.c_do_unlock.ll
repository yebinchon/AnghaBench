; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Entering do_unlock...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PFL unlock granted\00", align 1
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"PFL_NFS unlock denied\00", align 1
@nlm4_denied = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"PFL_NFS no lock found\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"PFL unlock resource failure\00", align 1
@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@nlm_denied_nolocks = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"PFL unlock *FAILED*\00", align 1
@nlm4_failed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Exiting do_unlock...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_unlock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %5 = call i32 @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %7 = call i32 @unlock_partialfilelock(%struct.file_lock* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %71 [
    i32 134, label %9
    i32 130, label %25
    i32 133, label %25
    i32 129, label %41
    i32 132, label %41
    i32 128, label %55
    i32 131, label %55
  ]

9:                                                ; preds = %1
  %10 = call i32 @debuglog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %12 = call i32 @dump_filelock(%struct.file_lock* %11)
  %13 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LOCK_V4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load i32, i32* @nlm4_granted, align 4
  br label %23

21:                                               ; preds = %9
  %22 = load i32, i32* @nlm_granted, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %4, align 4
  br label %87

25:                                               ; preds = %1, %1
  %26 = call i32 @debuglog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %28 = call i32 @dump_filelock(%struct.file_lock* %27)
  %29 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LOCK_V4, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @nlm4_denied, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @nlm_denied, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %4, align 4
  br label %87

41:                                               ; preds = %1, %1
  %42 = call i32 @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LOCK_V4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @nlm4_granted, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @nlm_granted, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %1, %1
  %56 = call i32 @debuglog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %58 = call i32 @dump_filelock(%struct.file_lock* %57)
  %59 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %60 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LOCK_V4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @nlm4_denied_nolocks, align 4
  br label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @nlm_denied_nolocks, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %4, align 4
  br label %87

71:                                               ; preds = %1
  %72 = call i32 @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %74 = call i32 @dump_filelock(%struct.file_lock* %73)
  %75 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LOCK_V4, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @nlm4_failed, align 4
  br label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @nlm_denied, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %69, %53, %39, %23
  %88 = call i32 @debuglog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @debuglog(i8*) #1

declare dso_local i32 @unlock_partialfilelock(%struct.file_lock*) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
