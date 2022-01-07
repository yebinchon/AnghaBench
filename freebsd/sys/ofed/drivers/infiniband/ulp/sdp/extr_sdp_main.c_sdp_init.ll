; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdp_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sdp_sock\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@sdp_zone = common dso_local global i32 0, align 4
@maxsockets = common dso_local global i32 0, align 4
@maxsockets_change = common dso_local global i32 0, align 4
@sdp_zone_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rx_comp_wq\00", align 1
@rx_comp_wq = common dso_local global i32 0, align 4
@sdp_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_init() #0 {
  %1 = call i32 @LIST_INIT(i32* @sdp_list)
  %2 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %3 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %4 = call i32 @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %2, i32 %3)
  store i32 %4, i32* @sdp_zone, align 4
  %5 = load i32, i32* @sdp_zone, align 4
  %6 = load i32, i32* @maxsockets, align 4
  %7 = call i32 @uma_zone_set_max(i32 %5, i32 %6)
  %8 = load i32, i32* @maxsockets_change, align 4
  %9 = load i32, i32* @sdp_zone_change, align 4
  %10 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %11 = call i32 @EVENTHANDLER_REGISTER(i32 %8, i32 %9, i32* null, i32 %10)
  %12 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* @rx_comp_wq, align 4
  %13 = call i32 @ib_register_client(i32* @sdp_client)
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @ib_register_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
