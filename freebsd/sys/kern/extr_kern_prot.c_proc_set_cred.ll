; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_proc_set_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_proc_set_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, %struct.ucred* }
%struct.ucred = type { i32 }

@PRS_ZOMBIE = common dso_local global i64 0, align 8
@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @proc_set_cred(%struct.proc* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 1
  %8 = load %struct.ucred*, %struct.ucred** %7, align 8
  %9 = icmp ne %struct.ucred* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @MPASS(i32 %10)
  %12 = load %struct.ucred*, %struct.ucred** %4, align 8
  %13 = icmp eq %struct.ucred* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.proc*, %struct.proc** %3, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PRS_ZOMBIE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.proc*, %struct.proc** %3, align 8
  %24 = load i32, i32* @MA_OWNED, align 4
  %25 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 1
  %29 = load %struct.ucred*, %struct.ucred** %28, align 8
  store %struct.ucred* %29, %struct.ucred** %5, align 8
  %30 = load %struct.ucred*, %struct.ucred** %4, align 8
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 1
  store %struct.ucred* %30, %struct.ucred** %32, align 8
  %33 = load %struct.ucred*, %struct.ucred** %4, align 8
  %34 = icmp ne %struct.ucred* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.proc*, %struct.proc** %3, align 8
  %37 = call i32 @PROC_UPDATE_COW(%struct.proc* %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.ucred*, %struct.ucred** %5, align 8
  ret %struct.ucred* %39
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UPDATE_COW(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
