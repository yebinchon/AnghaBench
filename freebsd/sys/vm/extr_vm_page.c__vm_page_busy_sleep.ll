; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c__vm_page_busy_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c__vm_page_busy_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@VPB_UNBUSIED = common dso_local global i32 0, align 4
@VPB_BIT_SHARED = common dso_local global i32 0, align 4
@VPB_BIT_WAITERS = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32, i32)* @_vm_page_busy_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_page_busy_sleep(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @vm_object_busied(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @VM_OBJECT_DROP(i32* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @vm_object_busy_wait(i32* %25, i8* %26)
  br label %83

28:                                               ; preds = %14, %5
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = call i32 @sleepq_lock(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @VPB_UNBUSIED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %59, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @VPB_BIT_SHARED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @VPB_BIT_WAITERS, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @VPB_BIT_WAITERS, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @atomic_cmpset_int(i32* %52, i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50, %40, %28
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @VM_OBJECT_DROP(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = call i32 @sleepq_release(%struct.TYPE_7__* %66)
  br label %83

68:                                               ; preds = %50, %45
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @VM_OBJECT_DROP(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = call i32 (...) @DROP_GIANT()
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @sleepq_add(%struct.TYPE_7__* %76, i32* null, i8* %77, i32 0, i32 0)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = load i32, i32* @PVM, align 4
  %81 = call i32 @sleepq_wait(%struct.TYPE_7__* %79, i32 %80)
  %82 = call i32 (...) @PICKUP_GIANT()
  br label %83

83:                                               ; preds = %74, %65, %24
  ret void
}

declare dso_local i64 @vm_object_busied(i32*) #1

declare dso_local i32 @VM_OBJECT_DROP(i32*) #1

declare dso_local i32 @vm_object_busy_wait(i32*, i8*) #1

declare dso_local i32 @sleepq_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.TYPE_7__*) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_add(%struct.TYPE_7__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_wait(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
