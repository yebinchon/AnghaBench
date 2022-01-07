; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_agg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_txdesc = type { i32, i32 }

@HN_TXD_FLAG_ONAGG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"recursive aggregation on aggregating txdesc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"already aggregated\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"recursive aggregation on to-be-aggregated txdesc\00", align 1
@agg_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_txdesc*, %struct.hn_txdesc*)* @hn_txdesc_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_txdesc_agg(%struct.hn_txdesc* %0, %struct.hn_txdesc* %1) #0 {
  %3 = alloca %struct.hn_txdesc*, align 8
  %4 = alloca %struct.hn_txdesc*, align 8
  store %struct.hn_txdesc* %0, %struct.hn_txdesc** %3, align 8
  store %struct.hn_txdesc* %1, %struct.hn_txdesc** %4, align 8
  %5 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %6 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %14 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %22 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %21, i32 0, i32 1
  %23 = call i32 @STAILQ_EMPTY(i32* %22)
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %26 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %27 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %31 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %30, i32 0, i32 1
  %32 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %33 = load i32, i32* @agg_link, align 4
  %34 = call i32 @STAILQ_INSERT_TAIL(i32* %31, %struct.hn_txdesc* %32, i32 %33)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.hn_txdesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
