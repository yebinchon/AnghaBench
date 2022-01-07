; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_stackgap_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_stackgap_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P2_STKGAP_DISABLE = common dso_local global i32 0, align 4
@P2_STKGAP_DISABLE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @stackgap_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stackgap_ctl(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.proc*, %struct.proc** %6, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, -132
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 131
  switch i32 %18, label %36 [
    i32 129, label %19
    i32 131, label %29
    i32 0, label %35
  ]

19:                                               ; preds = %16
  %20 = load %struct.proc*, %struct.proc** %6, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @P2_STKGAP_DISABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %19
  br label %38

29:                                               ; preds = %16
  %30 = load i32, i32* @P2_STKGAP_DISABLE, align 4
  %31 = load %struct.proc*, %struct.proc** %6, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %38

35:                                               ; preds = %16
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %35, %29, %28
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 130
  switch i32 %40, label %55 [
    i32 128, label %41
    i32 130, label %48
    i32 0, label %54
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* @P2_STKGAP_DISABLE_EXEC, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.proc*, %struct.proc** %6, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %57

48:                                               ; preds = %38
  %49 = load i32, i32* @P2_STKGAP_DISABLE_EXEC, align 4
  %50 = load %struct.proc*, %struct.proc** %6, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %57

54:                                               ; preds = %38
  br label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %54, %48, %41
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %55, %36, %26, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
