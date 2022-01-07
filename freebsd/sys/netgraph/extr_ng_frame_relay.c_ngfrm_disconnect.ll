; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }
%struct.ctxinfo = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ngfrm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngfrm_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ctxinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @NG_HOOK_NODE(i32 %6)
  %8 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.ctxinfo* @NG_HOOK_PRIVATE(i32 %9)
  store %struct.ctxinfo* %10, %struct.ctxinfo** %4, align 8
  %11 = load %struct.ctxinfo*, %struct.ctxinfo** %4, align 8
  %12 = icmp ne %struct.ctxinfo* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.ctxinfo*, %struct.ctxinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.ctxinfo*, %struct.ctxinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.ctxinfo*, %struct.ctxinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ctxinfo, %struct.ctxinfo* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @NG_HOOK_NODE(i32 %36)
  %38 = call i64 @NG_NODE_NUMHOOKS(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @NG_HOOK_NODE(i32 %41)
  %43 = call i64 @NG_NODE_IS_VALID(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @NG_HOOK_NODE(i32 %46)
  %48 = call i32 @ng_rmnode_self(i32 %47)
  br label %49

49:                                               ; preds = %45, %40, %35
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.ctxinfo* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
