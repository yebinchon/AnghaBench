; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_lock_nfslock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_lock_nfslock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering lock_nfslock...\0A\00", align 1
@NFS_GRANTED = common dso_local global i32 0, align 4
@NFS_GRANTED_DUPLICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Inserting lock...\0A\00", align 1
@nfslocklist_head = common dso_local global i32 0, align 4
@nfslocklist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Exiting lock_nfslock...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_nfslock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  store %struct.file_lock* null, %struct.file_lock** %4, align 8
  %5 = call i32 @debuglog(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %7 = call i32 @test_nfslock(%struct.file_lock* %6, %struct.file_lock** %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NFS_GRANTED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NFS_GRANTED_DUPLICATE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %1
  %16 = call i32 @debuglog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %18 = call i32 @dump_filelock(%struct.file_lock* %17)
  %19 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %20 = load i32, i32* @nfslocklist, align 4
  %21 = call i32 @LIST_INSERT_HEAD(i32* @nfslocklist_head, %struct.file_lock* %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %11
  %23 = call i32 @debuglog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @debuglog(i8*) #1

declare dso_local i32 @test_nfslock(%struct.file_lock*, %struct.file_lock**) #1

declare dso_local i32 @dump_filelock(%struct.file_lock*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
