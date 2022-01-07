; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_spillable_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_spillable_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i32, i32 }

@H_READ = common dso_local global i32 0, align 4
@LPTE_WIRED = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.lpte*)* @mphyp_pte_spillable_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mphyp_pte_spillable_ident(i64 %0, %struct.lpte* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpte*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lpte, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.lpte* %1, %struct.lpte** %5, align 8
  %12 = call i32 (...) @mftb()
  %13 = srem i32 %12, 8
  store i32 %13, i32* %10, align 4
  store i64 -1, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %19, %20
  %22 = srem i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = add i64 %18, %23
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @H_READ, align 4
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %29 = call i32 @phyp_pft_hcall(i32 %25, i32 0, i64 %26, i32 0, i32 0, i32* %27, i32* %28, i64* %7)
  %30 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LPTE_WIRED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %54

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %8, align 8
  %38 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LPTE_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LPTE_REF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.lpte*, %struct.lpte** %5, align 8
  %51 = call i32 @memcpy(%struct.lpte* %50, %struct.lpte* %9, i32 8)
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %3, align 8
  br label %71

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %3, align 8
  br label %71

62:                                               ; preds = %57
  %63 = load i32, i32* @H_READ, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.lpte*, %struct.lpte** %5, align 8
  %66 = getelementptr inbounds %struct.lpte, %struct.lpte* %65, i32 0, i32 0
  %67 = load %struct.lpte*, %struct.lpte** %5, align 8
  %68 = getelementptr inbounds %struct.lpte, %struct.lpte* %67, i32 0, i32 1
  %69 = call i32 @phyp_pft_hcall(i32 %63, i32 0, i64 %64, i32 0, i32 0, i32* %66, i32* %68, i64* %7)
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %62, %60, %49
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i64, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @memcpy(%struct.lpte*, %struct.lpte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
