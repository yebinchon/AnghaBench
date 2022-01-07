; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_is_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_is_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"moea64_is_referenced: page %p is not managed\00", align 1
@LPTE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea64_is_referenced(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VPO_UNMANAGED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = bitcast %struct.TYPE_4__* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = load i32, i32* @LPTE_REF, align 4
  %18 = call i32 @moea64_query_bit(i32 %15, %struct.TYPE_4__* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @moea64_query_bit(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
