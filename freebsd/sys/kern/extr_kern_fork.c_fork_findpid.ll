; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_findpid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_findpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randompid = common dso_local global i32 0, align 4
@procid_lock = common dso_local global i32 0, align 4
@lastpid = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@pid_max = common dso_local global i32 0, align 4
@proc_id_pidmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unexpectedly ran out of IDs\00", align 1
@proc_id_grpidmap = common dso_local global i32 0, align 4
@proc_id_sessidmap = common dso_local global i32 0, align 4
@proc_id_reapmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fork_findpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_findpid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @randompid, align 4
  %7 = call i64 @__predict_false(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 (...) @arc4random()
  %11 = load i32, i32* @randompid, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 @mtx_lock(i32* @procid_lock)
  %15 = load i32, i32* @lastpid, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @RFHIGHPID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 10, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %25
  br label %31

31:                                               ; preds = %59, %42, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @pid_max, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 2, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @pid_max, align 4
  %39 = call i32 @bit_ffc_at(i32* @proc_id_pidmap, i32 %37, i32 %38, i32* %3)
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 2
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %31

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @bit_test(i32* @proc_id_grpidmap, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @bit_test(i32* @proc_id_sessidmap, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @bit_test(i32* @proc_id_reapmap, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51, %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %31

62:                                               ; preds = %55
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @RFHIGHPID, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* @lastpid, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @bit_set(i32* @proc_id_pidmap, i32 %70)
  %72 = call i32 @mtx_unlock(i32* @procid_lock)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bit_ffc_at(i32*, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @bit_test(i32*, i32) #1

declare dso_local i32 @bit_set(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
