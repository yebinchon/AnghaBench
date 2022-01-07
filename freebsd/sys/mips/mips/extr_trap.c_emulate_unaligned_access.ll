; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_emulate_unaligned_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_emulate_unaligned_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }
%struct.proc = type { i32, i64 }
%struct.trapframe = type { i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@curproc = common dso_local global %struct.proc* null, align 8
@unaligned_lasterr = common dso_local global i32 0, align 4
@unaligned_curerr = common dso_local global i32 0, align 4
@unaligned_pps_log_limit = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unaligned %s: pid=%ld (%s), tid=%ld, pc=%#jx, badvaddr=%#jx\0A\00", align 1
@access_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32)* @emulate_unaligned_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_unaligned_access(%struct.trapframe* %0, i32 %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %10, %struct.proc** %8, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @DELAYBRANCH(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 4, i32 0
  %21 = add nsw i32 %13, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %88, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %88, label %31

31:                                               ; preds = %25
  %32 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @mips_unaligned_load_store(%struct.trapframe* %32, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %31
  %42 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @DELAYBRANCH(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %49 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MipsEmulateBranch(%struct.trapframe* %48, i32 %51, i32 0, i32 0)
  %53 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i32, i32* @unaligned_pps_log_limit, align 4
  %62 = call i64 @ppsratecheck(i32* @unaligned_lasterr, i32* @unaligned_curerr, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load i32, i32* @LOG_INFO, align 4
  %66 = load i32*, i32** @access_name, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.proc*, %struct.proc** %8, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.proc*, %struct.proc** %8, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.thread*, %struct.thread** %7, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %83 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @log(i32 %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %74, i32 %77, i64 %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %64, %60
  br label %87

87:                                               ; preds = %86, %31
  br label %88

88:                                               ; preds = %87, %25, %2
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @DELAYBRANCH(i32) #1

declare dso_local i32 @mips_unaligned_load_store(%struct.trapframe*, i32, i32, i32) #1

declare dso_local i32 @MipsEmulateBranch(%struct.trapframe*, i32, i32, i32) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
