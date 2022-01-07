; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Entering do_lock...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PFL lock granted\00", align 1
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"PFL lock granted--duplicate id detected\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PFL_NFS lock denied\00", align 1
@nlm4_denied = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"PFL_NFS blocking lock denied.  Queued.\0A\00", align 1
@nlm4_blocked = common dso_local global i32 0, align 4
@nlm_blocked = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"PFL lock resource alocation fail\0A\00", align 1
@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@nlm_denied_nolocks = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"PFL lock *FAILED*\00", align 1
@nlm4_failed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Exiting do_lock...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %5 = call i32 @debuglog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %7 = call i32 @lock_partialfilelock(%struct.file_lock* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %89 [
    i32 135, label %9
    i32 134, label %25
    i32 129, label %41
    i32 132, label %41
    i32 130, label %57
    i32 133, label %57
    i32 128, label %73
    i32 131, label %73
  ]

9:                                                ; preds = %1
  %10 = call i32 @debuglog(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
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
  br label %105

25:                                               ; preds = %1
  %26 = call i32 @debuglog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
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
  %36 = load i32, i32* @nlm4_granted, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @nlm_granted, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %4, align 4
  br label %105

41:                                               ; preds = %1, %1
  %42 = call i32 @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %44 = call i32 @dump_filelock(%struct.file_lock* %43)
  %45 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %46 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LOCK_V4, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @nlm4_denied, align 4
  br label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @nlm_denied, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  br label %105

57:                                               ; preds = %1, %1
  %58 = call i32 @debuglog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %60 = call i32 @dump_filelock(%struct.file_lock* %59)
  %61 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LOCK_V4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @nlm4_blocked, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @nlm_blocked, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %4, align 4
  br label %105

73:                                               ; preds = %1, %1
  %74 = call i32 @debuglog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %76 = call i32 @dump_filelock(%struct.file_lock* %75)
  %77 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LOCK_V4, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @nlm4_denied_nolocks, align 4
  br label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @nlm_denied_nolocks, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %4, align 4
  br label %105

89:                                               ; preds = %1
  %90 = call i32 @debuglog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %92 = call i32 @dump_filelock(%struct.file_lock* %91)
  %93 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %94 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LOCK_V4, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @nlm4_failed, align 4
  br label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @nlm_denied, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %87, %71, %55, %39, %23
  %106 = call i32 @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @debuglog(i8*) #1

declare dso_local i32 @lock_partialfilelock(%struct.file_lock*) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
