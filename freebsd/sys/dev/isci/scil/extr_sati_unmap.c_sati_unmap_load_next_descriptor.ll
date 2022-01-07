; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_load_next_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_load_next_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i64 }

@SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR = common dso_local global i64 0, align 8
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_unmap_load_next_descriptor(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i32], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %30
  %32 = call i32 @sati_get_data_byte(%struct.TYPE_8__* %23, i8* %24, i64 %25, i32* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %14

36:                                               ; preds = %14
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %38 = load i32, i32* %37, align 16
  %39 = shl i32 %38, 24
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %47, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = shl i32 %54, 56
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 48
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 40
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 32
  %67 = or i32 %63, %66
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %69 = load i32, i32* %68, align 16
  %70 = shl i32 %69, 24
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 8
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %79, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* @SATI_SUCCESS, align 4
  ret i32 %92
}

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_8__*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
