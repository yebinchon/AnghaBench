; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_graph.c_ofw_graph_get_port_by_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_graph.c_ofw_graph_get_port_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"port@%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ofw_graph_get_port_by_idx(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @PORT_MAX_NAME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = trunc i64 %13 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @ofw_bus_find_child(i64 %19, i8* %15)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @ofw_bus_find_child(i64 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %52

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @OF_child(i64 %32)
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @OF_getencprop(i64 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 4)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  br label %48

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @OF_peer(i64 %49)
  store i64 %50, i64* %7, align 8
  br label %34

51:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %46, %30, %23
  %53 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #2

declare dso_local i64 @OF_child(i64) #2

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #2

declare dso_local i64 @OF_peer(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
