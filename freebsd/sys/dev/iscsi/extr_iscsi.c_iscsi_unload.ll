; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32* }

@sc = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"removing device node\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"device node removed\00", align 1
@shutdown_pre_sync = common dso_local global i32 0, align 4
@shutdown_post_sync = common dso_local global i32 0, align 4
@iscsi_outstanding_zone = common dso_local global i32 0, align 4
@M_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iscsi_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_unload() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @destroy_dev(i32* %9)
  %11 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %5, %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @shutdown_pre_sync, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @EVENTHANDLER_DEREGISTER(i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @shutdown_post_sync, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @EVENTHANDLER_DEREGISTER(i32 %29, i32* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %36 = call i32 @iscsi_terminate_sessions(%struct.TYPE_4__* %35)
  %37 = load i32, i32* @iscsi_outstanding_zone, align 4
  %38 = call i32 @uma_zdestroy(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @sx_destroy(i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @cv_destroy(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sc, align 8
  %46 = load i32, i32* @M_ISCSI, align 4
  %47 = call i32 @free(%struct.TYPE_4__* %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @ISCSI_DEBUG(i8*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @iscsi_terminate_sessions(%struct.TYPE_4__*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
