; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_clear_partialfilelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_clear_partialfilelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@nfslocklist_head = common dso_local global i32 0, align 4
@nfslocklist = common dso_local global i32 0, align 4
@SM_MAXSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_partialfilelock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @clear_blockingfilelock(i8* %5)
  %7 = call %struct.file_lock* @LIST_FIRST(i32* @nfslocklist_head)
  store %struct.file_lock* %7, %struct.file_lock** %3, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %10 = icmp ne %struct.file_lock* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %13 = load i32, i32* @nfslocklist, align 4
  %14 = call %struct.file_lock* @LIST_NEXT(%struct.file_lock* %12, i32 %13)
  store %struct.file_lock* %14, %struct.file_lock** %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SM_MAXSTRLEN, align 4
  %20 = call i64 @strncmp(i8* %15, i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %24 = call i32 @unlock_partialfilelock(%struct.file_lock* %23)
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  store %struct.file_lock* %26, %struct.file_lock** %3, align 8
  br label %8

27:                                               ; preds = %8
  ret void
}

declare dso_local i32 @clear_blockingfilelock(i8*) #1

declare dso_local %struct.file_lock* @LIST_FIRST(i32*) #1

declare dso_local %struct.file_lock* @LIST_NEXT(%struct.file_lock*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @unlock_partialfilelock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
