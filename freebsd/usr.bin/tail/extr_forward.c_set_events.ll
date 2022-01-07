; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_set_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_set_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i32 }

@USE_KQUEUE = common dso_local global i32 0, align 4
@action = common dso_local global i32 0, align 4
@no_files = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@USE_SLEEP = common dso_local global i32 0, align 4
@Fflag = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8
@ev = common dso_local global i32* null, align 8
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@kq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @set_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_events(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.statfs, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @USE_KQUEUE, align 4
  store i32 %10, i32* @action, align 4
  store i32 0, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  br label %12

12:                                               ; preds = %86, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @no_files, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %91

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %86

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @fileno(i32 %25)
  %27 = call i64 @fstatfs(i64 %26, %struct.statfs* %7)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MNT_LOCAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @USE_SLEEP, align 4
  store i32 %36, i32* @action, align 4
  br label %99

37:                                               ; preds = %29, %22
  %38 = load i64, i64* @Fflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @fileno(i32 %43)
  %45 = load i64, i64* @STDIN_FILENO, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i32*, i32** @ev, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @fileno(i32 %54)
  %56 = load i32, i32* @EVFILT_VNODE, align 4
  %57 = load i32, i32* @EV_ADD, align 4
  %58 = load i32, i32* @EV_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @EV_CLEAR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @NOTE_DELETE, align 4
  %63 = load i32, i32* @NOTE_RENAME, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @EV_SET(i32* %51, i64 %55, i32 %56, i32 %61, i32 %64, i32 0, i32 0)
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %47, %40, %37
  %69 = load i32*, i32** @ev, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @fileno(i32 %75)
  %77 = load i32, i32* @EVFILT_READ, align 4
  %78 = load i32, i32* @EV_ADD, align 4
  %79 = load i32, i32* @EV_ENABLE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @EV_CLEAR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @EV_SET(i32* %72, i64 %76, i32 %77, i32 %82, i32 0, i32 0, i32 0)
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %68, %21
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 1
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %5, align 8
  br label %12

91:                                               ; preds = %12
  %92 = load i32, i32* @kq, align 4
  %93 = load i32*, i32** @ev, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @kevent(i32 %92, i32* %93, i32 %94, i32* null, i32 0, %struct.timespec* %6)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @USE_SLEEP, align 4
  store i32 %98, i32* @action, align 4
  br label %99

99:                                               ; preds = %35, %97, %91
  ret void
}

declare dso_local i64 @fstatfs(i64, %struct.statfs*) #1

declare dso_local i64 @fileno(i32) #1

declare dso_local i32 @EV_SET(i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @kevent(i32, i32*, i32, i32*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
