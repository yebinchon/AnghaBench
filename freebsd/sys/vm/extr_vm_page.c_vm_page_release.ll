; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vm_page_release: page %p is unmanaged\00", align 1
@VPR_TRYFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"vm_page_unwire: wire count underflow for page %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_release(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VPO_UNMANAGED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = bitcast %struct.TYPE_9__* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VPR_TRYFREE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %47, %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = call i64 @atomic_load_ptr(i32** %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %50

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i64 @vm_page_busied(%struct.TYPE_9__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @VM_OBJECT_TRYWLOCK(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31
  store i32* null, i32** %5, align 8
  br label %50

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @VM_OBJECT_WUNLOCK(i32* %48)
  br label %23

50:                                               ; preds = %46, %39, %30
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @__predict_true(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @vm_page_release_locked(%struct.TYPE_9__* %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @VM_OBJECT_WUNLOCK(i32* %60)
  br label %114

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %88, %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @VPRC_WIRE_COUNT(i32 %68)
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = bitcast %struct.TYPE_9__* %72 to i8*
  %74 = call i32 @KASSERT(i32 %71, i8* %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @VPRC_WIRE_COUNT(i32 %78)
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = call i32 @vm_page_lock(%struct.TYPE_9__* %82)
  store i32 1, i32* %7, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @vm_page_release_toq(%struct.TYPE_9__* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %77, %67
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @atomic_fcmpset_rel_int(i32* %90, i32* %6, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %67, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = call i32 @vm_page_unlock(%struct.TYPE_9__* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @VPRC_WIRE_COUNT(i32 %103)
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = call i32 @vm_wire_sub(i32 1)
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = call i32 @vm_page_free(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %56, %113, %102
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_ptr(i32**) #1

declare dso_local i64 @vm_page_busied(%struct.TYPE_9__*) #1

declare dso_local i32 @VM_OBJECT_TRYWLOCK(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @vm_page_release_locked(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @VPRC_WIRE_COUNT(i32) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_page_release_toq(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @atomic_fcmpset_rel_int(i32*, i32*, i32) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_wire_sub(i32) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
