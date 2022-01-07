; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_wire_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_wire_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"vm_page_wire_mapped: wiring unreferenced page %p\00", align 1
@VPRC_BLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_wire_mapped(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = bitcast %struct.TYPE_3__* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @VPRC_BLOCKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @atomic_fcmpset_int(i32* %23, i32* %4, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %8, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @VPRC_WIRE_COUNT(i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @vm_wire_add(i32 1)
  br label %35

35:                                               ; preds = %33, %29
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_fcmpset_int(i32*, i32*, i32) #1

declare dso_local i64 @VPRC_WIRE_COUNT(i32) #1

declare dso_local i32 @vm_wire_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
