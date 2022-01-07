; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_unmute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ng_bridge: %s: restoring looped back %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ng_bridge_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bridge_unmute(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_8__* @NG_HOOK_PRIVATE(i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @NG_HOOK_NODE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @LOG_INFO, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ng_bridge_nodename(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @NG_HOOK_NAME(i32 %40)
  %42 = call i32 @log(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %36, %30, %21
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  ret i32 1
}

declare dso_local %struct.TYPE_8__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @ng_bridge_nodename(i32) #1

declare dso_local i32 @NG_HOOK_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
