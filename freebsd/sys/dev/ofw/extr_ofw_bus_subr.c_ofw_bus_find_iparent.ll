; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_find_iparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_find_iparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ofw_bus_find_iparent(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @OF_searchencprop(i64 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64* %3, i32 8)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %18, %7
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @OF_hasprop(i64 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @OF_parent(i64 %19)
  store i64 %20, i64* %3, align 8
  br label %9

21:                                               ; preds = %16, %9
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @OF_xref_from_node(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i32 @OF_searchencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_xref_from_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
