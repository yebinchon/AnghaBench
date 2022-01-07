; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_waitrunningbufspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_waitrunningbufspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rbreqlock = common dso_local global i32 0, align 4
@runningbufspace = common dso_local global i64 0, align 8
@hirunningspace = common dso_local global i64 0, align 8
@runningbufreq = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wdrain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitrunningbufspace() #0 {
  %1 = call i32 @mtx_lock(i32* @rbreqlock)
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i64, i64* @runningbufspace, align 8
  %4 = load i64, i64* @hirunningspace, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  store i32 1, i32* @runningbufreq, align 4
  %7 = load i32, i32* @PVM, align 4
  %8 = call i32 @msleep(i32* @runningbufreq, i32* @rbreqlock, i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %2

9:                                                ; preds = %2
  %10 = call i32 @mtx_unlock(i32* @rbreqlock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
