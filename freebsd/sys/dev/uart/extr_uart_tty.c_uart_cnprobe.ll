; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.consdev = type { %struct.TYPE_4__*, i32, i32 }

@CN_DEAD = common dso_local global i32 0, align 4
@uart_console = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@uart_driver_name = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_SERIAL = common dso_local global i32 0, align 4
@CN_REMOTE = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @uart_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %3 = load i32, i32* @CN_DEAD, align 4
  %4 = load %struct.consdev*, %struct.consdev** %2, align 8
  %5 = getelementptr inbounds %struct.consdev, %struct.consdev* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uart_console, i32 0, i32 0), align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %11 = call i64 @uart_cpu_getdev(i32 %10, %struct.TYPE_4__* @uart_console)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = call i64 @uart_probe(%struct.TYPE_4__* @uart_console)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %38

18:                                               ; preds = %14
  %19 = load %struct.consdev*, %struct.consdev** %2, align 8
  %20 = getelementptr inbounds %struct.consdev, %struct.consdev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @uart_driver_name, align 4
  %23 = call i32 @strlcpy(i32 %21, i32 %22, i32 4)
  %24 = load i32, i32* @boothowto, align 4
  %25 = load i32, i32* @RB_SERIAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @CN_REMOTE, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @CN_NORMAL, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.consdev*, %struct.consdev** %2, align 8
  %35 = getelementptr inbounds %struct.consdev, %struct.consdev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.consdev*, %struct.consdev** %2, align 8
  %37 = getelementptr inbounds %struct.consdev, %struct.consdev* %36, i32 0, i32 0
  store %struct.TYPE_4__* @uart_console, %struct.TYPE_4__** %37, align 8
  br label %38

38:                                               ; preds = %32, %17, %13
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @uart_cpu_getdev(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @uart_probe(%struct.TYPE_4__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
