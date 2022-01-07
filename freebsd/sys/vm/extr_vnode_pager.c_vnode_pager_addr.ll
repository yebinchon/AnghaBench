; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VI_DOOMED = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i32*, i32*)* @vnode_pager_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_pager_addr(%struct.vnode* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VI_DOOMED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %78

25:                                               ; preds = %17
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @VOP_BMAP(%struct.vnode* %38, i32 %39, i32* null, i32* %40, i32* %41, i32* null)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %25
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DEV_BSIZE, align 4
  %52 = sdiv i32 %50, %51
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = sdiv i32 %69, %70
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %59, %56
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %24, %16
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
