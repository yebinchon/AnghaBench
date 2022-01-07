; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/cons/extr_gxemul_cons.c_gxemul_cons_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/cons/extr_gxemul_cons.c_gxemul_cons_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@gxemul_cons_callout = common dso_local global i32 0, align 4
@gxemul_cons_polltime = common dso_local global i32 0, align 4
@gxemul_cons_alt_break_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gxemul_cons_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxemul_cons_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tty*
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = call i32 @tty_lock(%struct.tty* %7)
  %9 = call i32 (...) @GC_LOCK()
  br label %10

10:                                               ; preds = %13, %1
  %11 = call i64 (...) @gxemul_cons_readable()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call i32 (...) @gxemul_cons_read()
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @GC_UNLOCK()
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ttydisc_rint(%struct.tty* %16, i32 %17, i32 0)
  %19 = call i32 (...) @GC_LOCK()
  br label %10

20:                                               ; preds = %10
  %21 = call i32 (...) @GC_UNLOCK()
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = call i32 @ttydisc_rint_done(%struct.tty* %22)
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = call i32 @tty_unlock(%struct.tty* %24)
  %26 = load i32, i32* @gxemul_cons_polltime, align 4
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = call i32 @callout_reset(i32* @gxemul_cons_callout, i32 %26, void (i8*)* @gxemul_cons_timeout, %struct.tty* %27)
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @GC_LOCK(...) #1

declare dso_local i64 @gxemul_cons_readable(...) #1

declare dso_local i32 @gxemul_cons_read(...) #1

declare dso_local i32 @GC_UNLOCK(...) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
