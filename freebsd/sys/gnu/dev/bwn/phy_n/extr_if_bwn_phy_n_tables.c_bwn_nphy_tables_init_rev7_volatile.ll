; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init_rev7_volatile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init_rev7_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@__const.bwn_nphy_tables_init_rev7_volatile.antswlut0_offsets = private unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 8], align 4
@__const.bwn_nphy_tables_init_rev7_volatile.antswlut0_values = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 2, i32 18, i32 8], [3 x i32] [i32 2, i32 24, i32 2]], align 16
@.str = private unnamed_addr constant [26 x i8] c"Unsupported antswlut: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tables_init_rev7_volatile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tables_init_rev7_volatile(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [2 x [3 x i32]], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_tables_init_rev7_volatile.antswlut0_offsets to i8*), i64 12, i1 false)
  %11 = bitcast [2 x [3 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x [3 x i32]]* @__const.bwn_nphy_tables_init_rev7_volatile.antswlut0_values to i8*), i64 24, i1 false)
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = call i32 @bwn_nphy_tables_get_antswlut(%struct.bwn_mac* %12, i32* %7)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %59 [
    i32 0, label %18
  ]

18:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %9, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %27 = call i32 @nitems(i32* %26)
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 32, i32 0
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BWN_NTAB8(i32 9, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %9, i64 0, i64 %44
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bwn_ntab_write(%struct.bwn_mac* %40, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %23

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %19

58:                                               ; preds = %19
  br label %65

59:                                               ; preds = %16
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @BWN_ERRPRINTF(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %15, %59, %58
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bwn_nphy_tables_get_antswlut(%struct.bwn_mac*, i32*) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_NTAB8(i32, i32) #2

declare dso_local i32 @BWN_ERRPRINTF(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
