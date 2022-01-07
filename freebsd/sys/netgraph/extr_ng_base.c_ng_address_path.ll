; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_address_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_address_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITEM_DEBUG_CHECKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_address_path(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32, i32* @ITEM_DEBUG_CHECKS, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @ng_path2noderef(i32* %14, i8* %15, i32** %10, i32** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @NG_FREE_ITEM(i32 %20)
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @NGI_SET_NODE(i32 %24, i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @NGI_SET_HOOK(i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @SET_RETADDR(i32 %34, i32* %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ng_path2noderef(i32*, i8*, i32**, i32**) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NGI_SET_NODE(i32, i32*) #1

declare dso_local i32 @NGI_SET_HOOK(i32, i32*) #1

declare dso_local i32 @SET_RETADDR(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
