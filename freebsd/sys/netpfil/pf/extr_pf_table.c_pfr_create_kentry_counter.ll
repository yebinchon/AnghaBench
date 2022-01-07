; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_create_kentry_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_create_kentry_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kcounters = type { i64, i8***, i8*** }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_kcounters*, i32, i32)* @pfr_create_kentry_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_create_kentry_counter(%struct.pfr_kcounters* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_kcounters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pfr_kcounters* %0, %struct.pfr_kcounters** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i8* @counter_u64_alloc(i32 %8)
  %10 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %5, align 8
  %11 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %10, i32 0, i32 2
  %12 = load i8***, i8**** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8**, i8*** %12, i64 %14
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* %9, i8** %19, align 8
  %20 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %20, i32 0, i32 2
  %22 = load i8***, i8**** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8**, i8*** %22, i64 %24
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

33:                                               ; preds = %3
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i8* @counter_u64_alloc(i32 %34)
  %36 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %5, align 8
  %37 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %36, i32 0, i32 1
  %38 = load i8***, i8**** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8**, i8*** %38, i64 %40
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %35, i8** %45, align 8
  %46 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %5, align 8
  %47 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %46, i32 0, i32 1
  %48 = load i8***, i8**** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8**, i8*** %48, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %62

59:                                               ; preds = %33
  %60 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %5, align 8
  %61 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %58, %32
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @counter_u64_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
