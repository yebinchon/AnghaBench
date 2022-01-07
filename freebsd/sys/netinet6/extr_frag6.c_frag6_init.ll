; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_frag6.c_frag6_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_frag6.c_frag6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@IP6_MAXFRAGPACKETS = common dso_local global i32 0, align 4
@V_ip6_maxfragpackets = common dso_local global i32 0, align 4
@IP6REASS_NHASH = common dso_local global i64 0, align 8
@V_ip6qb = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ip6qb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@V_ip6qb_hashseed = common dso_local global i32 0, align 4
@V_ip6_maxfragsperpacket = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@IP6_MAXFRAGS = common dso_local global i32 0, align 4
@ip6_maxfrags = common dso_local global i32 0, align 4
@nmbclusters_change = common dso_local global i32 0, align 4
@frag6_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@V_frag6_on = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag6_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @IP6_MAXFRAGPACKETS, align 4
  store i32 %2, i32* @V_ip6_maxfragpackets, align 4
  %3 = call i32 (...) @frag6_set_bucketsize()
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @IP6REASS_NHASH, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @IP6QB_HEAD(i64 %9)
  %11 = call i32 @TAILQ_INIT(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ip6qb, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ip6qb, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %8
  %23 = load i64, i64* %1, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %1, align 8
  br label %4

25:                                               ; preds = %4
  %26 = call i32 (...) @arc4random()
  store i32 %26, i32* @V_ip6qb_hashseed, align 4
  store i32 64, i32* @V_ip6_maxfragsperpacket, align 4
  %27 = load i32, i32* @curvnet, align 4
  %28 = call i32 @IS_DEFAULT_VNET(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @IP6_MAXFRAGS, align 4
  store i32 %32, i32* @ip6_maxfrags, align 4
  %33 = load i32, i32* @nmbclusters_change, align 4
  %34 = load i32, i32* @frag6_change, align 4
  %35 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %36 = call i32 @EVENTHANDLER_REGISTER(i32 %33, i32 %34, i32* null, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @frag6_set_bucketsize(...) #1

declare dso_local i32 @TAILQ_INIT(i32) #1

declare dso_local i32 @IP6QB_HEAD(i64) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
