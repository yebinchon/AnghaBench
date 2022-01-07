; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_delist_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_delist_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"delist_dev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delist_dev(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %3 = load i32, i32* @WARN_GIANTOK, align 4
  %4 = load i32, i32* @WARN_SLEEPOK, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @WITNESS_WARN(i32 %5, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @dev_lock()
  %8 = load %struct.cdev*, %struct.cdev** %2, align 8
  %9 = call i32 @delist_dev_locked(%struct.cdev* %8)
  %10 = call i32 (...) @dev_unlock()
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @delist_dev_locked(%struct.cdev*) #1

declare dso_local i32 @dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
