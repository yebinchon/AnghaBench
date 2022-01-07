; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/ucore/extr_ucore.h_nlm_ucore_pkt_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/ucore/extr_ucore.h_nlm_ucore_pkt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @nlm_ucore_pkt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_ucore_pkt_done(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = and i32 %26, 4095
  %28 = shl i32 %27, 20
  %29 = load i32, i32* %25, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %25, align 4
  %31 = load i32, i32* %14, align 4
  %32 = and i32 %31, 1
  %33 = shl i32 %32, 19
  %34 = load i32, i32* %25, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %15, align 4
  %37 = and i32 %36, 31
  %38 = shl i32 %37, 14
  %39 = load i32, i32* %25, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %16, align 4
  %42 = and i32 %41, 1
  %43 = shl i32 %42, 3
  %44 = load i32, i32* %25, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %25, align 4
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 2
  %49 = load i32, i32* %25, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %18, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 12
  %54 = load i32, i32* %25, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %19, align 4
  %57 = and i32 %56, 3
  %58 = shl i32 %57, 4
  %59 = load i32, i32* %25, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* %20, align 4
  %62 = and i32 %61, 3
  %63 = shl i32 %62, 6
  %64 = load i32, i32* %25, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %21, align 4
  %67 = and i32 %66, 3
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %25, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %22, align 4
  %72 = and i32 %71, 3
  %73 = shl i32 %72, 10
  %74 = load i32, i32* %25, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %23, align 4
  %77 = and i32 %76, 1
  %78 = shl i32 %77, 1
  %79 = load i32, i32* %25, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %24, align 4
  %82 = and i32 %81, 1
  %83 = shl i32 %82, 0
  %84 = load i32, i32* %25, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @nlm_write_ucore_obufdone(i32 %86)
  ret void
}

declare dso_local i32 @nlm_write_ucore_obufdone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
