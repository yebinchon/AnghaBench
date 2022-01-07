; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_allocpte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_allocpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@PDRSHIFT = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i64, i64)* @pmap_allocpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @pmap_allocpte(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PDRSHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %63, %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PG_PS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @pmap_demote_pde(%struct.TYPE_10__* %25, i32* %30, i64 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %24, %13
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PG_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = call %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i32 %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %9, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %65

51:                                               ; preds = %39
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.TYPE_9__* @_pmap_allocpte(%struct.TYPE_10__* %52, i64 %53, i64 %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %9, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @PMAP_ENTER_NOSLEEP, align 8
  %61 = and i64 %59, %60
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %13

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  ret %struct.TYPE_9__* %66
}

declare dso_local i32 @pmap_demote_pde(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_9__* @_pmap_allocpte(%struct.TYPE_10__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
