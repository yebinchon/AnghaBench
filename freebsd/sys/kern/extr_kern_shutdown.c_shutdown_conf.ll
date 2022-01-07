; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown_final = common dso_local global i32 0, align 4
@poweroff_wait = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i64 0, align 8
@shutdown_halt = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i64 0, align 8
@shutdown_panic = common dso_local global i32 0, align 4
@shutdown_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shutdown_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_conf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @shutdown_final, align 4
  %4 = load i32, i32* @poweroff_wait, align 4
  %5 = load i64, i64* @SHUTDOWN_PRI_FIRST, align 8
  %6 = call i32 @EVENTHANDLER_REGISTER(i32 %3, i32 %4, i32* null, i64 %5)
  %7 = load i32, i32* @shutdown_final, align 4
  %8 = load i32, i32* @shutdown_halt, align 4
  %9 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %10 = add nsw i64 %9, 100
  %11 = call i32 @EVENTHANDLER_REGISTER(i32 %7, i32 %8, i32* null, i64 %10)
  %12 = load i32, i32* @shutdown_final, align 4
  %13 = load i32, i32* @shutdown_panic, align 4
  %14 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %15 = add nsw i64 %14, 100
  %16 = call i32 @EVENTHANDLER_REGISTER(i32 %12, i32 %13, i32* null, i64 %15)
  %17 = load i32, i32* @shutdown_final, align 4
  %18 = load i32, i32* @shutdown_reset, align 4
  %19 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %20 = add nsw i64 %19, 200
  %21 = call i32 @EVENTHANDLER_REGISTER(i32 %17, i32 %18, i32* null, i64 %20)
  ret void
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
