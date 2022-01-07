; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_init_ingress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_init_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAE_RX_CONFIG = common dso_local global i32 0, align 4
@NAE_PARSER_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_nae_init_ingress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 384, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NAE_RX_CONFIG, align 4
  %9 = call i32 @nlm_read_nae_reg(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -7
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, -4081
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -1056964609
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, 1124073472
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 64
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NAE_RX_CONFIG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @nlm_write_nae_reg(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @NAE_PARSER_CONFIG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1023
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %35, %36
  %38 = add nsw i32 %37, 1
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 12
  %41 = or i32 %34, %40
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 64
  %44 = load i32, i32* %4, align 4
  %45 = srem i32 %43, %44
  %46 = and i32 %45, 255
  %47 = shl i32 %46, 20
  %48 = or i32 %41, %47
  %49 = call i32 @nlm_write_nae_reg(i32 %31, i32 %32, i32 %48)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
