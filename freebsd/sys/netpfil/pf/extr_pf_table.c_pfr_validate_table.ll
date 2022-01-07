; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_validate_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_validate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32, i32, i64* }

@PF_RESERVED_ANCHOR = common dso_local global i32 0, align 4
@PF_TABLE_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_table*, i32, i32)* @pfr_validate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_validate_table(%struct.pfr_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %10 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %78

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PF_RESERVED_ANCHOR, align 4
  %24 = call i32 @strcmp(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %78

27:                                               ; preds = %19, %16
  %28 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %29 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* @PF_TABLE_NAME_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %78

38:                                               ; preds = %27
  %39 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %40 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @strlen(i64* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %58, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @PF_TABLE_NAME_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %49 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %78

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %63 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pfr_fix_anchor(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %78

68:                                               ; preds = %61
  %69 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %70 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %76, %67, %56, %37, %26, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i64 @pfr_fix_anchor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
