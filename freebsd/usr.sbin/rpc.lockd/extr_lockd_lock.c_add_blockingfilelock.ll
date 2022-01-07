; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_add_blockingfilelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_add_blockingfilelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Entering add_blockingfilelock\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Exiting add_blockingfilelock: already blocked\0A\00", align 1
@blockedlocklist_head = common dso_local global i32 0, align 4
@nfslocklist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Exiting add_blockingfilelock: added blocked lock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_blockingfilelock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = call i32 @debuglog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %5 = call i64 @duplicate_block(%struct.file_lock* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @debuglog(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %13 = load i32, i32* @nfslocklist, align 4
  %14 = call i32 @LIST_INSERT_HEAD(i32* @blockedlocklist_head, %struct.file_lock* %12, i32 %13)
  %15 = call i32 @debuglog(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @debuglog(i8*) #1

declare dso_local i64 @duplicate_block(%struct.file_lock*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
