; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.seltd* }
%struct.seltd = type { i32, i32, i32 }

@SELTD_RESCAN = common dso_local global i32 0, align 4
@SELTD_PENDING = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@C_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32)* @seltdwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seltdwait(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seltd*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.seltd*, %struct.seltd** %11, align 8
  store %struct.seltd* %12, %struct.seltd** %8, align 8
  %13 = load %struct.seltd*, %struct.seltd** %8, align 8
  %14 = getelementptr inbounds %struct.seltd, %struct.seltd* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* @SELTD_RESCAN, align 4
  %17 = load %struct.seltd*, %struct.seltd** %8, align 8
  %18 = getelementptr inbounds %struct.seltd, %struct.seltd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.seltd*, %struct.seltd** %8, align 8
  %22 = getelementptr inbounds %struct.seltd, %struct.seltd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SELTD_PENDING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.seltd*, %struct.seltd** %8, align 8
  %29 = getelementptr inbounds %struct.seltd, %struct.seltd* %28, i32 0, i32 1
  %30 = call i32 @mtx_unlock(i32* %29)
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %35, i32* %9, align 4
  br label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.seltd*, %struct.seltd** %8, align 8
  %41 = getelementptr inbounds %struct.seltd, %struct.seltd* %40, i32 0, i32 2
  %42 = load %struct.seltd*, %struct.seltd** %8, align 8
  %43 = getelementptr inbounds %struct.seltd, %struct.seltd* %42, i32 0, i32 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @C_ABSOLUTE, align 4
  %47 = call i32 @cv_timedwait_sig_sbt(i32* %41, i32* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.seltd*, %struct.seltd** %8, align 8
  %50 = getelementptr inbounds %struct.seltd, %struct.seltd* %49, i32 0, i32 2
  %51 = load %struct.seltd*, %struct.seltd** %8, align 8
  %52 = getelementptr inbounds %struct.seltd, %struct.seltd* %51, i32 0, i32 1
  %53 = call i32 @cv_wait_sig(i32* %50, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.seltd*, %struct.seltd** %8, align 8
  %57 = getelementptr inbounds %struct.seltd, %struct.seltd* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %27
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_timedwait_sig_sbt(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
