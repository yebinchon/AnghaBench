; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toecore_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toecore_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@toedev_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"toedev lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@toedev_list = common dso_local global i32 0, align 4
@tcp_offload_listen_start = common dso_local global i32 0, align 4
@toe_listen_start_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@listen_start_eh = common dso_local global i8* null, align 8
@tcp_offload_listen_stop = common dso_local global i32 0, align 4
@toe_listen_stop_event = common dso_local global i32 0, align 4
@listen_stop_eh = common dso_local global i8* null, align 8
@lle_event = common dso_local global i32 0, align 4
@toe_lle_event = common dso_local global i32 0, align 4
@lle_event_eh = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @toecore_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toecore_load() #0 {
  %1 = load i32, i32* @MTX_DEF, align 4
  %2 = call i32 @mtx_init(i32* @toedev_lock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = call i32 @TAILQ_INIT(i32* @toedev_list)
  %4 = load i32, i32* @tcp_offload_listen_start, align 4
  %5 = load i32, i32* @toe_listen_start_event, align 4
  %6 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %7 = call i8* @EVENTHANDLER_REGISTER(i32 %4, i32 %5, i32* null, i32 %6)
  store i8* %7, i8** @listen_start_eh, align 8
  %8 = load i32, i32* @tcp_offload_listen_stop, align 4
  %9 = load i32, i32* @toe_listen_stop_event, align 4
  %10 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %11 = call i8* @EVENTHANDLER_REGISTER(i32 %8, i32 %9, i32* null, i32 %10)
  store i8* %11, i8** @listen_stop_eh, align 8
  %12 = load i32, i32* @lle_event, align 4
  %13 = load i32, i32* @toe_lle_event, align 4
  %14 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %15 = call i8* @EVENTHANDLER_REGISTER(i32 %12, i32 %13, i32* null, i32 %14)
  store i8* %15, i8** @lle_event_eh, align 8
  ret i32 0
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
