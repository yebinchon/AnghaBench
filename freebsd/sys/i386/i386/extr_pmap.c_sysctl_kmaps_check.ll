; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_sysctl_kmaps_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_sysctl_kmaps_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.pmap_kernel_map_range = type { i64 }

@PG_RW = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@PG_PDE_CACHE = common dso_local global i32 0, align 4
@PG_PTE_CACHE = common dso_local global i32 0, align 4
@PG_PTE_PAT = common dso_local global i32 0, align 4
@PG_PDE_PAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.pmap_kernel_map_range*, i64, i32, i32)* @sysctl_kmaps_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_kmaps_check(%struct.sbuf* %0, %struct.pmap_kernel_map_range* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca %struct.pmap_kernel_map_range*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store %struct.pmap_kernel_map_range* %1, %struct.pmap_kernel_map_range** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @PG_RW, align 4
  %14 = load i32, i32* @PG_U, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @pg_nx, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PG_PS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PG_G, align 4
  %26 = load i32, i32* @PG_PDE_CACHE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %68

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @pg_nx, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @pg_nx, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PG_RW, align 4
  %43 = load i32, i32* @PG_U, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = or i32 %40, %45
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @PG_G, align 4
  %51 = load i32, i32* @PG_PTE_CACHE, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PG_PTE_PAT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %34
  %61 = load i32, i32* @PG_PDE_PAT, align 4
  %62 = load i32, i32* @PG_PTE_PAT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %60, %34
  br label %67

67:                                               ; preds = %66, %31
  br label %68

68:                                               ; preds = %67, %23
  %69 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %7, align 8
  %70 = getelementptr inbounds %struct.pmap_kernel_map_range, %struct.pmap_kernel_map_range* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @sysctl_kmaps_match(%struct.pmap_kernel_map_range* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %81 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @sysctl_kmaps_dump(%struct.sbuf* %80, %struct.pmap_kernel_map_range* %81, i64 %82)
  %84 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @sysctl_kmaps_reinit(%struct.pmap_kernel_map_range* %84, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @sysctl_kmaps_match(%struct.pmap_kernel_map_range*, i32) #1

declare dso_local i32 @sysctl_kmaps_dump(%struct.sbuf*, %struct.pmap_kernel_map_range*, i64) #1

declare dso_local i32 @sysctl_kmaps_reinit(%struct.pmap_kernel_map_range*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
