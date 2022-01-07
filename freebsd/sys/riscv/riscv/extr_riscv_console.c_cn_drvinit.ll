; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_cn_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_cn_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@riscv_consdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CN_DEAD = common dso_local global i64 0, align 8
@riscv_ttydevsw = common dso_local global i32 0, align 4
@tp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rcons\00", align 1
@polltime = common dso_local global i32 0, align 4
@riscv_callout = common dso_local global i32 0, align 4
@riscv_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cn_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @riscv_consdev, i32 0, i32 0), align 8
  %4 = load i64, i64* @CN_DEAD, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @riscv_consdev, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = call i32 @tty_alloc(i32* @riscv_ttydevsw, i32* null)
  store i32 %13, i32* @tp, align 4
  %14 = load i32, i32* @tp, align 4
  %15 = call i32 @tty_init_console(i32 %14, i32 0)
  %16 = load i32, i32* @tp, align 4
  %17 = call i32 @tty_makedev(i32 %16, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @polltime, align 4
  %18 = call i32 @callout_init(i32* @riscv_callout, i32 1)
  %19 = load i32, i32* @polltime, align 4
  %20 = load i32, i32* @riscv_timeout, align 4
  %21 = call i32 @callout_reset(i32* @riscv_callout, i32 %19, i32 %20, i32* null)
  br label %22

22:                                               ; preds = %12, %6, %1
  ret void
}

declare dso_local i32 @tty_alloc(i32*, i32*) #1

declare dso_local i32 @tty_init_console(i32, i32) #1

declare dso_local i32 @tty_makedev(i32, i32*, i8*, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
