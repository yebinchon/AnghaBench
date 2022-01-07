; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_test_partialfilelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_test_partialfilelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type opaque

@.str = private unnamed_addr constant [33 x i8] c"Entering testpartialfilelock...\0A\00", align 1
@PFL_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"test_partialfilelock: teststatus %d\0A\00", align 1
@NFS_GRANTED = common dso_local global i32 0, align 4
@NFS_GRANTED_DUPLICATE = common dso_local global i32 0, align 4
@PFL_GRANTED = common dso_local global i32 0, align 4
@PFL_GRANTED_DUPLICATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Dumping locks...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Done dumping locks...\0A\00", align 1
@PFL_NFSDENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"NFS test denied.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Conflicting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Exiting testpartialfilelock...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_partialfilelock(%struct.file_lock* %0, %struct.file_lock** %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock** %1, %struct.file_lock*** %4, align 8
  %7 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @PFL_DENIED, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %10 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %11 = call i32 @test_nfslock(%struct.file_lock* %9, %struct.file_lock** %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFS_GRANTED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NFS_GRANTED_DUPLICATE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NFS_GRANTED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @PFL_GRANTED, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PFL_GRANTED_DUPLICATE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %5, align 4
  %31 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %33 = call i32 @dump_filelock(%struct.file_lock* %32)
  %34 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %34, align 8
  %36 = call i32 @dump_filelock(%struct.file_lock* %35)
  %37 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %47

38:                                               ; preds = %17
  %39 = load i32, i32* @PFL_NFSDENIED, align 4
  store i32 %39, i32* %5, align 4
  %40 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %42 = call i32 @dump_filelock(%struct.file_lock* %41)
  %43 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.file_lock**, %struct.file_lock*** %4, align 8
  %45 = load %struct.file_lock*, %struct.file_lock** %44, align 8
  %46 = call i32 @dump_filelock(%struct.file_lock* %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @debuglog(i8*, ...) #1

declare dso_local i32 @test_nfslock(%struct.file_lock*, %struct.file_lock**) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
