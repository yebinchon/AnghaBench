; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isahint.c_isa_hinted_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isahint.c_isa_hinted_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@ISA_ORDER_SENSITIVE = common dso_local global i32 0, align 4
@ISA_ORDER_SPECULATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"portsize\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"maddr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"msize\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"drq\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@ISACFGATTR_HINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_hinted_child(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @resource_int_value(i8* %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @resource_int_value(i8* %17, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ISA_ORDER_SENSITIVE, align 4
  store i32 %23, i32* %11, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ISA_ORDER_SPECULATIVE, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @BUS_ADD_CHILD(i64 %27, i32 %28, i8* %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %112

35:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @resource_int_value(i8* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @resource_int_value(i8* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %35
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @SYS_RES_IOPORT, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @bus_set_resource(i64 %48, i32 %49, i32 0, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @resource_int_value(i8* %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @resource_int_value(i8* %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %53
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @bus_set_resource(i64 %66, i32 %67, i32 0, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @resource_int_value(i8* %72, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @SYS_RES_IRQ, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @bus_set_resource(i64 %80, i32 %81, i32 0, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %79, %76, %71
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @resource_int_value(i8* %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @SYS_RES_DRQ, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @bus_set_resource(i64 %93, i32 %94, i32 0, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %92, %89, %84
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @resource_disabled(i8* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @device_disable(i64 %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @isa_get_configattr(i64 %107)
  %109 = load i32, i32* @ISACFGATTR_HINTS, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @isa_set_configattr(i64 %106, i32 %110)
  br label %112

112:                                              ; preds = %105, %34
  ret void
}

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i64 @BUS_ADD_CHILD(i64, i32, i8*, i32) #1

declare dso_local i32 @bus_set_resource(i64, i32, i32, i32, i32) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_disable(i64) #1

declare dso_local i32 @isa_set_configattr(i64, i32) #1

declare dso_local i32 @isa_get_configattr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
