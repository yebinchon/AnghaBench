; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_node_from_xref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_node_from_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrefinfo = type { i32 }

@xref_init_done = common dso_local global i64 0, align 8
@FIND_BY_XREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_node_from_xref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xrefinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @xref_init_done, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIND_BY_XREF, align 4
  %11 = call %struct.xrefinfo* @xrefinfo_find(i32 %9, i32 %10)
  store %struct.xrefinfo* %11, %struct.xrefinfo** %4, align 8
  %12 = icmp eq %struct.xrefinfo* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %8
  %16 = load %struct.xrefinfo*, %struct.xrefinfo** %4, align 8
  %17 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = call i32 @OF_peer(i32 0)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @OF_child_xref_phandle(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %15, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.xrefinfo* @xrefinfo_find(i32, i32) #1

declare dso_local i32 @OF_child_xref_phandle(i32, i32) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
