; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_eventhandler.c_eventhandler_create_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_eventhandler.c_eventhandler_create_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventhandler_list = type { i32 }

@eventhandler_lists_initted = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"eventhandler list created too early\00", align 1
@eventhandler_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eventhandler_list* @eventhandler_create_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eventhandler_list*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @eventhandler_lists_initted, align 4
  %5 = call i32 @KASSERT(i32 %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @mtx_lock(i32* @eventhandler_mutex)
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.eventhandler_list* @eventhandler_find_or_create_list(i8* %7)
  store %struct.eventhandler_list* %8, %struct.eventhandler_list** %3, align 8
  %9 = call i32 @mtx_unlock(i32* @eventhandler_mutex)
  %10 = load %struct.eventhandler_list*, %struct.eventhandler_list** %3, align 8
  ret %struct.eventhandler_list* %10
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.eventhandler_list* @eventhandler_find_or_create_list(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
