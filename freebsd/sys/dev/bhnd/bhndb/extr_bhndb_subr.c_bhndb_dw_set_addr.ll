; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_set_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_dw_alloc = type { i32, %struct.bhndb_regwin* }
%struct.bhndb_regwin = type { i64 }

@.str = private unnamed_addr constant [57 x i8] c"attempting to set the target address on an in-use window\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_dw_set_addr(i32 %0, %struct.bhndb_resources* %1, %struct.bhndb_dw_alloc* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_resources*, align 8
  %9 = alloca %struct.bhndb_dw_alloc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bhndb_regwin*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.bhndb_resources* %1, %struct.bhndb_resources** %8, align 8
  store %struct.bhndb_dw_alloc* %2, %struct.bhndb_dw_alloc** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %16 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %15, i32 0, i32 1
  %17 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %16, align 8
  store %struct.bhndb_regwin* %17, %struct.bhndb_regwin** %12, align 8
  %18 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %19 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %20 = call i64 @bhndb_dw_is_free(%struct.bhndb_resources* %18, %struct.bhndb_dw_alloc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %24 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %23, i32 0, i32 0
  %25 = call i64 @mtx_owned(i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %5
  %28 = phi i1 [ true, %5 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %33 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = srem i64 %31, %34
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %13, align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %41 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %43 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %27
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %54 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %53, i32 0, i32 1
  %55 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %54, align 8
  %56 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %57 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @BHNDB_SET_WINDOW_ADDR(i32 %52, %struct.bhndb_regwin* %55, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %9, align 8
  %64 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %62, %49
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @bhndb_dw_is_free(%struct.bhndb_resources*, %struct.bhndb_dw_alloc*) #1

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @BHNDB_SET_WINDOW_ADDR(i32, %struct.bhndb_regwin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
