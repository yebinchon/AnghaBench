; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_mp_setvariables_for_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_mp_setvariables_for_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4
@mp_ncores = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i64 0, align 8
@all_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"UP must have a CPU ID of zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mp_setvariables_for_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_setvariables_for_up(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* @mp_ncpus, align 4
  store i32 1, i32* @mp_ncores, align 4
  %3 = load i32, i32* @cpuid, align 4
  %4 = call i64 @PCPU_GET(i32 %3)
  store i64 %4, i64* @mp_maxid, align 8
  %5 = load i64, i64* @mp_maxid, align 8
  %6 = call i32 @CPU_SETOF(i64 %5, i32* @all_cpus)
  %7 = load i32, i32* @cpuid, align 4
  %8 = call i64 @PCPU_GET(i32 %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @CPU_SETOF(i64, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
