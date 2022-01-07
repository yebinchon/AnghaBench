; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pvo_entry = type { i32 }

@pvo_tree = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"moea_unwire: pvo %p is missing PVO_WIRED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea_unwire(i32 %0, %struct.TYPE_7__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry, align 4
  %10 = alloca %struct.pvo_entry*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = call i32 @PMAP_LOCK(%struct.TYPE_7__* %11)
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @pvo_tree, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call %struct.pvo_entry* @RB_NFIND(i32 %16, i32* %18, %struct.pvo_entry* %9)
  store %struct.pvo_entry* %19, %struct.pvo_entry** %10, align 8
  br label %20

20:                                               ; preds = %52, %4
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %22 = icmp ne %struct.pvo_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %25 = call i64 @PVO_VADDR(%struct.pvo_entry* %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %58

30:                                               ; preds = %28
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PVO_WIRED, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %39 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.pvo_entry* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* @PVO_WIRED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %44 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @pvo_tree, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %57 = call %struct.pvo_entry* @RB_NEXT(i32 %53, i32* %55, %struct.pvo_entry* %56)
  store %struct.pvo_entry* %57, %struct.pvo_entry** %10, align 8
  br label %20

58:                                               ; preds = %28
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call i32 @PMAP_UNLOCK(%struct.TYPE_7__* %59)
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_7__*) #1

declare dso_local %struct.pvo_entry* @RB_NFIND(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i64 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local i32 @panic(i8*, %struct.pvo_entry*) #1

declare dso_local %struct.pvo_entry* @RB_NEXT(i32, i32*, %struct.pvo_entry*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
