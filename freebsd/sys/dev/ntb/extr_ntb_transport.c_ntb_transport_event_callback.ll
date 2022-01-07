; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_event_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"HW link up\0A\00", align 1
@ntb_transport_link_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"HW link down\0A\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_transport_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_event_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %5, %struct.ntb_transport_ctx** %3, align 8
  %6 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %9, i32 0, i32 3
  %11 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %11, i32 0, i32 2
  %13 = call i64 @ntb_link_is_up(i32 %8, i32* %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = call i32 @ntb_printf(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* @ntb_transport_link_work, align 4
  %20 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %21 = call i32 @callout_reset(i32* %18, i32 0, i32 %19, %struct.ntb_transport_ctx* %20)
  br label %28

22:                                               ; preds = %1
  %23 = call i32 @ntb_printf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @taskqueue_swi, align 4
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 0
  %27 = call i32 @taskqueue_enqueue(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %15
  ret void
}

declare dso_local i64 @ntb_link_is_up(i32, i32*, i32*) #1

declare dso_local i32 @ntb_printf(i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ntb_transport_ctx*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
