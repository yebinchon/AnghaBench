; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_eventhandler.c_eventhandler_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_eventhandler.c_eventhandler_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventhandler_list = type { i32 }
%struct.eventhandler_entry_generic = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@M_EVENTHANDLER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eventhandler_register(%struct.eventhandler_list* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.eventhandler_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.eventhandler_entry_generic*, align 8
  store %struct.eventhandler_list* %0, %struct.eventhandler_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @M_EVENTHANDLER, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.eventhandler_entry_generic* @malloc(i32 24, i32 %12, i32 %15)
  store %struct.eventhandler_entry_generic* %16, %struct.eventhandler_entry_generic** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %11, align 8
  %19 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %11, align 8
  %22 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %11, align 8
  %26 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.eventhandler_list*, %struct.eventhandler_list** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %11, align 8
  %31 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %30, i32 0, i32 0
  %32 = call i32 @eventhandler_register_internal(%struct.eventhandler_list* %28, i8* %29, %struct.TYPE_2__* %31)
  ret i32 %32
}

declare dso_local %struct.eventhandler_entry_generic* @malloc(i32, i32, i32) #1

declare dso_local i32 @eventhandler_register_internal(%struct.eventhandler_list*, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
