; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_deactivate_noreuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_deactivate_noreuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"vm_page_deactivate_noreuse: page %p has no object\00", align 1
@VPO_UNMANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_deactivate_noreuse(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = bitcast %struct.TYPE_5__* %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VPO_UNMANAGED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i32 @vm_page_wired(%struct.TYPE_5__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = call i32 @_vm_page_deactivate_noreuse(%struct.TYPE_5__* %22)
  br label %24

24:                                               ; preds = %21, %17, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_5__*) #1

declare dso_local i32 @_vm_page_deactivate_noreuse(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
