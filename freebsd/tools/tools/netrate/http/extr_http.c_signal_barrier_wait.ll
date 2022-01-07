; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_signal_barrier_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_signal_barrier_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SIGHUP = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@statep = common dso_local global %struct.TYPE_4__* null, align 8
@curthread = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @signal_barrier_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_barrier_wait() #0 {
  %1 = load i32, i32* @SIGHUP, align 4
  %2 = load i32, i32* @signal_handler, align 4
  %3 = call i64 @signal(i32 %1, i32 %2)
  %4 = load i64, i64* @SIG_ERR, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  br label %9

9:                                                ; preds = %8, %20
  %10 = call i32 @sleep(i32 100)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @statep, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @curthread, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %21

20:                                               ; preds = %9
  br label %9

21:                                               ; preds = %19
  ret void
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
