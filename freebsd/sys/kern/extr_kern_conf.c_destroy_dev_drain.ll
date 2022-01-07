; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_destroy_dev_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdevsw = type { i32 }

@devmtx = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"devscd\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_dev_drain(%struct.cdevsw* %0) #0 {
  %2 = alloca %struct.cdevsw*, align 8
  store %struct.cdevsw* %0, %struct.cdevsw** %2, align 8
  %3 = call i32 (...) @dev_lock()
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.cdevsw*, %struct.cdevsw** %2, align 8
  %6 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %5, i32 0, i32 0
  %7 = call i32 @LIST_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load %struct.cdevsw*, %struct.cdevsw** %2, align 8
  %12 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %11, i32 0, i32 0
  %13 = load i32, i32* @PRIBIO, align 4
  %14 = load i32, i32* @hz, align 4
  %15 = sdiv i32 %14, 10
  %16 = call i32 @msleep(i32* %12, i32* @devmtx, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %4

17:                                               ; preds = %4
  %18 = call i32 (...) @dev_unlock()
  ret void
}

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
