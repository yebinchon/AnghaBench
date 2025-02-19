; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPFNOSUPPORT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_iface_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @get_iffam_from_name(i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @NG_NODE_PRIVATE(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @PRIV_WLOCK(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32** @get_hook_from_iffam(i32 %22, i32* %23)
  store i32** %24, i32*** %10, align 8
  %25 = load i32**, i32*** %10, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @PRIV_WUNLOCK(i32 %29)
  %31 = load i32, i32* @EISCONN, align 4
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %19
  %33 = load i32*, i32** %6, align 8
  %34 = load i32**, i32*** %10, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @NG_HOOK_HI_STACK(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @NG_HOOK_SET_TO_INBOUND(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @PRIV_WUNLOCK(i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %28, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @get_iffam_from_name(i8*) #1

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @PRIV_WLOCK(i32) #1

declare dso_local i32** @get_hook_from_iffam(i32, i32*) #1

declare dso_local i32 @PRIV_WUNLOCK(i32) #1

declare dso_local i32 @NG_HOOK_HI_STACK(i32*) #1

declare dso_local i32 @NG_HOOK_SET_TO_INBOUND(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
