; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Entering do_test...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"PFL test lock granted\0A\00", align 1
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"PFL test lock granted--duplicate id detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Clearing conflicting_fl for call semantics\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"PFL test lock denied\0A\00", align 1
@nlm4_denied = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"PFL test lock resource fail\0A\00", align 1
@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@nlm_denied_nolocks = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"PFL test lock *FAILED*\0A\00", align 1
@nlm4_failed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Exiting do_test...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_test(%struct.file_lock* %0, %struct.file_lock** %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock** %1, %struct.file_lock*** %4, align 8
  %7 = call i32 @debuglog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %9 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %10 = call i32 @test_partialfilelock(%struct.file_lock* %8, %struct.file_lock** %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %90 [
    i32 133, label %12
    i32 132, label %31
    i32 129, label %52
    i32 131, label %52
    i32 128, label %71
    i32 130, label %71
  ]

12:                                               ; preds = %2
  %13 = call i32 @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %15 = call i32 @dump_filelock(%struct.file_lock* %14)
  %16 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %17 = load %struct.file_lock*, %struct.file_lock** %16, align 8
  %18 = call i32 @dump_filelock(%struct.file_lock* %17)
  %19 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LOCK_V4, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @nlm4_granted, align 4
  br label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @nlm_granted, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %6, align 4
  br label %109

31:                                               ; preds = %2
  %32 = call i32 @debuglog(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %34 = call i32 @dump_filelock(%struct.file_lock* %33)
  %35 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %36 = load %struct.file_lock*, %struct.file_lock** %35, align 8
  %37 = call i32 @dump_filelock(%struct.file_lock* %36)
  %38 = call i32 @debuglog(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  store %struct.file_lock* null, %struct.file_lock** %39, align 8
  %40 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LOCK_V4, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* @nlm4_granted, align 4
  br label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @nlm_granted, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %6, align 4
  br label %109

52:                                               ; preds = %2, %2
  %53 = call i32 @debuglog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %55 = call i32 @dump_filelock(%struct.file_lock* %54)
  %56 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %57 = load %struct.file_lock*, %struct.file_lock** %56, align 8
  %58 = call i32 @dump_filelock(%struct.file_lock* %57)
  %59 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %60 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LOCK_V4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @nlm4_denied, align 4
  br label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @nlm_denied, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %6, align 4
  br label %109

71:                                               ; preds = %2, %2
  %72 = call i32 @debuglog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %74 = call i32 @dump_filelock(%struct.file_lock* %73)
  %75 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %76 = load %struct.file_lock*, %struct.file_lock** %75, align 8
  %77 = call i32 @dump_filelock(%struct.file_lock* %76)
  %78 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %79 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LOCK_V4, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @nlm4_denied_nolocks, align 4
  br label %88

86:                                               ; preds = %71
  %87 = load i32, i32* @nlm_denied_nolocks, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  store i32 %89, i32* %6, align 4
  br label %109

90:                                               ; preds = %2
  %91 = call i32 @debuglog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %92 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %93 = call i32 @dump_filelock(%struct.file_lock* %92)
  %94 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %95 = load %struct.file_lock*, %struct.file_lock** %94, align 8
  %96 = call i32 @dump_filelock(%struct.file_lock* %95)
  %97 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %98 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @LOCK_V4, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @nlm4_failed, align 4
  br label %107

105:                                              ; preds = %90
  %106 = load i32, i32* @nlm_denied, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %88, %69, %50, %29
  %110 = call i32 @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @debuglog(i8*) #1

declare dso_local i32 @test_partialfilelock(%struct.file_lock*, %struct.file_lock**) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
