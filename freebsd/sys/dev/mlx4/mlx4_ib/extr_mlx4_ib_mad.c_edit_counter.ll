; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_edit_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_edit_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_counter = type { i32, i32, i32, i32 }
%struct.ib_pma_portcounters = type { i32, i32, i32, i32 }
%struct.ib_pma_portcounters_ext = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_counter*, i8*, i32)* @edit_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edit_counter(%struct.mlx4_counter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_counter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.ib_pma_portcounters_ext*, align 8
  store %struct.mlx4_counter* %0, %struct.mlx4_counter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %76 [
    i32 129, label %10
    i32 128, label %47
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %12, %struct.ib_pma_portcounters** %7, align 8
  %13 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %14 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be64_to_cpu(i32 %18)
  %20 = ashr i32 %19, 2
  %21 = call i32 @ASSIGN_32BIT_COUNTER(i32 %15, i32 %20)
  %22 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %23 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be64_to_cpu(i32 %27)
  %29 = ashr i32 %28, 2
  %30 = call i32 @ASSIGN_32BIT_COUNTER(i32 %24, i32 %29)
  %31 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %32 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be64_to_cpu(i32 %36)
  %38 = call i32 @ASSIGN_32BIT_COUNTER(i32 %33, i32 %37)
  %39 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %40 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be64_to_cpu(i32 %44)
  %46 = call i32 @ASSIGN_32BIT_COUNTER(i32 %41, i32 %45)
  br label %77

47:                                               ; preds = %3
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %49, %struct.ib_pma_portcounters_ext** %8, align 8
  %50 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be64_to_cpu(i32 %52)
  %54 = ashr i32 %53, 2
  %55 = call i8* @cpu_to_be64(i32 %54)
  %56 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %8, align 8
  %57 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be64_to_cpu(i32 %60)
  %62 = ashr i32 %61, 2
  %63 = call i8* @cpu_to_be64(i32 %62)
  %64 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %8, align 8
  %65 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %8, align 8
  %70 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mlx4_counter*, %struct.mlx4_counter** %4, align 8
  %72 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %8, align 8
  %75 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %77

76:                                               ; preds = %3
  br label %77

77:                                               ; preds = %76, %47, %10
  ret void
}

declare dso_local i32 @ASSIGN_32BIT_COUNTER(i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
