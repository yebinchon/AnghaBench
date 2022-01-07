; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_intr_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_intr_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_intr_isrc = type { i32, i32*, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_intr_isrc* @bhndb_alloc_intr_isrc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bhndb_intr_isrc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bhndb_intr_isrc*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @M_BHND, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = call %struct.bhndb_intr_isrc* @malloc(i32 24, i32 %15, i32 %16)
  store %struct.bhndb_intr_isrc* %17, %struct.bhndb_intr_isrc** %14, align 8
  %18 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %19 = icmp eq %struct.bhndb_intr_isrc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.bhndb_intr_isrc* null, %struct.bhndb_intr_isrc** %7, align 8
  br label %49

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %24 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %27 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %31 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32* @bus_alloc_resource(i32 %28, i32 %29, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %38 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %40 = getelementptr inbounds %struct.bhndb_intr_isrc, %struct.bhndb_intr_isrc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %21
  %44 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  %45 = load i32, i32* @M_BHND, align 4
  %46 = call i32 @free(%struct.bhndb_intr_isrc* %44, i32 %45)
  store %struct.bhndb_intr_isrc* null, %struct.bhndb_intr_isrc** %7, align 8
  br label %49

47:                                               ; preds = %21
  %48 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %14, align 8
  store %struct.bhndb_intr_isrc* %48, %struct.bhndb_intr_isrc** %7, align 8
  br label %49

49:                                               ; preds = %47, %43, %20
  %50 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %7, align 8
  ret %struct.bhndb_intr_isrc* %50
}

declare dso_local %struct.bhndb_intr_isrc* @malloc(i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.bhndb_intr_isrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
