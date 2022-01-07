; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_valid_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_valid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@DEV_BSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vm_page_set_valid_range: page %p is dirty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_set_valid_range(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @vm_page_assert_busied(%struct.TYPE_7__* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %103

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DEV_BSIZE, align 4
  %18 = call i32 @rounddown2(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DEV_BSHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = shl i32 1, %27
  %29 = and i32 %24, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @pmap_zero_page_area(%struct.TYPE_7__* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %21, %15
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DEV_BSIZE, align 4
  %44 = call i32 @rounddown2(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %38
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DEV_BSHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = shl i32 1, %53
  %55 = and i32 %50, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DEV_BSIZE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DEV_BSIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  %65 = sub nsw i32 %60, %64
  %66 = call i32 @pmap_zero_page_area(%struct.TYPE_7__* %58, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %57, %47, %38
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @vm_page_bits(i32 %72, i32 %73)
  %75 = and i32 %71, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = bitcast %struct.TYPE_7__* %82 to i8*
  %84 = call i32 @KASSERT(i32 %81, i8* %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @vm_page_bits(i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = call i64 @vm_page_xbusied(%struct.TYPE_7__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %67
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %103

97:                                               ; preds = %67
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @vm_page_bits_set(%struct.TYPE_7__* %98, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %14, %97, %91
  ret void
}

declare dso_local i32 @vm_page_assert_busied(%struct.TYPE_7__*) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @pmap_zero_page_area(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_bits(i32, i32) #1

declare dso_local i64 @vm_page_xbusied(%struct.TYPE_7__*) #1

declare dso_local i32 @vm_page_bits_set(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
