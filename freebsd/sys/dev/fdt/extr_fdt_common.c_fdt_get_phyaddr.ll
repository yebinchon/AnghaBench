; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_phyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_phyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_phyaddr(i64 %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = bitcast i32* %11 to i8*
  %18 = call i64 @OF_getencprop(i64 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17, i32 4)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %92

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @OF_node_from_xref(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = bitcast i32* %12 to i8*
  %27 = call i64 @OF_getencprop(i64 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 4)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %5, align 4
  br label %92

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8**, i8*** %9, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %92

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @OF_parent(i64 %38)
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %49, %37
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = bitcast i32* %11 to i8*
  %46 = call i64 @OF_getprop(i64 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %45, i32 4)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @OF_parent(i64 %50)
  store i64 %51, i64* %10, align 8
  br label %40

52:                                               ; preds = %48, %40
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %5, align 4
  br label %92

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @device_get_parent(i32* %58)
  store i32* %59, i32** %14, align 8
  store i64 0, i64* %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @device_get_name(i32* %61)
  %63 = load i64, i64* %13, align 8
  %64 = call i32* @device_find_child(i32* %60, i32 %62, i64 %63)
  store i32* %64, i32** %15, align 8
  br label %65

65:                                               ; preds = %74, %57
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32*, i32** %15, align 8
  %70 = call i64 @ofw_bus_get_node(i32* %69)
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %82

74:                                               ; preds = %68
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @device_get_name(i32* %78)
  %80 = load i64, i64* %13, align 8
  %81 = call i32* @device_find_child(i32* %77, i32 %79, i64 %80)
  store i32* %81, i32** %15, align 8
  br label %65

82:                                               ; preds = %73, %65
  %83 = load i32*, i32** %15, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %5, align 4
  br label %92

87:                                               ; preds = %82
  %88 = load i32*, i32** %15, align 8
  %89 = call i64 @device_get_softc(i32* %88)
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8**, i8*** %9, align 8
  store i8* %90, i8** %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %85, %55, %36, %29, %20
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @OF_getencprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @OF_node_from_xref(i32) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32* @device_find_child(i32*, i32, i64) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @device_get_softc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
