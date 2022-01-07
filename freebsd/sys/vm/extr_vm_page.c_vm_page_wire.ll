; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [51 x i8] c"vm_page_wire: page %p does not belong to an object\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"vm_page_wire: fictitious page %p has zero wirings\00", align 1
@VPRC_WIRE_COUNT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"vm_page_wire: counter overflow for page %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_wire(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = bitcast %struct.TYPE_4__* %9 to i8*
  %11 = call i32 @KASSERT(i32 %8, i8* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = call i32 @vm_page_busied(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PG_FICTITIOUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @VPRC_WIRE_COUNT(i32 %30)
  %32 = icmp sge i64 %31, 1
  br label %33

33:                                               ; preds = %27, %20
  %34 = phi i1 [ true, %20 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = bitcast %struct.TYPE_4__* %36 to i8*
  %38 = call i32 @KASSERT(i32 %35, i8* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @atomic_fetchadd_int(i32* %40, i32 1)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @VPRC_WIRE_COUNT(i32 %42)
  %44 = load i64, i64* @VPRC_WIRE_COUNT_MAX, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = bitcast %struct.TYPE_4__* %47 to i8*
  %49 = call i32 @KASSERT(i32 %46, i8* %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @VPRC_WIRE_COUNT(i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = call i32 @vm_wire_add(i32 1)
  br label %55

55:                                               ; preds = %53, %33
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_4__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32*) #1

declare dso_local i64 @VPRC_WIRE_COUNT(i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @vm_wire_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
