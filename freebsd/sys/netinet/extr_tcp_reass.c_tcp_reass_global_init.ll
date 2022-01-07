; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_global_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nmbclusters = common dso_local global i32 0, align 4
@tcp_reass_maxseg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"net.inet.tcp.reass.maxsegments\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tcpreass\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@tcp_reass_zone = common dso_local global i32 0, align 4
@nmbclusters_change = common dso_local global i32 0, align 4
@tcp_reass_zone_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@merge_fwd = common dso_local global i8* null, align 8
@merge_into = common dso_local global i8* null, align 8
@reass_entry = common dso_local global i8* null, align 8
@reass_fullwalk = common dso_local global i8* null, align 8
@reass_nospace = common dso_local global i8* null, align 8
@reass_path1 = common dso_local global i8* null, align 8
@reass_path2 = common dso_local global i8* null, align 8
@reass_path3 = common dso_local global i8* null, align 8
@reass_path4 = common dso_local global i8* null, align 8
@reass_path5 = common dso_local global i8* null, align 8
@reass_path6 = common dso_local global i8* null, align 8
@reass_path7 = common dso_local global i8* null, align 8
@tcp_zero_input = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_reass_global_init() #0 {
  %1 = load i32, i32* @nmbclusters, align 4
  %2 = sdiv i32 %1, 16
  store i32 %2, i32* @tcp_reass_maxseg, align 4
  %3 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* @tcp_reass_maxseg)
  %4 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %5 = call i32 @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %4, i32 0)
  store i32 %5, i32* @tcp_reass_zone, align 4
  %6 = load i32, i32* @tcp_reass_zone, align 4
  %7 = load i32, i32* @tcp_reass_maxseg, align 4
  %8 = call i32 @uma_zone_set_max(i32 %6, i32 %7)
  store i32 %8, i32* @tcp_reass_maxseg, align 4
  %9 = load i32, i32* @nmbclusters_change, align 4
  %10 = load i32, i32* @tcp_reass_zone_change, align 4
  %11 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %12 = call i32 @EVENTHANDLER_REGISTER(i32 %9, i32 %10, i32* null, i32 %11)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
