; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_setdefaultiface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_setdefaultiface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_if_index = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V_nd6_defifindex = common dso_local global i32 0, align 4
@V_nd6_defifp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_setdefaultiface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @V_if_index, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @ifnet_byindex(i32 %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %16, %13
  %23 = load i32, i32* @V_nd6_defifindex, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* @V_nd6_defifindex, align 4
  %28 = load i32, i32* @V_nd6_defifindex, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @V_nd6_defifindex, align 4
  %32 = call i32* @ifnet_byindex(i32 %31)
  store i32* %32, i32** @V_nd6_defifp, align 8
  br label %34

33:                                               ; preds = %26
  store i32* null, i32** @V_nd6_defifp, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32*, i32** @V_nd6_defifp, align 8
  %36 = call i32 @scope6_setdefault(i32* %35)
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %20, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32* @ifnet_byindex(i32) #1

declare dso_local i32 @scope6_setdefault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
