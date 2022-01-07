; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xenwatch_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xenwatch_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.xs_stored_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.xs_stored_msg*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8**, i32)* }

@xs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"waitev\00", align 1
@hz = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xenwatch_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenwatch_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xs_stored_msg*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %76, %1
  %5 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 1))
  br label %6

6:                                                ; preds = %9, %4
  %7 = call i64 @TAILQ_EMPTY(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 2))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* @PWAIT, align 4
  %11 = load i32, i32* @PCATCH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @hz, align 4
  %14 = sdiv i32 %13, 10
  %15 = call i32 @mtx_sleep(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 1), i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %6

16:                                               ; preds = %6
  %17 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 1))
  %18 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 0))
  %19 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 1))
  %20 = call %struct.xs_stored_msg* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 2))
  store %struct.xs_stored_msg* %20, %struct.xs_stored_msg** %3, align 8
  %21 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %22 = icmp ne %struct.xs_stored_msg* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %25 = load i32, i32* @list, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 2), %struct.xs_stored_msg* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 1))
  %29 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %30 = icmp ne %struct.xs_stored_msg* %29, null
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %33 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_8__*, i8**, i32)*, i32 (%struct.TYPE_8__*, i8**, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_8__*, i8**, i32)* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %31
  %41 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %42 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_8__*, i8**, i32)*, i32 (%struct.TYPE_8__*, i8**, i32)** %46, align 8
  %48 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %49 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %54 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %56, align 8
  %58 = bitcast %struct.xs_stored_msg* %57 to i8**
  %59 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %60 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %47(%struct.TYPE_8__* %52, i8** %58, i32 %63)
  br label %65

65:                                               ; preds = %40, %31
  %66 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %67 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %69, align 8
  %71 = load i32, i32* @M_XENSTORE, align 4
  %72 = call i32 @free(%struct.xs_stored_msg* %70, i32 %71)
  %73 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %3, align 8
  %74 = load i32, i32* @M_XENSTORE, align 4
  %75 = call i32 @free(%struct.xs_stored_msg* %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %27
  %77 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xs, i32 0, i32 0))
  br label %4
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.xs_stored_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.xs_stored_msg*, i32) #1

declare dso_local i32 @free(%struct.xs_stored_msg*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
