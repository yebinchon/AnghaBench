; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_event.c_g_orphan_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_event.c_g_orphan_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, i32, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"g_orphan_provider(%p(%s), %d)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"g_orphan_provider(%p(%s), 0) error must be non-zero\0A\00", align 1
@g_eventlock = common dso_local global i32 0, align 4
@G_PF_ORPHAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"g_orphan_provider(%p(%s)), already an orphan\00", align 1
@g_doorstep = common dso_local global i32 0, align 4
@orphan = common dso_local global i32 0, align 4
@g_wait_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_orphan_provider(%struct.g_provider* %0, i32 %1) #0 {
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @G_T_TOPOLOGY, align 4
  %6 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %7 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %8 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @g_trace(i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.g_provider* %6, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %14, i8* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @mtx_lock(i32* @g_eventlock)
  %26 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @G_PF_ORPHAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %33, i8* %39)
  %41 = load i32, i32* @G_PF_ORPHAN, align 4
  %42 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %47 = load i32, i32* @orphan, align 4
  %48 = call i32 @TAILQ_INSERT_TAIL(i32* @g_doorstep, %struct.g_provider* %46, i32 %47)
  %49 = call i32 @mtx_unlock(i32* @g_eventlock)
  %50 = call i32 @wakeup(i32* @g_wait_event)
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_provider*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_provider*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
