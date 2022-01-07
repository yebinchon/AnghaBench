; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_get_mapping_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_get_mapping_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@curproc = common dso_local global %struct.proc* null, align 8
@SEGSHIFT = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64**, i32**)* @get_mapping_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mapping_info(i32 %0, i64** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.proc*, align 8
  store i32 %0, i32* %4, align 4
  store i64** %1, i64*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %10, %struct.proc** %9, align 8
  %11 = load %struct.proc*, %struct.proc** %9, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SEGSHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @NPDEPG, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %16, i64 %23
  store i64* %24, i64** %8, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.proc*, %struct.proc** %9, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @pmap_pte(%struct.TYPE_4__* %32, i32 %33)
  store i32* %34, i32** %7, align 8
  br label %36

35:                                               ; preds = %3
  store i32* null, i32** %7, align 8
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i64*, i64** %8, align 8
  %38 = load i64**, i64*** %5, align 8
  store i64* %37, i64** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32**, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  ret void
}

declare dso_local i32* @pmap_pte(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
