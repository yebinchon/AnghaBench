; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipreass_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipreass_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@IPREASS_NHASH = common dso_local global i32 0, align 4
@V_ipq = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"IP reassembly\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@V_ipq_hashseed = common dso_local global i32 0, align 4
@V_maxfragsperpacket = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ipq\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_ipq_zone = common dso_local global i32 0, align 4
@IP_MAXFRAGPACKETS = common dso_local global i32 0, align 4
@V_ipreass_maxbucketsize = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@IP_MAXFRAGS = common dso_local global i32 0, align 4
@maxfrags = common dso_local global i32 0, align 4
@nmbclusters_change = common dso_local global i32 0, align 4
@ipreass_zone_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipreass_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %28, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IPREASS_NHASH, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = load i32, i32* @MTX_DUPOK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %3

31:                                               ; preds = %3
  %32 = call i32 (...) @arc4random()
  store i32 %32, i32* @V_ipq_hashseed, align 4
  store i32 16, i32* @V_maxfragsperpacket, align 4
  %33 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %34 = call i32 @uma_zcreate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %33, i32 0)
  store i32 %34, i32* @V_ipq_zone, align 4
  %35 = load i32, i32* @IP_MAXFRAGPACKETS, align 4
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @V_ipq_zone, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @uma_zone_set_max(i32 %36, i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @IPREASS_NHASH, align 4
  %41 = sdiv i32 %40, 2
  %42 = sdiv i32 %39, %41
  %43 = call i32 @imax(i32 %42, i32 1)
  store i32 %43, i32* @V_ipreass_maxbucketsize, align 4
  %44 = load i32, i32* @curvnet, align 4
  %45 = call i64 @IS_DEFAULT_VNET(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load i32, i32* @IP_MAXFRAGS, align 4
  store i32 %48, i32* @maxfrags, align 4
  %49 = load i32, i32* @nmbclusters_change, align 4
  %50 = load i32, i32* @ipreass_zone_change, align 4
  %51 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %52 = call i32 @EVENTHANDLER_REGISTER(i32 %49, i32 %50, i32* null, i32 %51)
  br label %53

53:                                               ; preds = %47, %31
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
