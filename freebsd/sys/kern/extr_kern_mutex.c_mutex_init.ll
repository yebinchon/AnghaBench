; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_mutex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }

@Giant = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"Giant\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@blocked_lock = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"blocked lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@proc0 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"process lock\00", align 1
@MTX_DUPOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"process slock\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pstatl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pitiml\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pprofl\00", align 1
@devmtx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"cdev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_init() #0 {
  %1 = call i32 (...) @init_turnstiles()
  %2 = load i32, i32* @MTX_DEF, align 4
  %3 = load i32, i32* @MTX_RECURSE, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @mtx_init(%struct.TYPE_8__* @Giant, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4)
  %6 = load i32, i32* @MTX_SPIN, align 4
  %7 = call i32 @mtx_init(%struct.TYPE_8__* @blocked_lock, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %6)
  store i32 -559038242, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blocked_lock, i32 0, i32 0), align 4
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = load i32, i32* @MTX_DUPOK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @mtx_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc0, i32 0, i32 4), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %10)
  %12 = load i32, i32* @MTX_SPIN, align 4
  %13 = call i32 @mtx_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc0, i32 0, i32 3), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %12)
  %14 = load i32, i32* @MTX_SPIN, align 4
  %15 = call i32 @mtx_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc0, i32 0, i32 2), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %14)
  %16 = load i32, i32* @MTX_SPIN, align 4
  %17 = call i32 @mtx_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc0, i32 0, i32 1), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %16)
  %18 = load i32, i32* @MTX_SPIN, align 4
  %19 = call i32 @mtx_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %18)
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(%struct.TYPE_8__* @devmtx, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %20)
  %22 = call i32 @mtx_lock(%struct.TYPE_8__* @Giant)
  ret void
}

declare dso_local i32 @init_turnstiles(...) #1

declare dso_local i32 @mtx_init(%struct.TYPE_8__*, i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
