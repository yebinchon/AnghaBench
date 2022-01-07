; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_make_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_make_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_type = type { i32 (i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_make_node(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ng_type*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (...) @TRAP_ERROR()
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.ng_type* @ng_findtype(i8* %14)
  store %struct.ng_type* %15, %struct.ng_type** %6, align 8
  %16 = icmp eq %struct.ng_type* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.ng_type*, %struct.ng_type** %6, align 8
  %21 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = icmp ne i32 (i32)* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load %struct.ng_type*, %struct.ng_type** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ng_make_node_common(%struct.ng_type* %25, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.ng_type*, %struct.ng_type** %6, align 8
  %31 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %32(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NG_NODE_UNREF(i32 %39)
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %24
  br label %46

43:                                               ; preds = %19
  %44 = call i32 (...) @TRAP_ERROR()
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %17, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local %struct.ng_type* @ng_findtype(i8*) #1

declare dso_local i32 @ng_make_node_common(%struct.ng_type*, i32*) #1

declare dso_local i32 @NG_NODE_UNREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
