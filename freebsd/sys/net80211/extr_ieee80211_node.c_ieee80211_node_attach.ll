; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"802.11 staging q\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"station\00", align 1
@IEEE80211_INACT_INIT = common dso_local global i32 0, align 4
@IEEE80211_INACT_WAIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ieee80211_node_timeout = common dso_local global i32 0, align 4
@node_alloc = common dso_local global i32 0, align 4
@node_free = common dso_local global i32 0, align 4
@node_cleanup = common dso_local global i32 0, align 4
@node_age = common dso_local global i8* null, align 8
@node_getrssi = common dso_local global i32 0, align 4
@node_getsignal = common dso_local global i32 0, align 4
@node_getmimoinfo = common dso_local global i32 0, align 4
@IEEE80211_FEXT_INACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_attach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %3, i32 0, i32 12
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = mul nsw i32 %7, 8
  %9 = call i32 @ieee80211_ageq_init(i32* %4, i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 11
  %13 = load i32, i32* @IEEE80211_INACT_INIT, align 4
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ieee80211_node_table_init(%struct.ieee80211com* %10, i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 10
  %20 = call i32 @callout_init(i32* %19, i32 1)
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 10
  %23 = load i32, i32* @IEEE80211_INACT_WAIT, align 4
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @ieee80211_node_timeout, align 4
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %28 = call i32 @callout_reset(i32* %22, i32 %25, i32 %26, %struct.ieee80211com* %27)
  %29 = load i32, i32* @node_alloc, align 4
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @node_free, align 4
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @node_cleanup, align 4
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @node_age, align 8
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @node_age, align 8
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @node_getrssi, align 4
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @node_getsignal, align 4
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @node_getmimoinfo, align 4
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @IEEE80211_FEXT_INACT, align 4
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  ret void
}

declare dso_local i32 @ieee80211_ageq_init(i32*, i32, i8*) #1

declare dso_local i32 @ieee80211_node_table_init(%struct.ieee80211com*, i32*, i8*, i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
