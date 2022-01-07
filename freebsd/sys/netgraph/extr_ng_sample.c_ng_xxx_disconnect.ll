; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XXX_hookinfo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_xxx_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_xxx_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @NG_HOOK_PRIVATE(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @NG_HOOK_PRIVATE(i32 %7)
  %9 = inttoptr i64 %8 to %struct.XXX_hookinfo*
  %10 = getelementptr inbounds %struct.XXX_hookinfo, %struct.XXX_hookinfo* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  br label %11

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @NG_HOOK_NODE(i32 %12)
  %14 = call i64 @NG_NODE_NUMHOOKS(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @NG_HOOK_NODE(i32 %17)
  %19 = call i64 @NG_NODE_IS_VALID(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @NG_HOOK_NODE(i32 %22)
  %24 = call i32 @ng_rmnode_self(i32 %23)
  br label %25

25:                                               ; preds = %21, %16, %11
  ret i32 0
}

declare dso_local i64 @NG_HOOK_PRIVATE(i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
