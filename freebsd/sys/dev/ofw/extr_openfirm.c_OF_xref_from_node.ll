; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_xref_from_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_xref_from_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrefinfo = type { i32 }

@xref_init_done = common dso_local global i64 0, align 8
@FIND_BY_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_xref_from_node(i32 %0) #0 {
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
  %10 = load i32, i32* @FIND_BY_NODE, align 4
  %11 = call %struct.xrefinfo* @xrefinfo_find(i32 %9, i32 %10)
  store %struct.xrefinfo* %11, %struct.xrefinfo** %4, align 8
  %12 = icmp eq %struct.xrefinfo* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %8
  %16 = load %struct.xrefinfo*, %struct.xrefinfo** %4, align 8
  %17 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5, i32 4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32 4)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @OF_getencprop(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32 4)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %27, %23, %19
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %15, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.xrefinfo* @xrefinfo_find(i32, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
