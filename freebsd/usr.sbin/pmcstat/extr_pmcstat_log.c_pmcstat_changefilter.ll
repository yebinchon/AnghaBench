; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_changefilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_changefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_pmcrecord = type { %struct.pmcstat_pmcrecord* }

@pmcstat_mergepmc = common dso_local global i64 0, align 8
@pmcstat_pmcinfilter = common dso_local global i32 0, align 4
@pmcstat_npmcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmcstat_changefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcstat_changefilter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pmcstat_pmcrecord*, align 8
  %3 = load i64, i64* @pmcstat_mergepmc, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %0
  %6 = load i32, i32* @pmcstat_pmcinfilter, align 4
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %27, %5
  %8 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %9 = call %struct.pmcstat_pmcrecord* @pmcstat_pmcindex_to_pmcr(i32 %8)
  store %struct.pmcstat_pmcrecord* %9, %struct.pmcstat_pmcrecord** %2, align 8
  %10 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %2, align 8
  %11 = icmp eq %struct.pmcstat_pmcrecord* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %2, align 8
  %14 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %2, align 8
  %15 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %14, i32 0, i32 0
  %16 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %15, align 8
  %17 = icmp eq %struct.pmcstat_pmcrecord* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %7
  br label %31

19:                                               ; preds = %12
  %20 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @pmcstat_pmcinfilter, align 4
  %22 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %23 = load i32, i32* @pmcstat_npmcs, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* @pmcstat_pmcinfilter, align 4
  br label %26

26:                                               ; preds = %25, %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %7, label %31

31:                                               ; preds = %27, %18
  br label %32

32:                                               ; preds = %31, %0
  ret void
}

declare dso_local %struct.pmcstat_pmcrecord* @pmcstat_pmcindex_to_pmcr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
