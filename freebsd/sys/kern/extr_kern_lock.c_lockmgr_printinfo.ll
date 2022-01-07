; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_printinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_printinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.thread = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@LK_UNLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lock type %s: UNLOCKED\0A\00", align 1
@LK_SHARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"lock type %s: SHARED (count %ju)\0A\00", align 1
@LK_KERNPROC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"lock type %s: EXCL by KERNPROC\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"lock type %s: EXCL by thread %p (pid %d, %s, tid %d)\0A\00", align 1
@LK_EXCLUSIVE_WAITERS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c" with exclusive waiters pending\0A\00", align 1
@LK_SHARED_WAITERS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c" with shared waiters pending\0A\00", align 1
@LK_EXCLUSIVE_SPINNERS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c" with exclusive spinners pending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lockmgr_printinfo(%struct.lock* %0) #0 {
  %2 = alloca %struct.lock*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i64, align 8
  store %struct.lock* %0, %struct.lock** %2, align 8
  %5 = load %struct.lock*, %struct.lock** %2, align 8
  %6 = getelementptr inbounds %struct.lock, %struct.lock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LK_UNLOCKED, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.lock*, %struct.lock** %2, align 8
  %12 = getelementptr inbounds %struct.lock, %struct.lock* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.lock*, %struct.lock** %2, align 8
  %18 = getelementptr inbounds %struct.lock, %struct.lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LK_SHARE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.lock*, %struct.lock** %2, align 8
  %25 = getelementptr inbounds %struct.lock, %struct.lock* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.lock*, %struct.lock** %2, align 8
  %29 = getelementptr inbounds %struct.lock, %struct.lock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @LK_SHARERS(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %32)
  br label %68

34:                                               ; preds = %16
  %35 = load %struct.lock*, %struct.lock** %2, align 8
  %36 = call %struct.thread* @lockmgr_xholder(%struct.lock* %35)
  store %struct.thread* %36, %struct.thread** %3, align 8
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = load i64, i64* @LK_KERNPROC, align 8
  %39 = inttoptr i64 %38 to %struct.thread*
  %40 = icmp eq %struct.thread* %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.lock*, %struct.lock** %2, align 8
  %43 = getelementptr inbounds %struct.lock, %struct.lock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %67

47:                                               ; preds = %34
  %48 = load %struct.lock*, %struct.lock** %2, align 8
  %49 = getelementptr inbounds %struct.lock, %struct.lock* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = load %struct.thread*, %struct.thread** %3, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.thread*, %struct.thread** %3, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.thread*, %struct.thread** %3, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %51, %struct.thread* %52, i32 %57, i8* %62, i32 %65)
  br label %67

67:                                               ; preds = %47, %41
  br label %68

68:                                               ; preds = %67, %23
  br label %69

69:                                               ; preds = %68, %10
  %70 = load %struct.lock*, %struct.lock** %2, align 8
  %71 = getelementptr inbounds %struct.lock, %struct.lock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @LK_EXCLUSIVE_WAITERS, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %69
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @LK_SHARED_WAITERS, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @LK_EXCLUSIVE_SPINNERS, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load %struct.lock*, %struct.lock** %2, align 8
  %96 = call i32 @STACK_PRINT(%struct.lock* %95)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @LK_SHARERS(i32) #1

declare dso_local %struct.thread* @lockmgr_xholder(%struct.lock*) #1

declare dso_local i32 @STACK_PRINT(%struct.lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
