; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_write_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CUDBG_SF_SECTOR_SIZE = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_flash(%struct.adapter* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %15, align 8
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %21, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CUDBG_SF_SECTOR_SIZE, align 4
  %29 = mul i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @DIV_ROUND_UP(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 1
  %39 = call i32 @t4_flash_erase_sectors(%struct.adapter* %33, i32 %34, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %4
  br label %85

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %80, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %52, %53
  %55 = load i32, i32* @SF_PAGE_SIZE, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %12, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @SF_PAGE_SIZE, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.adapter*, %struct.adapter** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @t4_write_flash(%struct.adapter* %64, i32 %65, i32 %66, i32* %67, i32 0)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %85

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %15, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @SF_PAGE_SIZE, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %47

84:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %87

85:                                               ; preds = %71, %45
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @t4_flash_erase_sectors(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_flash(%struct.adapter*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
