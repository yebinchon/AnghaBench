; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_read_kbd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_read_kbd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_kbd_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call %struct.TYPE_8__* @kbdcp(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = call i64 @availq(%struct.TYPE_9__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_8__* @kbdcp(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @removeq(%struct.TYPE_9__* %12)
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_8__* @kbdcp(i32 %15)
  %17 = call i32 @wait_for_kbd_data(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.TYPE_8__* @kbdcp(i32 %21)
  %23 = call i32 @read_data(%struct.TYPE_8__* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %19, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @availq(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @kbdcp(i32) #1

declare dso_local i32 @removeq(%struct.TYPE_9__*) #1

declare dso_local i32 @wait_for_kbd_data(%struct.TYPE_8__*) #1

declare dso_local i32 @read_data(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
