; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_insert_to_pteg_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_insert_to_pteg_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i8*, i8* }

@moea64_pteg_table = common dso_local global %struct.lpte* null, align 8
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unmapped wired entry\00", align 1
@ADDR_SR_SHFT = common dso_local global i32 0, align 4
@ADDR_API_SHFT64 = common dso_local global i64 0, align 8
@LPTE_HID = common dso_local global i32 0, align 4
@moea64_pteg_mask = common dso_local global i64 0, align 8
@ADDR_PIDX = common dso_local global i64 0, align 8
@ADDR_PIDX_SHFT = common dso_local global i64 0, align 8
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@moea64_pte_valid = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpte*, i64, i32)* @moea64_insert_to_pteg_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @moea64_insert_to_pteg_native(%struct.lpte* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpte*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpte*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpte* %0, %struct.lpte** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = call i32 (...) @mftb()
  %15 = srem i32 %14, 8
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %21, %22
  %24 = srem i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %20, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.lpte*, %struct.lpte** @moea64_pteg_table, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.lpte, %struct.lpte* %27, i64 %28
  store %struct.lpte* %29, %struct.lpte** %8, align 8
  %30 = load %struct.lpte*, %struct.lpte** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @atomic_pte_lock(%struct.lpte* %30, i32 %31, i32* %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %16

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 -1, i64* %4, align 8
  br label %130

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LPTE_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @LPTE_WIRED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ADDR_SR_SHFT, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @ADDR_API_SHFT64, align 8
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = ashr i32 %56, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @LPTE_HID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %48
  %68 = load i64, i64* %11, align 8
  %69 = lshr i64 %68, 3
  %70 = load i64, i64* @moea64_pteg_mask, align 8
  %71 = xor i64 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = xor i64 %71, %73
  %75 = load i64, i64* @ADDR_PIDX, align 8
  %76 = load i64, i64* @ADDR_PIDX_SHFT, align 8
  %77 = lshr i64 %75, %76
  %78 = and i64 %74, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  br label %91

80:                                               ; preds = %48
  %81 = load i64, i64* %11, align 8
  %82 = lshr i64 %81, 3
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = xor i64 %82, %84
  %86 = load i64, i64* @ADDR_PIDX, align 8
  %87 = load i64, i64* @ADDR_PIDX_SHFT, align 8
  %88 = lshr i64 %86, %87
  %89 = and i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %80, %67
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i64, i64* @ADDR_API_SHFT64, align 8
  %96 = load i64, i64* @ADDR_PIDX_SHFT, align 8
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %94, %98
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = call i32 (...) @PTESYNC()
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @TLBIE(i32 %103)
  %105 = load i32, i32* @moea64_pte_valid, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* @moea64_pte_valid, align 4
  %107 = call i32 @STAT_MOEA64(i32 %105)
  %108 = load i32, i32* @moea64_pte_overflow, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @moea64_pte_overflow, align 4
  %110 = call i32 @STAT_MOEA64(i32 %108)
  br label %111

111:                                              ; preds = %91, %43
  %112 = load %struct.lpte*, %struct.lpte** %5, align 8
  %113 = getelementptr inbounds %struct.lpte, %struct.lpte* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @htobe64(i8* %114)
  %116 = load %struct.lpte*, %struct.lpte** %8, align 8
  %117 = getelementptr inbounds %struct.lpte, %struct.lpte* %116, i32 0, i32 1
  store volatile i8* %115, i8** %117, align 8
  %118 = call i32 (...) @EIEIO()
  %119 = load %struct.lpte*, %struct.lpte** %5, align 8
  %120 = getelementptr inbounds %struct.lpte, %struct.lpte* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @htobe64(i8* %121)
  %123 = load %struct.lpte*, %struct.lpte** %8, align 8
  %124 = getelementptr inbounds %struct.lpte, %struct.lpte* %123, i32 0, i32 0
  store volatile i8* %122, i8** %124, align 8
  %125 = call i32 (...) @PTESYNC()
  %126 = load i32, i32* @moea64_pte_valid, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @moea64_pte_valid, align 4
  %128 = call i32 @STAT_MOEA64(i32 %126)
  %129 = load i64, i64* %11, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %111, %42
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @mftb(...) #1

declare dso_local i64 @atomic_pte_lock(%struct.lpte*, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PTESYNC(...) #1

declare dso_local i32 @TLBIE(i32) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local i8* @htobe64(i8*) #1

declare dso_local i32 @EIEIO(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
