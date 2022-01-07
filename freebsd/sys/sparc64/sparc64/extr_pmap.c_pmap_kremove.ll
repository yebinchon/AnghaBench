; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tte_list_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@pmap_nkremove = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pmap_kremove: va=%#lx tp=%p data=%#lx\00", align 1
@TD_V = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kremove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tte*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @RA_WLOCKED, align 4
  %6 = call i32 @rw_assert(i32* @tte_list_global_lock, i32 %5)
  %7 = load i32, i32* @pmap_nkremove, align 4
  %8 = call i32 @PMAP_STATS_INC(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.tte* @tsb_kvtotte(i32 %9)
  store %struct.tte* %10, %struct.tte** %3, align 8
  %11 = load i32, i32* @KTR_PMAP, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.tte*, %struct.tte** %3, align 8
  %14 = load %struct.tte*, %struct.tte** %3, align 8
  %15 = getelementptr inbounds %struct.tte, %struct.tte* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CTR3(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.tte* %13, i32 %16)
  %18 = load %struct.tte*, %struct.tte** %3, align 8
  %19 = getelementptr inbounds %struct.tte, %struct.tte* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TD_V, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.tte*, %struct.tte** %3, align 8
  %27 = call i32 @TTE_GET_PA(%struct.tte* %26)
  %28 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.tte*, %struct.tte** %3, align 8
  %33 = load i32, i32* @tte_link, align 4
  %34 = call i32 @TAILQ_REMOVE(i32* %31, %struct.tte* %32, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @pmap_cache_remove(%struct.TYPE_6__* %35, i32 %36)
  %38 = load %struct.tte*, %struct.tte** %3, align 8
  %39 = call i32 @TTE_ZERO(%struct.tte* %38)
  br label %40

40:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, %struct.tte*, i32) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tte*, i32) #1

declare dso_local i32 @pmap_cache_remove(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TTE_ZERO(%struct.tte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
