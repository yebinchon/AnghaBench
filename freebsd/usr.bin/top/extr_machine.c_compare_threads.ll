; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_compare_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_compare_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_threads(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.kinfo_proc**
  %9 = load %struct.kinfo_proc*, %struct.kinfo_proc** %8, align 8
  store %struct.kinfo_proc* %9, %struct.kinfo_proc** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.kinfo_proc**
  %12 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  store %struct.kinfo_proc* %12, %struct.kinfo_proc** %6, align 8
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %15 = call i32 @ORDERKEY_THREADS(%struct.kinfo_proc* %13, %struct.kinfo_proc* %14)
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %18 = call i32 @ORDERKEY_PCTCPU(%struct.kinfo_proc* %16, %struct.kinfo_proc* %17)
  %19 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %21 = call i32 @ORDERKEY_CPTICKS(%struct.kinfo_proc* %19, %struct.kinfo_proc* %20)
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %24 = call i32 @ORDERKEY_STATE(%struct.kinfo_proc* %22, %struct.kinfo_proc* %23)
  %25 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %27 = call i32 @ORDERKEY_PRIO(%struct.kinfo_proc* %25, %struct.kinfo_proc* %26)
  %28 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %29 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %30 = call i32 @ORDERKEY_RSSIZE(%struct.kinfo_proc* %28, %struct.kinfo_proc* %29)
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %32 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %33 = call i32 @ORDERKEY_MEM(%struct.kinfo_proc* %31, %struct.kinfo_proc* %32)
  ret i32 0
}

declare dso_local i32 @ORDERKEY_THREADS(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_PCTCPU(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_CPTICKS(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_STATE(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_PRIO(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_RSSIZE(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @ORDERKEY_MEM(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
