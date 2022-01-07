; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_enter_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_enter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_QUICK_LOCKED = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_enter_object(i32 %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i64 @atop(i64 %22)
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %13, align 8
  br label %25

25:                                               ; preds = %40, %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %28, %25
  %39 = phi i1 [ false, %25 ], [ %37, %28 ]
  br i1 %39, label %40, label %60

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i64 @ptoa(i64 %44)
  %46 = add nsw i64 %43, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @VM_PROT_READ, align 4
  %50 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %54 = load i32, i32* @PMAP_ENTER_QUICK_LOCKED, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @moea64_enter(i32 %41, i32 %42, i64 %46, %struct.TYPE_6__* %47, i32 %52, i32 %55, i32 0)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = load i32, i32* @listq, align 4
  %59 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %57, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %13, align 8
  br label %25

60:                                               ; preds = %38
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @moea64_enter(i32, i32, i64, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
