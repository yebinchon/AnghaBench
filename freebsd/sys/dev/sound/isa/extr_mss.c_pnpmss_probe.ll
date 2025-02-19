; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_pnpmss_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_pnpmss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@pnpmss_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pnpmss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpmss_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @isa_get_logicalid(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @isa_get_vendorid(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 16777216
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 16820493
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @pnpmss_ids, align 4
  %22 = call i32 @ISA_PNP_PROBE(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @isa_get_vendorid(i32) #1

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
