; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimers_event_hook_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimers_event_hook_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.proc = type { %struct.itimers* }
%struct.itimers = type { %struct.itimer** }
%struct.itimer = type { i32 }

@MAX_CLOCKS = common dso_local global i32 0, align 4
@posix_clocks = common dso_local global %struct.TYPE_2__* null, align 8
@event_hook = common dso_local global i32 0, align 4
@ITIMER_EV_EXEC = common dso_local global i32 0, align 4
@ITIMER_EV_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unhandled event\00", align 1
@TIMER_MAX = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@M_SUBPROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.proc*)* @itimers_event_hook_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itimers_event_hook_exit(i8* %0, %struct.proc* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.itimers*, align 8
  %6 = alloca %struct.itimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = load %struct.itimers*, %struct.itimers** %13, align 8
  %15 = icmp ne %struct.itimers* %14, null
  br i1 %15, label %16, label %108

16:                                               ; preds = %2
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load %struct.itimers*, %struct.itimers** %18, align 8
  store %struct.itimers* %19, %struct.itimers** %5, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %42, %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MAX_CLOCKS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @posix_clocks, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @event_hook, align 4
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.proc*
  %40 = call i32 @CLOCK_CALL(i32 %33, i32 %34, %struct.proc* %39)
  br label %41

41:                                               ; preds = %32, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ITIMER_EV_EXEC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 3, i32* %8, align 4
  br label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ITIMER_EV_EXIT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %57

55:                                               ; preds = %50
  %56 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TIMER_MAX, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.itimers*, %struct.itimers** %5, align 8
  %65 = getelementptr inbounds %struct.itimers, %struct.itimers* %64, i32 0, i32 0
  %66 = load %struct.itimer**, %struct.itimer*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.itimer*, %struct.itimer** %66, i64 %68
  %70 = load %struct.itimer*, %struct.itimer** %69, align 8
  store %struct.itimer* %70, %struct.itimer** %6, align 8
  %71 = icmp ne %struct.itimer* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @curthread, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @kern_ktimer_delete(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %59

80:                                               ; preds = %59
  %81 = load %struct.itimers*, %struct.itimers** %5, align 8
  %82 = getelementptr inbounds %struct.itimers, %struct.itimers* %81, i32 0, i32 0
  %83 = load %struct.itimer**, %struct.itimer*** %82, align 8
  %84 = getelementptr inbounds %struct.itimer*, %struct.itimer** %83, i64 0
  %85 = load %struct.itimer*, %struct.itimer** %84, align 8
  %86 = icmp eq %struct.itimer* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = load %struct.itimers*, %struct.itimers** %5, align 8
  %89 = getelementptr inbounds %struct.itimers, %struct.itimers* %88, i32 0, i32 0
  %90 = load %struct.itimer**, %struct.itimer*** %89, align 8
  %91 = getelementptr inbounds %struct.itimer*, %struct.itimer** %90, i64 1
  %92 = load %struct.itimer*, %struct.itimer** %91, align 8
  %93 = icmp eq %struct.itimer* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.itimers*, %struct.itimers** %5, align 8
  %96 = getelementptr inbounds %struct.itimers, %struct.itimers* %95, i32 0, i32 0
  %97 = load %struct.itimer**, %struct.itimer*** %96, align 8
  %98 = getelementptr inbounds %struct.itimer*, %struct.itimer** %97, i64 2
  %99 = load %struct.itimer*, %struct.itimer** %98, align 8
  %100 = icmp eq %struct.itimer* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.itimers*, %struct.itimers** %5, align 8
  %103 = load i32, i32* @M_SUBPROC, align 4
  %104 = call i32 @free(%struct.itimers* %102, i32 %103)
  %105 = load %struct.proc*, %struct.proc** %4, align 8
  %106 = getelementptr inbounds %struct.proc, %struct.proc* %105, i32 0, i32 0
  store %struct.itimers* null, %struct.itimers** %106, align 8
  br label %107

107:                                              ; preds = %101, %94, %87, %80
  br label %108

108:                                              ; preds = %107, %2
  ret void
}

declare dso_local i32 @CLOCK_CALL(i32, i32, %struct.proc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kern_ktimer_delete(i32, i32) #1

declare dso_local i32 @free(%struct.itimers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
