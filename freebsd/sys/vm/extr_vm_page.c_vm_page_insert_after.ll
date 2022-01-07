; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_insert_after.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_insert_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [44 x i8] c"vm_page_insert_after: page already inserted\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"vm_page_insert_after: object doesn't contain mpred\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"vm_page_insert_after: mpred doesn't precede pindex\00", align 1
@listq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"vm_page_insert_after: msucc doesn't succeed pindex\00", align 1
@VPRC_OBJREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i64, %struct.TYPE_14__*)* @vm_page_insert_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_page_insert_after(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = icmp eq %struct.TYPE_15__* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = load i32, i32* @listq, align 4
  %38 = call %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__* %36, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %10, align 8
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %10, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @KASSERT(i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %43
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @VPRC_OBJREF, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = call i64 @vm_radix_insert(i32* %67, %struct.TYPE_14__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %54
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @VPRC_OBJREF, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  store i32 1, i32* %5, align 4
  br label %87

82:                                               ; preds = %54
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = call i32 @vm_page_insert_radixdone(%struct.TYPE_14__* %83, %struct.TYPE_15__* %84, %struct.TYPE_14__* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @vm_radix_insert(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @vm_page_insert_radixdone(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
