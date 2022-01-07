; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_address_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_address_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITEM_DEBUG_CHECKS = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_address_hook(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ITEM_DEBUG_CHECKS, align 4
  %13 = call i32 (...) @TOPOLOGY_RLOCK()
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @NG_HOOK_NOT_VALID(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @NG_HOOK_PEER(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = call i64 @NG_HOOK_NOT_VALID(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @NG_PEER_NODE(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = call i64 @NG_NODE_NOT_VALID(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %20, %16, %4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @NG_FREE_ITEM(i32 %31)
  %33 = call i32 (...) @TRAP_ERROR()
  %34 = call i32 (...) @TOPOLOGY_RUNLOCK()
  %35 = load i32, i32* @ENETDOWN, align 4
  store i32 %35, i32* %5, align 4
  br label %52

36:                                               ; preds = %25
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @NG_HOOK_REF(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @NG_NODE_REF(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @NGI_SET_HOOK(i32 %41, i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @NGI_SET_NODE(i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @SET_RETADDR(i32 %47, i32 %48, i32 %49)
  %51 = call i32 (...) @TOPOLOGY_RUNLOCK()
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %36, %30
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @TOPOLOGY_RLOCK(...) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32* @NG_HOOK_PEER(i32*) #1

declare dso_local i64 @NG_NODE_NOT_VALID(i32) #1

declare dso_local i32 @NG_PEER_NODE(i32*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32 @TOPOLOGY_RUNLOCK(...) #1

declare dso_local i32 @NG_HOOK_REF(i32*) #1

declare dso_local i32 @NG_NODE_REF(i32) #1

declare dso_local i32 @NGI_SET_HOOK(i32, i32*) #1

declare dso_local i32 @NGI_SET_NODE(i32, i32) #1

declare dso_local i32 @SET_RETADDR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
