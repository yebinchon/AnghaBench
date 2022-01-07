; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_vtoc8_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_vtoc8_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_vtoc8_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_vtoc8_table*, i32*, i32*)* @vtoc8_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtoc8_align(%struct.g_part_vtoc8_table* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_vtoc8_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.g_part_vtoc8_table* %0, %struct.g_part_vtoc8_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %11 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %82

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %23 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %31 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %29, %32
  %34 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %35 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %44 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %42, %45
  %47 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %48 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %27, %19, %16
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %58 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %66 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %64, %67
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %62, %54
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %76 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %79, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
