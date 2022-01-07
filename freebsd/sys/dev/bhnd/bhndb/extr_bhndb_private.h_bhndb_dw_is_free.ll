; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_private.h_bhndb_dw_is_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_private.h_bhndb_dw_is_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_dw_alloc = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"refs out of sync with free list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_resources*, %struct.bhndb_dw_alloc*)* @bhndb_dw_is_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_dw_is_free(%struct.bhndb_resources* %0, %struct.bhndb_dw_alloc* %1) #0 {
  %3 = alloca %struct.bhndb_resources*, align 8
  %4 = alloca %struct.bhndb_dw_alloc*, align 8
  %5 = alloca i32, align 4
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %3, align 8
  store %struct.bhndb_dw_alloc* %1, %struct.bhndb_dw_alloc** %4, align 8
  %6 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %4, align 8
  %7 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %6, i32 0, i32 1
  %8 = call i32 @LIST_EMPTY(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %11 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %4, align 8
  %14 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bit_test(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %9, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bit_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
