; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookinfo = type { i64, i64, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32* }

@NG_CAR_QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_car_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_car_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hookinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.hookinfo* @NG_HOOK_PRIVATE(i32 %6)
  store %struct.hookinfo* %7, %struct.hookinfo** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @NG_HOOK_NODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %13 = icmp ne %struct.hookinfo* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %45, %14
  %16 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %17 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %20 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %15
  %24 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %25 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %28 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NG_FREE_M(i32 %31)
  %33 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %34 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %38 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NG_CAR_QUEUE_SIZE, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %44 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %23
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %48 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %63

59:                                               ; preds = %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %65 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %1
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @NG_HOOK_NODE(i32 %67)
  %69 = call i64 @NG_NODE_NUMHOOKS(i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @NG_HOOK_NODE(i32 %72)
  %74 = call i64 @NG_NODE_IS_VALID(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @NG_HOOK_NODE(i32 %77)
  %79 = call i32 @ng_rmnode_self(i32 %78)
  br label %80

80:                                               ; preds = %76, %71, %66
  ret i32 0
}

declare dso_local %struct.hookinfo* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_M(i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
