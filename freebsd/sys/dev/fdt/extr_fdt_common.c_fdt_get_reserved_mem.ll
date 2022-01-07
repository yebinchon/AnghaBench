; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_reserved_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_reserved_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i32 }

@FDT_REG_CELLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/reserved-memory\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Too many address and size cells %d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_reserved_mem(%struct.mem_region* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_region*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mem_region* %0, %struct.mem_region** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @FDT_REG_CELLS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = call i32 @OF_finddevice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @fdt_addrsize_cells(i32 %25, i32* %10, i32* %11)
  store i32 %26, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %81

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @FDT_REG_CELLS, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @OF_child(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %75, %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @OF_hasprop(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %75

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = mul nuw i64 4, %16
  %54 = trunc i64 %53 to i32
  %55 = call i32 @OF_getprop(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %18, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %75

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %62, i64 %64
  %66 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %65, i32 0, i32 1
  %67 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %67, i64 %69
  %71 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %70, i32 0, i32 0
  %72 = call i32 @fdt_data_to_res(i32* %18, i32 %60, i32 %61, i32* %66, i32* %71)
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %59, %58, %50
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @OF_peer(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %43

78:                                               ; preds = %43
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %28, %22
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i32 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @panic(i8*, i32, i32) #2

declare dso_local i32 @OF_child(i32) #2

declare dso_local i32 @OF_hasprop(i32, i8*) #2

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @fdt_data_to_res(i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @OF_peer(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
