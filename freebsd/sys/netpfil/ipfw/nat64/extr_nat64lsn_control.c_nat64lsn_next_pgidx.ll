; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_next_pgidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_next_pgidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i64 }
%struct.nat64lsn_pg = type { i32 }
%union.nat64lsn_pgidx = type { i64 }

@UINT16_MAX = common dso_local global i32 0, align 4
@NAT64_MIN_PORT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@LAST_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.nat64lsn_pg*, %union.nat64lsn_pgidx*)* @nat64lsn_next_pgidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_next_pgidx(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_pg* %1, %union.nat64lsn_pgidx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nat64lsn_cfg*, align 8
  %6 = alloca %struct.nat64lsn_pg*, align 8
  %7 = alloca %union.nat64lsn_pgidx*, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %5, align 8
  store %struct.nat64lsn_pg* %1, %struct.nat64lsn_pg** %6, align 8
  store %union.nat64lsn_pgidx* %2, %union.nat64lsn_pgidx** %7, align 8
  %8 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %6, align 8
  %9 = icmp ne %struct.nat64lsn_pg* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %12 = bitcast %union.nat64lsn_pgidx* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %6, align 8
  %15 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %21 = bitcast %union.nat64lsn_pgidx* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  store i32 0, i32* %4, align 4
  br label %73

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %27 = bitcast %union.nat64lsn_pgidx* %26 to i32*
  store i32 0, i32* %27, align 8
  %28 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %29 = bitcast %union.nat64lsn_pgidx* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UINT16_MAX, align 4
  %32 = sub nsw i32 %31, 64
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %36 = bitcast %union.nat64lsn_pgidx* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 64
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %73

39:                                               ; preds = %25
  %40 = load i32, i32* @NAT64_MIN_PORT, align 4
  %41 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %42 = bitcast %union.nat64lsn_pgidx* %41 to i32*
  store i32 %40, i32* %42, align 8
  %43 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %44 = bitcast %union.nat64lsn_pgidx* %43 to i32*
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %53 [
    i32 129, label %46
    i32 128, label %49
  ]

46:                                               ; preds = %39
  %47 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %48 = bitcast %union.nat64lsn_pgidx* %47 to i32*
  store i32 128, i32* %48, align 8
  store i32 0, i32* %4, align 4
  br label %73

49:                                               ; preds = %39
  %50 = load i32, i32* @IPPROTO_UDP, align 4
  %51 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %52 = bitcast %union.nat64lsn_pgidx* %51 to i32*
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %73

53:                                               ; preds = %39
  %54 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %55 = bitcast %union.nat64lsn_pgidx* %54 to i32*
  store i32 129, i32* %55, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %58 = bitcast %union.nat64lsn_pgidx* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %66 = bitcast %union.nat64lsn_pgidx* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  store i32 1, i32* %4, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @LAST_IDX, align 4
  %71 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %7, align 8
  %72 = bitcast %union.nat64lsn_pgidx* %71 to i32*
  store i32 %70, i32* %72, align 8
  store i32 -1, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %64, %49, %46, %34, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
