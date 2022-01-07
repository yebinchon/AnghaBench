; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ETF_hookinfo, i64, i64, %struct.ETF_hookinfo }
%struct.ETF_hookinfo = type { i8* }

@NG_ETF_HOOK_DOWNSTREAM = common dso_local global i32 0, align 4
@NG_ETF_HOOK_NOMATCH = common dso_local global i32 0, align 4
@M_NETGRAPH_ETF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_etf_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_etf_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.ETF_hookinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @NG_ETF_HOOK_DOWNSTREAM, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.ETF_hookinfo, %struct.ETF_hookinfo* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = call i32 @NG_HOOK_SET_PRIVATE(i8* %21, %struct.ETF_hookinfo* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %61

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @NG_ETF_HOOK_NOMATCH, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ETF_hookinfo, %struct.ETF_hookinfo* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @NG_HOOK_SET_PRIVATE(i8* %39, %struct.ETF_hookinfo* %41)
  br label %60

43:                                               ; preds = %29
  %44 = load i32, i32* @M_NETGRAPH_ETF, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.ETF_hookinfo* @malloc(i32 8, i32 %44, i32 %47)
  store %struct.ETF_hookinfo* %48, %struct.ETF_hookinfo** %9, align 8
  %49 = load %struct.ETF_hookinfo*, %struct.ETF_hookinfo** %9, align 8
  %50 = icmp eq %struct.ETF_hookinfo* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.ETF_hookinfo*, %struct.ETF_hookinfo** %9, align 8
  %56 = call i32 @NG_HOOK_SET_PRIVATE(i8* %54, %struct.ETF_hookinfo* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.ETF_hookinfo*, %struct.ETF_hookinfo** %9, align 8
  %59 = getelementptr inbounds %struct.ETF_hookinfo, %struct.ETF_hookinfo* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %34
  br label %61

61:                                               ; preds = %60, %16
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.ETF_hookinfo*) #1

declare dso_local %struct.ETF_hookinfo* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
