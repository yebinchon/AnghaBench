; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_maybe_remove_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_maybe_remove_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32, i32 }

@OWN = common dso_local global i32 0, align 4
@OMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"maybe-remove-owner po=%p\00", align 1
@PMC_PO_OWNS_LOGFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_owner*)* @pmc_maybe_remove_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_maybe_remove_owner(%struct.pmc_owner* %0) #0 {
  %2 = alloca %struct.pmc_owner*, align 8
  store %struct.pmc_owner* %0, %struct.pmc_owner** %2, align 8
  %3 = load i32, i32* @OWN, align 4
  %4 = load i32, i32* @OMR, align 4
  %5 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %6 = call i32 @PMCDBG1(i32 %3, i32 %4, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pmc_owner* %5)
  %7 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %8 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %7, i32 0, i32 1
  %9 = call i64 @LIST_EMPTY(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %13 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PMC_PO_OWNS_LOGFILE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %20 = call i32 @pmc_remove_owner(%struct.pmc_owner* %19)
  %21 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %22 = call i32 @pmc_destroy_owner_descriptor(%struct.pmc_owner* %21)
  br label %23

23:                                               ; preds = %18, %11, %1
  ret void
}

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, %struct.pmc_owner*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @pmc_remove_owner(%struct.pmc_owner*) #1

declare dso_local i32 @pmc_destroy_owner_descriptor(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
