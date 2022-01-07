; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_memory_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_memory_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@end = common dso_local global i32 0, align 4
@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@phys_avail = common dso_local global i32* null, align 8
@dump_avail = common dso_local global i32* null, align 8
@physmem = common dso_local global i64 0, align 8
@realmem = common dso_local global i64 0, align 8
@PHYS_AVAIL_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_memory_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_memory_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @MIPS_KSEG0_TO_PHYS(i32 ptrtoint (i32* @end to i32))
  %6 = call i32 @round_page(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32*, i32** @phys_avail, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** @phys_avail, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 100663296, i32* %17, align 4
  %18 = load i32*, i32** @phys_avail, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @dump_avail, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** @phys_avail, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @dump_avail, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** @phys_avail, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @phys_avail, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = call i64 @btoc(i32 %34)
  store i64 %35, i64* @physmem, align 8
  store i64 %35, i64* @realmem, align 8
  br label %118

36:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %82, %74, %58, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  %42 = call i32 @cvmx_bootmem_available_mem(i32 128)
  %43 = icmp slt i32 %42, 2097152
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %98

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @cvmx_bootmem_phy_alloc(i32 1048576, i32 %46, i32 -1, i32 %47, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %98

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1048576
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @MIPS_DIRECT_MAPPABLE(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %37

59:                                               ; preds = %52
  %60 = call i64 @btoc(i32 1048576)
  %61 = load i64, i64* @physmem, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* @physmem, align 8
  %63 = load i32, i32* %3, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32*, i32** @phys_avail, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sub i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load i32*, i32** @phys_avail, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1048576
  store i32 %81, i32* %79, align 4
  br label %37

82:                                               ; preds = %65, %59
  %83 = load i32, i32* %2, align 4
  %84 = load i32*, i32** @phys_avail, align 8
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 0
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, 1048576
  %91 = load i32*, i32** @phys_avail, align 8
  %92 = load i32, i32* %3, align 4
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 2
  store i32 %97, i32* %3, align 4
  br label %37

98:                                               ; preds = %51, %44, %37
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %113, %98
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i32*, i32** @phys_avail, align 8
  %105 = load i32, i32* %4, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** @dump_avail, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %99

116:                                              ; preds = %99
  %117 = load i64, i64* @physmem, align 8
  store i64 %117, i64* @realmem, align 8
  br label %118

118:                                              ; preds = %116, %12
  ret void
}

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @MIPS_KSEG0_TO_PHYS(i32) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @btoc(i32) #1

declare dso_local i32 @cvmx_bootmem_available_mem(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MIPS_DIRECT_MAPPABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
