; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_kshmtotal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_kshmtotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shminfo = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"shminfo:\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\09shmmax: %12lu\09(max shared memory segment size)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\09shmmin: %12lu\09(min shared memory segment size)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\09shmmni: %12lu\09(max number of shared memory identifiers)\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\09shmseg: %12lu\09(max shared memory segments per process)\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\09shmall: %12lu\09(max amount of shared memory in pages)\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_kshmtotal(%struct.shminfo* byval(%struct.shminfo) align 8 %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %3 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %0, i32 0, i32 4
  %4 = load i32, i32* %3, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %0, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %0, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
