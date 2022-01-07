; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"session=%d flag=%x\00", align 1
@max_sessions = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"sp->flags=%x\00", align 1
@ISC_FFPHASE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"isc-cls\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @iscsi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = call i32 @debug_called(i32 8)
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = call i64 @dev2unit(%struct.cdev* %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14)
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = call i64 @dev2unit(%struct.cdev* %16)
  %18 = load i64, i64* @max_sessions, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdebug(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ISC_FFPHASE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = load i32, i32* @PRIBIO, align 4
  %41 = load i32, i32* @hz, align 4
  %42 = mul nsw i32 60, %41
  %43 = call i32 @tsleep(%struct.TYPE_4__* %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %27
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = call i32 @ism_stop(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %44, %21
  %48 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @sdebug(i32, i8*, i32) #1

declare dso_local i32 @tsleep(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @ism_stop(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
