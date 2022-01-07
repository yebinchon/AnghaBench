; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_g_md_providergone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_g_md_providergone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_s* }
%struct.md_s = type { i32, i32 }

@MD_PROVIDERGONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_provider*)* @g_md_providergone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_md_providergone(%struct.g_provider* %0) #0 {
  %2 = alloca %struct.g_provider*, align 8
  %3 = alloca %struct.md_s*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %2, align 8
  %4 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %5 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.md_s*, %struct.md_s** %7, align 8
  store %struct.md_s* %8, %struct.md_s** %3, align 8
  %9 = load %struct.md_s*, %struct.md_s** %3, align 8
  %10 = getelementptr inbounds %struct.md_s, %struct.md_s* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load i32, i32* @MD_PROVIDERGONE, align 4
  %13 = load %struct.md_s*, %struct.md_s** %3, align 8
  %14 = getelementptr inbounds %struct.md_s, %struct.md_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.md_s*, %struct.md_s** %3, align 8
  %18 = getelementptr inbounds %struct.md_s, %struct.md_s* %17, i32 0, i32 1
  %19 = call i32 @wakeup(i32* %18)
  %20 = load %struct.md_s*, %struct.md_s** %3, align 8
  %21 = getelementptr inbounds %struct.md_s, %struct.md_s* %20, i32 0, i32 0
  %22 = call i32 @mtx_unlock(i32* %21)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
