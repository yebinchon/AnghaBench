; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_init_siftr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_init_siftr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown_pre_sync = common dso_local global i32 0, align 4
@siftr_shutdown_handler = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4
@SIFTR_EXPECTED_MAX_TCP_FLOWS = common dso_local global i32 0, align 4
@M_SIFTR = common dso_local global i32 0, align 4
@siftr_hashmask = common dso_local global i32 0, align 4
@counter_hash = common dso_local global i32 0, align 4
@siftr_pkt_queue_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"siftr_pkt_queue_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@siftr_pkt_mgr_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"siftr_pkt_mgr_mtx\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"\0AStatistical Information For TCP Research (SIFTR) %s\0A          http://caia.swin.edu.au/urp/newtcp\0A\0A\00", align 1
@MODVERSION_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_siftr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_siftr() #0 {
  %1 = load i32, i32* @shutdown_pre_sync, align 4
  %2 = load i32, i32* @siftr_shutdown_handler, align 4
  %3 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %4 = call i32 @EVENTHANDLER_REGISTER(i32 %1, i32 %2, i32* null, i32 %3)
  %5 = load i32, i32* @SIFTR_EXPECTED_MAX_TCP_FLOWS, align 4
  %6 = load i32, i32* @M_SIFTR, align 4
  %7 = call i32 @hashinit(i32 %5, i32 %6, i32* @siftr_hashmask)
  store i32 %7, i32* @counter_hash, align 4
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* @siftr_pkt_queue_mtx, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8)
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @siftr_pkt_mgr_mtx, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %10)
  %12 = load i32, i32* @MODVERSION_STR, align 4
  %13 = call i32 @uprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  ret i32 0
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @uprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
