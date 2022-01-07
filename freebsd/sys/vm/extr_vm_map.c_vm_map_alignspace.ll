; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_alignspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_alignspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"caller failed to provide space %#jx at address %p\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32, i32, i32)* @vm_map_alignspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_alignspace(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @VM_MAP_ASSERT_LOCKED(i32 %18)
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @vm_map_findspace(i32 %23, i32 %24, i32 %25)
  %27 = icmp eq i32 %22, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  br label %34

34:                                               ; preds = %109, %7
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @pmap_align_superpage(i32 %38, i32 %39, i32* %40, i32 %41)
  br label %62

43:                                               ; preds = %34
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %50, %43
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %69, i32* %8, align 4
  br label %110

70:                                               ; preds = %62
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %75, i32* %8, align 4
  br label %110

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @vm_map_findspace(i32 %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @vm_map_max(i32 %86)
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92, %76
  %100 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %100, i32* %8, align 4
  br label %110

101:                                              ; preds = %92, %89
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %108, i32* %8, align 4
  br label %110

109:                                              ; preds = %101
  br label %34

110:                                              ; preds = %107, %99, %74, %68
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_findspace(i32, i32, i32) #1

declare dso_local i32 @pmap_align_superpage(i32, i32, i32*, i32) #1

declare dso_local i32 @vm_map_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
