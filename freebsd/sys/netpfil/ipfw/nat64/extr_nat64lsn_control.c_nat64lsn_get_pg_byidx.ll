; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_get_pg_byidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_get_pg_byidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_pg = type { i32 }
%struct.nat64lsn_cfg = type { i32, %struct.nat64lsn_alias* }
%struct.nat64lsn_alias = type { i32, %struct.TYPE_6__**, i32*, %struct.TYPE_5__**, i32*, %struct.TYPE_4__**, i32* }
%struct.TYPE_6__ = type { %struct.nat64lsn_pg** }
%struct.TYPE_5__ = type { %struct.nat64lsn_pg** }
%struct.TYPE_4__ = type { %struct.nat64lsn_pg** }
%union.nat64lsn_pgidx = type { i32 }

@NAT64_MIN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat64lsn_pg* (%struct.nat64lsn_cfg*, %union.nat64lsn_pgidx*)* @nat64lsn_get_pg_byidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat64lsn_pg* @nat64lsn_get_pg_byidx(%struct.nat64lsn_cfg* %0, %union.nat64lsn_pgidx* %1) #0 {
  %3 = alloca %struct.nat64lsn_pg*, align 8
  %4 = alloca %struct.nat64lsn_cfg*, align 8
  %5 = alloca %union.nat64lsn_pgidx*, align 8
  %6 = alloca %struct.nat64lsn_alias*, align 8
  %7 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %4, align 8
  store %union.nat64lsn_pgidx* %1, %union.nat64lsn_pgidx** %5, align 8
  %8 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %8, i32 0, i32 1
  %10 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %9, align 8
  %11 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %5, align 8
  %12 = bitcast %union.nat64lsn_pgidx* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 32, %16
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %13, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %10, i64 %21
  store %struct.nat64lsn_alias* %22, %struct.nat64lsn_alias** %6, align 8
  %23 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %5, align 8
  %27 = bitcast %union.nat64lsn_pgidx* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %5, align 8
  %33 = bitcast %union.nat64lsn_pgidx* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAT64_MIN_PORT, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sdiv i32 %36, 64
  store i32 %37, i32* %7, align 4
  %38 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %5, align 8
  %39 = bitcast %union.nat64lsn_pgidx* %38 to i32*
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %131 [
    i32 130, label %41
    i32 129, label %71
    i32 128, label %101
  ]

41:                                               ; preds = %2
  %42 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %43 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = srem i32 %50, 32
  %52 = call i32 @ISSET32(i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %41
  %55 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %56 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %58, 32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %64, i64 %67
  %69 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %68, align 8
  store %struct.nat64lsn_pg* %69, %struct.nat64lsn_pg** %3, align 8
  br label %132

70:                                               ; preds = %41
  br label %131

71:                                               ; preds = %2
  %72 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %73 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %75, 32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = srem i32 %80, 32
  %82 = call i32 @ISSET32(i32 %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %71
  %85 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %86 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sdiv i32 %88, 32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = srem i32 %95, 32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %94, i64 %97
  %99 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %98, align 8
  store %struct.nat64lsn_pg* %99, %struct.nat64lsn_pg** %3, align 8
  br label %132

100:                                              ; preds = %71
  br label %131

101:                                              ; preds = %2
  %102 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %103 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sdiv i32 %105, 32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = srem i32 %110, 32
  %112 = call i32 @ISSET32(i32 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %101
  %115 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %6, align 8
  %116 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sdiv i32 %118, 32
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %117, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = srem i32 %125, 32
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %124, i64 %127
  %129 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %128, align 8
  store %struct.nat64lsn_pg* %129, %struct.nat64lsn_pg** %3, align 8
  br label %132

130:                                              ; preds = %101
  br label %131

131:                                              ; preds = %2, %130, %100, %70
  store %struct.nat64lsn_pg* null, %struct.nat64lsn_pg** %3, align 8
  br label %132

132:                                              ; preds = %131, %114, %84, %54
  %133 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %3, align 8
  ret %struct.nat64lsn_pg* %133
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ISSET32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
