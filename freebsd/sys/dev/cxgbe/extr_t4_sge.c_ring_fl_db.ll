; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_ring_fl_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_ring_fl_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i32, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @ring_fl_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_fl_db(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %7 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %8 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sdiv i32 %9, 8
  %11 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %15 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IDXDIFF(i32 %10, i32 %13, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = call i32 (...) @wmb()
  %23 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @V_PIDX(i64 %26)
  %28 = or i64 %25, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %30 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @htole32(i64 %34)
  %36 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %37 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  store i32 %35, i32* %38, align 4
  br label %46

39:                                               ; preds = %2
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @t4_write_reg(%struct.adapter* %40, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %48 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %52 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IDXINCR(i32 %49, i64 %50, i32 %53)
  ret void
}

declare dso_local i64 @IDXDIFF(i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @V_PIDX(i64) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i64) #1

declare dso_local i32 @IDXINCR(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
