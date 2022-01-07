; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_return_stolen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_return_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_dw_alloc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to restore register window target %#jx: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhndb_dw_return_stolen(i32 %0, %struct.bhndb_resources* %1, %struct.bhndb_dw_alloc* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_resources*, align 8
  %7 = alloca %struct.bhndb_dw_alloc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.bhndb_resources* %1, %struct.bhndb_resources** %6, align 8
  store %struct.bhndb_dw_alloc* %2, %struct.bhndb_dw_alloc** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.bhndb_resources*, %struct.bhndb_resources** %6, align 8
  %11 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %10, i32 0, i32 0
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bhndb_resources*, %struct.bhndb_resources** %6, align 8
  %16 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @bhndb_dw_set_addr(i32 %14, %struct.bhndb_resources* %15, %struct.bhndb_dw_alloc* %16, i64 %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load %struct.bhndb_resources*, %struct.bhndb_resources** %6, align 8
  %28 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock_spin(i32* %28)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bhndb_dw_set_addr(i32, %struct.bhndb_resources*, %struct.bhndb_dw_alloc*, i64, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
