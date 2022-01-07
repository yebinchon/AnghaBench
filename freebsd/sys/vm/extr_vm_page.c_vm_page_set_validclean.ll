; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_validclean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_validclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@DEV_BSHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@PGA_NOSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_set_validclean(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i32 @vm_page_assert_busied(%struct.TYPE_10__* %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %130

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DEV_BSIZE, align 4
  %19 = call i32 @rounddown2(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DEV_BSHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = shl i32 1, %28
  %30 = and i32 %25, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @pmap_zero_page_area(%struct.TYPE_10__* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %22, %16
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DEV_BSIZE, align 4
  %45 = call i32 @rounddown2(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DEV_BSHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = shl i32 1, %54
  %56 = and i32 %51, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @DEV_BSIZE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DEV_BSIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sub nsw i32 %61, %65
  %67 = call i32 @pmap_zero_page_area(%struct.TYPE_10__* %59, i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %58, %48, %39
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @vm_page_bits(i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i64 @vm_page_xbusied(%struct.TYPE_10__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %90

84:                                               ; preds = %68
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @vm_page_bits_set(%struct.TYPE_10__* %85, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = call i32 @pmap_clear_modify(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %101, %97
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = load i32, i32* @PGA_NOSYNC, align 4
  %109 = call i32 @vm_page_aflag_clear(%struct.TYPE_10__* %107, i32 %108)
  br label %130

110:                                              ; preds = %93, %90
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = call i64 @vm_page_xbusied(%struct.TYPE_10__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %129

125:                                              ; preds = %114, %110
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @vm_page_clear_dirty_mask(%struct.TYPE_10__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %118
  br label %130

130:                                              ; preds = %15, %129, %104
  ret void
}

declare dso_local i32 @vm_page_assert_busied(%struct.TYPE_10__*) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @pmap_zero_page_area(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vm_page_bits(i32, i32) #1

declare dso_local i64 @vm_page_xbusied(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_page_bits_set(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @pmap_clear_modify(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_page_clear_dirty_mask(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
