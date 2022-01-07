; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.mtx_pool = type { i64, i64, %struct.mtx* }

@.str = private unnamed_addr constant [28 x i8] c"_mtx_pool_find(): null pool\00", align 1
@HASH_MULTIPLIER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtx* @mtx_pool_find(%struct.mtx_pool* %0, i8* %1) #0 {
  %3 = alloca %struct.mtx_pool*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mtx_pool* %0, %struct.mtx_pool** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mtx_pool*, %struct.mtx_pool** %3, align 8
  %7 = icmp ne %struct.mtx_pool* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @HASH_MULTIPLIER, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = mul i64 %10, %12
  %14 = load %struct.mtx_pool*, %struct.mtx_pool** %3, align 8
  %15 = getelementptr inbounds %struct.mtx_pool, %struct.mtx_pool* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = lshr i64 %13, %16
  %18 = load %struct.mtx_pool*, %struct.mtx_pool** %3, align 8
  %19 = getelementptr inbounds %struct.mtx_pool, %struct.mtx_pool* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mtx_pool*, %struct.mtx_pool** %3, align 8
  %24 = getelementptr inbounds %struct.mtx_pool, %struct.mtx_pool* %23, i32 0, i32 2
  %25 = load %struct.mtx*, %struct.mtx** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mtx, %struct.mtx* %25, i64 %27
  ret %struct.mtx* %28
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
