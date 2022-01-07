; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_try_blocked_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_try_blocked_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"vm_page_try_blocked_op: page %p has no object\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"vm_page_try_blocked_op: page %p is not busy\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"vm_page_try_blocked_op: page %p has no references\00", align 1
@VPRC_BLOCKED = common dso_local global i32 0, align 4
@VPRC_OBJREF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"vm_page_try_blocked_op: unexpected refcount value %u for %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, void (%struct.TYPE_7__*)*)* @vm_page_try_blocked_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_page_try_blocked_op(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca void (%struct.TYPE_7__*)*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store void (%struct.TYPE_7__*)* %1, void (%struct.TYPE_7__*)** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VPO_UNMANAGED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ false, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = bitcast %struct.TYPE_7__* %21 to i8*
  %23 = call i32 @KASSERT(i32 %20, i8* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @vm_page_busied(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = bitcast %struct.TYPE_7__* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %48, %18
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = bitcast %struct.TYPE_7__* %40 to i8*
  %42 = call i32 @KASSERT(i32 %39, i8* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @VPRC_WIRE_COUNT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %81

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VPRC_BLOCKED, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @atomic_fcmpset_int(i32* %50, i32* %6, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %36, label %57

57:                                               ; preds = %48
  %58 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  call void %58(%struct.TYPE_7__* %59)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = load i32, i32* @VPRC_BLOCKED, align 4
  %62 = call i32 @vm_page_drop(%struct.TYPE_7__* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @VM_OBJECT_WOWNED(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @VPRC_BLOCKED, align 4
  %71 = load i32, i32* @VPRC_OBJREF, align 4
  %72 = or i32 %70, %71
  %73 = icmp eq i32 %69, %72
  br label %74

74:                                               ; preds = %68, %57
  %75 = phi i1 [ true, %57 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = bitcast %struct.TYPE_7__* %78 to i8*
  %80 = call i32 @KASSERT(i32 %76, i8* %79)
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %46
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32*) #1

declare dso_local i64 @VPRC_WIRE_COUNT(i32) #1

declare dso_local i32 @atomic_fcmpset_int(i32*, i32*, i32) #1

declare dso_local i32 @vm_page_drop(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @VM_OBJECT_WOWNED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
