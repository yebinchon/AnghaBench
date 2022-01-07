; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@PQ_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"vm_page_unwire: invalid queue %u request for page %p\00", align 1
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"vm_page_unwire: wire count underflow for page %p\00", align 1
@PQ_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_unwire(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PQ_COUNT, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = bitcast %struct.TYPE_10__* %12 to i8*
  %14 = call i32 @KASSERT(i32 %10, i8* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VPO_UNMANAGED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = call i64 @vm_page_unwire_noq(%struct.TYPE_10__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call i32 @vm_page_free(%struct.TYPE_10__* %31)
  br label %33

33:                                               ; preds = %30, %25, %21
  br label %100

34:                                               ; preds = %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %73, %34
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @VPRC_WIRE_COUNT(i32 %40)
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = bitcast %struct.TYPE_10__* %44 to i8*
  %46 = call i32 @KASSERT(i32 %43, i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @VPRC_WIRE_COUNT(i32 %50)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call i32 @vm_page_lock(%struct.TYPE_10__* %54)
  store i32 1, i32* %6, align 4
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @PQ_ACTIVE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i64 @vm_page_queue(%struct.TYPE_10__* %60)
  %62 = load i64, i64* @PQ_ACTIVE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i32 @vm_page_reference(%struct.TYPE_10__* %65)
  br label %71

67:                                               ; preds = %59, %53
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @vm_page_mvqueue(%struct.TYPE_10__* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %49, %39
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = bitcast i64* %75 to i32*
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @atomic_fcmpset_rel_int(i32* %76, i32* %5, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %39, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = call i32 @vm_page_unlock(%struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @VPRC_WIRE_COUNT(i32 %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = call i32 @vm_wire_sub(i32 1)
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = call i32 @vm_page_free(%struct.TYPE_10__* %97)
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %33, %99, %88
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_page_unwire_noq(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_10__*) #1

declare dso_local i32 @VPRC_WIRE_COUNT(i32) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @vm_page_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_page_reference(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_page_mvqueue(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @atomic_fcmpset_rel_int(i32*, i32*, i32) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_wire_sub(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
