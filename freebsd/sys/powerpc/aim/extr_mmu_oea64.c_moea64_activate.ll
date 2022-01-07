; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.thread = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@cpuid = common dso_local global i32 0, align 4
@curpmap = common dso_local global i32 0, align 4
@USER_SR = common dso_local global i32 0, align 4
@ADDR_SR_SHFT = common dso_local global i32 0, align 4
@aim = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_activate(i32 %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load i32, i32* @cpuid, align 4
  %13 = call i32 @PCPU_GET(i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = call i32 @CPU_SET(i32 %13, i32* %15)
  %17 = load i32, i32* @curpmap, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PCPU_SET(i32 %17, i32 %20)
  %22 = load i32, i32* @USER_SR, align 4
  %23 = load i32, i32* @ADDR_SR_SHFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mtsrin(i32 %24, i32 %31)
  ret void
}

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @mtsrin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
