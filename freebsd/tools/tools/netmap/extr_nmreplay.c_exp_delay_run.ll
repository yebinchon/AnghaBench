; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_exp_delay_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_exp_delay_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i64 }
%struct._cfg = type { i64 }

@PTS_D_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"delay %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*)* @exp_delay_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp_delay_run(%struct._qs* %0, %struct._cfg* %1) #0 {
  %3 = alloca %struct._qs*, align 8
  %4 = alloca %struct._cfg*, align 8
  %5 = alloca i64*, align 8
  store %struct._qs* %0, %struct._qs** %3, align 8
  store %struct._cfg* %1, %struct._cfg** %4, align 8
  %6 = load %struct._cfg*, %struct._cfg** %4, align 8
  %7 = getelementptr inbounds %struct._cfg, %struct._cfg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i64*
  store i64* %9, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 (...) @my_random24()
  %12 = load i32, i32* @PTS_D_EXP, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %10, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct._qs*, %struct._qs** %3, align 8
  %19 = getelementptr inbounds %struct._qs, %struct._qs* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct._qs*, %struct._qs** %3, align 8
  %21 = getelementptr inbounds %struct._qs, %struct._qs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @RD(i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %22)
  ret i32 0
}

declare dso_local i32 @my_random24(...) #1

declare dso_local i32 @RD(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
