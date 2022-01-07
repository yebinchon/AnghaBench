; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap_fatal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32 }

@PSL_PR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s trap\00", align 1
@KDB_WHY_TRAP = common dso_local global i32 0, align 4
@KDB_WHY_UNSET = common dso_local global i32 0, align 4
@debugger_on_trap = common dso_local global i64 0, align 8
@kdb_why = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trapframe*)* @trap_fatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trap_fatal(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %3 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %4 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %7 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %8 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PSL_PR, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @printtrap(i32 %5, %struct.trapframe* %6, i32 1, i32 %11)
  %13 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %14 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @trapname(i32 %15)
  %17 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @printtrap(i32, %struct.trapframe*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @trapname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
