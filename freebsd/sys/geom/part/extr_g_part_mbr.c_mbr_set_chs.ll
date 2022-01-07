; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_mbr_set_chs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_mbr_set_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_table*, i32, i32*, i32*, i32*)* @mbr_set_chs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbr_set_chs(%struct.g_part_table* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %16 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %14, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %13, align 4
  %20 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %21 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %27 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %31 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 1023
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, 63
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 2
  %50 = and i32 %49, 192
  %51 = or i32 %47, %50
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
