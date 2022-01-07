; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_isa.c_atkbdc_isa_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_isa.c_atkbdc_isa_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32* }

@M_ATKBDDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@KBDC_RID_KBD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i8*, i32)* @atkbdc_isa_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @atkbdc_isa_add_child(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @device_get_softc(i32* %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__**
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %11, align 8
  %18 = load i32, i32* @M_ATKBDDEV, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.TYPE_7__* @malloc(i32 4, i32 %18, i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %93

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @device_add_child_ordered(i32* %27, i64 %28, i8* %29, i32 %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = load i32, i32* @M_ATKBDDEV, align 4
  %37 = call i32 @free(%struct.TYPE_7__* %35, i32 %36)
  %38 = load i32*, i32** %12, align 8
  store i32* %38, i32** %5, align 8
  br label %93

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = call i32 @resource_list_init(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @KBDC_RID_KBD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @resource_int_value(i8* %55, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %66

61:                                               ; preds = %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @rman_get_start(i32* %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @resource_list_add(i32* %71, i32 %72, i64 %75, i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %69, %66
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @resource_disabled(i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @device_disable(i32* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = call i32 @device_set_ivars(i32* %89, %struct.TYPE_7__* %90)
  %92 = load i32*, i32** %12, align 8
  store i32* %92, i32** %5, align 8
  br label %93

93:                                               ; preds = %88, %34, %25
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i64 @device_get_softc(i32*) #1

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local i32* @device_add_child_ordered(i32*, i64, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_disable(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
