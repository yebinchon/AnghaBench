; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_get_pg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_get_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_pg = type { i32 }
%struct.nat64lsn_pgchunk = type { %struct.nat64lsn_pg** }

@NAT64LSN_TRY_PGCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat64lsn_pg* (i32*, i32*, %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pg**, i32*, i32)* @nat64lsn_get_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat64lsn_pg* @nat64lsn_get_pg(i32* %0, i32* %1, %struct.nat64lsn_pgchunk** %2, %struct.nat64lsn_pg** %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.nat64lsn_pg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nat64lsn_pgchunk**, align 8
  %11 = alloca %struct.nat64lsn_pg**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nat64lsn_pg*, align 8
  %15 = alloca %struct.nat64lsn_pg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.nat64lsn_pgchunk** %2, %struct.nat64lsn_pgchunk*** %10, align 8
  store %struct.nat64lsn_pg** %3, %struct.nat64lsn_pg*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %11, align 8
  %20 = call %struct.nat64lsn_pg* @ck_pr_load_ptr(%struct.nat64lsn_pg** %19)
  store %struct.nat64lsn_pg* %20, %struct.nat64lsn_pg** %14, align 8
  store %struct.nat64lsn_pg* %20, %struct.nat64lsn_pg** %15, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @ck_pr_load_32(i32* %21)
  store i32 %22, i32* %17, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %16, align 4
  %26 = sdiv i32 %25, 32
  %27 = call i64 @ISSET32(i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %6
  br label %31

31:                                               ; preds = %87, %30
  %32 = call i32 (...) @ck_pr_fence_load()
  %33 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %14, align 8
  %34 = icmp ne %struct.nat64lsn_pg* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %14, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @FREEMASK_BITCOUNT(%struct.nat64lsn_pg* %36, i32 %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %18, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %11, align 8
  %45 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %15, align 8
  %46 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %14, align 8
  %47 = call i32 @ck_pr_cas_ptr(%struct.nat64lsn_pg** %44, %struct.nat64lsn_pg* %45, %struct.nat64lsn_pg* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %14, align 8
  store %struct.nat64lsn_pg* %49, %struct.nat64lsn_pg** %7, align 8
  br label %105

50:                                               ; preds = %35, %31
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sdiv i32 %53, 32
  %55 = call i64 @ISSET32(i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %92

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sdiv i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = srem i32 %65, 32
  %67 = call i64 @ISSET32(i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pgchunk*** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sdiv i32 %71, 32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %70, i64 %73
  %75 = load %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %74, align 8
  %76 = getelementptr inbounds %struct.nat64lsn_pgchunk, %struct.nat64lsn_pgchunk* %75, i32 0, i32 0
  %77 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = srem i32 %78, 32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %77, i64 %80
  %82 = call %struct.nat64lsn_pg* @ck_pr_load_ptr(%struct.nat64lsn_pg** %81)
  store %struct.nat64lsn_pg* %82, %struct.nat64lsn_pg** %14, align 8
  br label %84

83:                                               ; preds = %58
  store %struct.nat64lsn_pg* null, %struct.nat64lsn_pg** %14, align 8
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* @NAT64LSN_TRY_PGCNT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %31, label %92

92:                                               ; preds = %87, %57
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sdiv i32 %95, 32
  %97 = call i64 @ISSET32(i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @ck_pr_cas_32(i32* %101, i32 %102, i32 %103)
  store %struct.nat64lsn_pg* null, %struct.nat64lsn_pg** %7, align 8
  br label %105

105:                                              ; preds = %100, %48
  %106 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %7, align 8
  ret %struct.nat64lsn_pg* %106
}

declare dso_local %struct.nat64lsn_pg* @ck_pr_load_ptr(%struct.nat64lsn_pg**) #1

declare dso_local i32 @ck_pr_load_32(i32*) #1

declare dso_local i64 @ISSET32(i32, i32) #1

declare dso_local i32 @ck_pr_fence_load(...) #1

declare dso_local i64 @FREEMASK_BITCOUNT(%struct.nat64lsn_pg*, i32) #1

declare dso_local i32 @ck_pr_cas_ptr(%struct.nat64lsn_pg**, %struct.nat64lsn_pg*, %struct.nat64lsn_pg*) #1

declare dso_local i32 @ck_pr_cas_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
