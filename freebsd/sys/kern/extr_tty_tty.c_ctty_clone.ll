; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_tty.c_ctty_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_tty.c_ctty_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.cdev* }
%struct.cdev = type { i32 }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@curproc = common dso_local global %struct.proc* null, align 8
@clone_drain_lock = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@ctty = common dso_local global %struct.cdev* null, align 8
@VBAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ucred*, i8*, i32, %struct.cdev**)* @ctty_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctty_clone(i8* %0, %struct.ucred* %1, i8* %2, i32 %3, %struct.cdev** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca %struct.proc*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cdev** %4, %struct.cdev*** %10, align 8
  %12 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %12, align 8
  %14 = icmp ne %struct.cdev* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %85

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %85

21:                                               ; preds = %16
  %22 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %22, %struct.proc** %11, align 8
  %23 = call i32 @sx_sunlock(i32* @clone_drain_lock)
  %24 = call i32 @sx_slock(i32* @proctree_lock)
  %25 = call i32 @sx_slock(i32* @clone_drain_lock)
  %26 = call i32 (...) @dev_lock()
  %27 = load %struct.proc*, %struct.proc** %11, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_CONTROLT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load %struct.cdev*, %struct.cdev** @ctty, align 8
  %35 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %34, %struct.cdev** %35, align 8
  br label %79

36:                                               ; preds = %21
  %37 = load %struct.proc*, %struct.proc** %11, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp eq %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.cdev*, %struct.cdev** @ctty, align 8
  %45 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %44, %struct.cdev** %45, align 8
  br label %78

46:                                               ; preds = %36
  %47 = load %struct.proc*, %struct.proc** %11, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VBAD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = load %struct.proc*, %struct.proc** %11, align 8
  %58 = getelementptr inbounds %struct.proc, %struct.proc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.cdev*, %struct.cdev** %62, align 8
  %64 = icmp eq %struct.cdev* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %46
  %66 = load %struct.cdev*, %struct.cdev** @ctty, align 8
  %67 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %66, %struct.cdev** %67, align 8
  br label %77

68:                                               ; preds = %56
  %69 = load %struct.proc*, %struct.proc** %11, align 8
  %70 = getelementptr inbounds %struct.proc, %struct.proc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.cdev*, %struct.cdev** %74, align 8
  %76 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %75, %struct.cdev** %76, align 8
  br label %77

77:                                               ; preds = %68, %65
  br label %78

78:                                               ; preds = %77, %43
  br label %79

79:                                               ; preds = %78, %33
  %80 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %81 = load %struct.cdev*, %struct.cdev** %80, align 8
  %82 = call i32 @dev_refl(%struct.cdev* %81)
  %83 = call i32 (...) @dev_unlock()
  %84 = call i32 @sx_sunlock(i32* @proctree_lock)
  br label %85

85:                                               ; preds = %79, %20, %15
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @dev_refl(%struct.cdev*) #1

declare dso_local i32 @dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
