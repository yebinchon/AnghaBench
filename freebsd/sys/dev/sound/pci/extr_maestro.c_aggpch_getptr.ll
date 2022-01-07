; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggpch_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggpch_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i32, i32, i32, i64, i64, i32 }

@APUREG_CURPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aggpch_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggpch_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.agg_chinfo*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.agg_chinfo*
  store %struct.agg_chinfo* %8, %struct.agg_chinfo** %5, align 8
  %9 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %10 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @agg_lock(i32 %11)
  %13 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %14 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %17 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 1
  %20 = or i32 %19, 32
  %21 = load i32, i32* @APUREG_CURPTR, align 4
  %22 = call i32 @wp_rdapu(i32 %15, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %24 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @agg_unlock(i32 %25)
  %27 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %28 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %33 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 2
  %39 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %40 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %43 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = and i32 262140, %45
  %47 = sub nsw i32 %38, %46
  br label %60

48:                                               ; preds = %31, %2
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 1
  %51 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %52 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.agg_chinfo*, %struct.agg_chinfo** %5, align 8
  %55 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = and i32 131070, %57
  %59 = sub nsw i32 %50, %58
  br label %60

60:                                               ; preds = %48, %36
  %61 = phi i32 [ %47, %36 ], [ %59, %48 ]
  ret i32 %61
}

declare dso_local i32 @agg_lock(i32) #1

declare dso_local i32 @wp_rdapu(i32, i32, i32) #1

declare dso_local i32 @agg_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
