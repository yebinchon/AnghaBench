; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__iflib_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__iflib_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.resource* }
%struct.resource = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@IFC_LEGACY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate IRQ for rid %d, name %s.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"filter and handler can't both be non-NULL\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to setup interrupt for rid %d, name %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*, i32*, i8*, i8*)* @_iflib_irq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iflib_irq_alloc(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* null, i8** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %25, i32* %19, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFC_LEGACY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load i32, i32* @RF_SHAREABLE, align 4
  %34 = load i32, i32* %19, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %32, %7
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 512
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @SYS_RES_IRQ, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call %struct.resource* @bus_alloc_resource_any(i32 %42, i32 %43, i32* %20, i32 %44)
  store %struct.resource* %45, %struct.resource** %16, align 8
  %46 = load %struct.resource*, %struct.resource** %16, align 8
  %47 = icmp eq %struct.resource* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %8, align 4
  br label %105

54:                                               ; preds = %36
  %55 = load %struct.resource*, %struct.resource** %16, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store %struct.resource* %55, %struct.resource** %57, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %13, align 8
  %62 = icmp eq i32* %61, null
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi i1 [ true, %54 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @KASSERT(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.resource*, %struct.resource** %16, align 8
  %69 = load i32, i32* @INTR_MPSAFE, align 4
  %70 = load i32, i32* @INTR_TYPE_NET, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @bus_setup_intr(i32 %67, %struct.resource* %68, i32 %71, i32* %72, i32* %73, i8* %74, i8** %17)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %63
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %15, align 8
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %85 ]
  %88 = load i32, i32* %21, align 4
  %89 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %87, i32 %88)
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %8, align 4
  br label %105

91:                                               ; preds = %63
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.resource*, %struct.resource** %16, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @bus_describe_intr(i32 %95, %struct.resource* %96, i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %86, %48
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

declare dso_local i32 @bus_describe_intr(i32, %struct.resource*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
