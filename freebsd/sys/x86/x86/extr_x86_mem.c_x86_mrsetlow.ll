; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrsetlow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrsetlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32 }
%struct.mem_range_desc = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MDF_FORCE = common dso_local global i32 0, align 4
@MDF_ATTRMASK = common dso_local global i32 0, align 4
@MDF_UNKNOWN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MDF_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_range_softc*, %struct.mem_range_desc*, i32*)* @x86_mrsetlow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_mrsetlow(%struct.mem_range_softc* %0, %struct.mem_range_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_range_softc*, align 8
  %6 = alloca %struct.mem_range_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mem_range_desc*, align 8
  %9 = alloca %struct.mem_range_desc*, align 8
  %10 = alloca %struct.mem_range_desc*, align 8
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %5, align 8
  store %struct.mem_range_desc* %1, %struct.mem_range_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %12 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %13 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.mem_range_desc* @x86_mtrrfixsearch(%struct.mem_range_softc* %11, i64 %14)
  store %struct.mem_range_desc* %15, %struct.mem_range_desc** %8, align 8
  %16 = icmp eq %struct.mem_range_desc* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %19 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %20 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %23 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = sub nsw i64 %25, 1
  %27 = call %struct.mem_range_desc* @x86_mtrrfixsearch(%struct.mem_range_softc* %18, i64 %26)
  store %struct.mem_range_desc* %27, %struct.mem_range_desc** %9, align 8
  %28 = icmp eq %struct.mem_range_desc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %17, %3
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %89

31:                                               ; preds = %17
  %32 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %33 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MDF_FORCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  store %struct.mem_range_desc* %39, %struct.mem_range_desc** %10, align 8
  br label %40

40:                                               ; preds = %55, %38
  %41 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %42 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %43 = icmp ule %struct.mem_range_desc* %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %46 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MDF_ATTRMASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @MDF_UNKNOWN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EACCES, align 4
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %57 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %56, i32 1
  store %struct.mem_range_desc* %57, %struct.mem_range_desc** %10, align 8
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  store %struct.mem_range_desc* %60, %struct.mem_range_desc** %10, align 8
  br label %61

61:                                               ; preds = %85, %59
  %62 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %63 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %64 = icmp ule %struct.mem_range_desc* %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %67 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MDF_FIRMWARE, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %73 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mrcopyflags(i32 %71, i32 %74)
  %76 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %77 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %79 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %82 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bcopy(i32 %80, i32 %83, i32 4)
  br label %85

85:                                               ; preds = %65
  %86 = load %struct.mem_range_desc*, %struct.mem_range_desc** %10, align 8
  %87 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %86, i32 1
  store %struct.mem_range_desc* %87, %struct.mem_range_desc** %10, align 8
  br label %61

88:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %52, %29
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mem_range_desc* @x86_mtrrfixsearch(%struct.mem_range_softc*, i64) #1

declare dso_local i32 @mrcopyflags(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
