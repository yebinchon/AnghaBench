; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_position_memwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_position_memwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.memwin* }
%struct.memwin = type { i32, i32 }

@NUM_MEMWIN = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@A_PCIE_MEM_ACCESS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32)* @position_memwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @position_memwin(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.memwin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NUM_MEMWIN, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = load %struct.memwin*, %struct.memwin** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.memwin, %struct.memwin* %22, i64 %24
  store %struct.memwin* %25, %struct.memwin** %7, align 8
  %26 = load %struct.memwin*, %struct.memwin** %7, align 8
  %27 = getelementptr inbounds %struct.memwin, %struct.memwin* %26, i32 0, i32 1
  %28 = load i32, i32* @RA_WLOCKED, align 4
  %29 = call i32 @rw_assert(i32* %27, i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = call i64 @is_t4(%struct.adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -16
  %36 = load %struct.memwin*, %struct.memwin** %7, align 8
  %37 = getelementptr inbounds %struct.memwin, %struct.memwin* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %47

38:                                               ; preds = %16
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @V_PFNUM(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -128
  %45 = load %struct.memwin*, %struct.memwin** %7, align 8
  %46 = getelementptr inbounds %struct.memwin, %struct.memwin* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load i32, i32* @A_PCIE_MEM_ACCESS_OFFSET, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PCIE_MEM_ACCESS_REG(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.memwin*, %struct.memwin** %7, align 8
  %54 = getelementptr inbounds %struct.memwin, %struct.memwin* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @t4_write_reg(%struct.adapter* %51, i32 %52, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @t4_read_reg(%struct.adapter* %59, i32 %60)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @V_PFNUM(i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
