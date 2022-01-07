; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_get_mif6_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_get_mif6_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sioc_mif_req6 = type { i64, i32, i32, i32, i32 }

@nummifs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mif6table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sioc_mif_req6*)* @get_mif6_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mif6_cnt(%struct.sioc_mif_req6* %0) #0 {
  %2 = alloca %struct.sioc_mif_req6*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.sioc_mif_req6* %0, %struct.sioc_mif_req6** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sioc_mif_req6*, %struct.sioc_mif_req6** %2, align 8
  %6 = getelementptr inbounds %struct.sioc_mif_req6, %struct.sioc_mif_req6* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 (...) @MIF6_LOCK()
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @nummifs, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mif6table, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sioc_mif_req6*, %struct.sioc_mif_req6** %2, align 8
  %21 = getelementptr inbounds %struct.sioc_mif_req6, %struct.sioc_mif_req6* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mif6table, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sioc_mif_req6*, %struct.sioc_mif_req6** %2, align 8
  %28 = getelementptr inbounds %struct.sioc_mif_req6, %struct.sioc_mif_req6* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mif6table, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sioc_mif_req6*, %struct.sioc_mif_req6** %2, align 8
  %35 = getelementptr inbounds %struct.sioc_mif_req6, %struct.sioc_mif_req6* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mif6table, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sioc_mif_req6*, %struct.sioc_mif_req6** %2, align 8
  %42 = getelementptr inbounds %struct.sioc_mif_req6, %struct.sioc_mif_req6* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %14, %12
  %44 = call i32 (...) @MIF6_UNLOCK()
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @MIF6_LOCK(...) #1

declare dso_local i32 @MIF6_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
