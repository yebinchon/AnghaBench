; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_tw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_tw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"tcptw\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_tcptw_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"net.inet.tcp.maxtcptw\00", align 1
@maxtcptw = common dso_local global i64 0, align 8
@V_twq_2msl = common dso_local global i32 0, align 4
@V_tw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_tw_init() #0 {
  %1 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %2 = call i32 @uma_zcreate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %1, i32 0)
  store i32 %2, i32* @V_tcptw_zone, align 4
  %3 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* @maxtcptw)
  %4 = load i64, i64* @maxtcptw, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @V_tcptw_zone, align 4
  %8 = call i64 (...) @tcptw_auto_size()
  %9 = call i32 @uma_zone_set_max(i32 %7, i64 %8)
  br label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @V_tcptw_zone, align 4
  %12 = load i64, i64* @maxtcptw, align 8
  %13 = call i32 @uma_zone_set_max(i32 %11, i64 %12)
  br label %14

14:                                               ; preds = %10, %6
  %15 = call i32 @TAILQ_INIT(i32* @V_twq_2msl)
  %16 = load i32, i32* @V_tw_lock, align 4
  %17 = call i32 @TW_LOCK_INIT(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @uma_zone_set_max(i32, i64) #1

declare dso_local i64 @tcptw_auto_size(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TW_LOCK_INIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
