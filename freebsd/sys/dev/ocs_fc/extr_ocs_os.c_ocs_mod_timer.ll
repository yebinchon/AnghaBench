; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_mod_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_mod_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bad parameter\0A\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@__ocs_callout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_mod_timer(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 1000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 1000
  %18 = mul nsw i32 %17, 1000
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i32 @tvtohz(%struct.timeval* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @INT32_MAX, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %12
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @__ocs_callout, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = call i32 @callout_reset(i32* %34, i32 %35, i32 %36, %struct.TYPE_4__* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
