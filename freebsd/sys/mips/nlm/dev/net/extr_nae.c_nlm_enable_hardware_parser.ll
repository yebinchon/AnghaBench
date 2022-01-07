; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_enable_hardware_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_enable_hardware_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAE_RX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_enable_hardware_parser(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NAE_RX_CONFIG, align 4
  %6 = call i32 @nlm_read_nae_reg(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, 4096
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @NAE_RX_CONFIG, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @nlm_write_nae_reg(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @nlm_setup_l3ctable_even(i32 %13, i32 0, i32 4, i32 1, i32 9, i32 1, i32 34887)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @nlm_setup_l3ctable_odd(i32 %15, i32 0, i32 9, i32 1, i32 12, i32 4, i32 16, i32 4)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @nlm_setup_l3ctable_even(i32 %17, i32 1, i32 0, i32 1, i32 9, i32 1, i32 2048)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @nlm_setup_l3ctable_odd(i32 %19, i32 1, i32 9, i32 1, i32 12, i32 4, i32 16, i32 4)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @nlm_setup_l3ctable_even(i32 %21, i32 2, i32 0, i32 1, i32 6, i32 1, i32 34525)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @nlm_setup_l3ctable_odd(i32 %23, i32 2, i32 6, i32 1, i32 8, i32 16, i32 24, i32 16)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @nlm_setup_l3ctable_even(i32 %25, i32 3, i32 0, i32 0, i32 9, i32 1, i32 2054)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @nlm_setup_l3ctable_odd(i32 %27, i32 3, i32 0, i32 30, i32 0, i32 0, i32 0, i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @nlm_setup_l3ctable_even(i32 %29, i32 4, i32 0, i32 0, i32 9, i32 1, i32 35078)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @nlm_setup_l3ctable_odd(i32 %31, i32 4, i32 0, i32 28, i32 0, i32 0, i32 0, i32 0)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @nlm_setup_l3ctable_even(i32 %33, i32 5, i32 0, i32 0, i32 9, i32 1, i32 33024)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @nlm_setup_l3ctable_odd(i32 %35, i32 5, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @nlm_setup_l3ctable_even(i32 %37, i32 6, i32 0, i32 0, i32 9, i32 1, i32 34984)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @nlm_setup_l3ctable_odd(i32 %39, i32 6, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @nlm_setup_l3ctable_even(i32 %41, i32 7, i32 0, i32 0, i32 9, i32 1, i32 37120)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @nlm_setup_l3ctable_odd(i32 %43, i32 7, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @nlm_setup_l3ctable_even(i32 %45, i32 8, i32 0, i32 0, i32 9, i32 1, i32 34928)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @nlm_setup_l3ctable_odd(i32 %47, i32 8, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @nlm_setup_l3ctable_even(i32 %49, i32 9, i32 0, i32 0, i32 9, i32 1, i32 34888)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @nlm_setup_l3ctable_odd(i32 %51, i32 9, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @nlm_setup_l3ctable_even(i32 %53, i32 10, i32 0, i32 0, i32 9, i32 1, i32 35045)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @nlm_setup_l3ctable_odd(i32 %55, i32 10, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @nlm_setup_l3ctable_even(i32 %57, i32 11, i32 0, i32 0, i32 9, i32 1, i32 35063)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @nlm_setup_l3ctable_odd(i32 %59, i32 11, i32 0, i32 31, i32 31, i32 2, i32 0, i32 0)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @nlm_setup_l3ctable_even(i32 %61, i32 12, i32 0, i32 0, i32 9, i32 1, i32 49185)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @nlm_setup_l3ctable_odd(i32 %63, i32 12, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @nlm_setup_l3ctable_even(i32 %65, i32 13, i32 0, i32 0, i32 9, i32 1, i32 49189)
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @nlm_setup_l3ctable_odd(i32 %67, i32 13, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @nlm_setup_l3ctable_even(i32 %69, i32 14, i32 0, i32 0, i32 9, i32 1, i32 34916)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @nlm_setup_l3ctable_odd(i32 %71, i32 14, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @nlm_setup_l3ctable_even(i32 %73, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @nlm_setup_l3ctable_odd(i32 %75, i32 15, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @nlm_setup_l4ctable_even(i32 %77, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 6)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @nlm_setup_l4ctable_odd(i32 %79, i32 0, i32 0, i32 15, i32 15, i32 5)
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @nlm_setup_l4ctable_even(i32 %81, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 17)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @nlm_setup_l4ctable_odd(i32 %83, i32 1, i32 0, i32 8, i32 0, i32 0)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @nlm_setup_l4ctable_even(i32 %85, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 132)
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @nlm_setup_l4ctable_odd(i32 %87, i32 2, i32 0, i32 12, i32 0, i32 0)
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @nlm_setup_l4ctable_even(i32 %89, i32 3, i32 0, i32 0, i32 1, i32 0, i32 0, i32 27)
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @nlm_setup_l4ctable_odd(i32 %91, i32 3, i32 0, i32 15, i32 15, i32 3)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @nlm_setup_l4ctable_even(i32 %93, i32 4, i32 0, i32 0, i32 1, i32 0, i32 0, i32 33)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @nlm_setup_l4ctable_odd(i32 %95, i32 4, i32 0, i32 15, i32 15, i32 1)
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @nlm_setup_l4ctable_even(i32 %97, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 41)
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @nlm_setup_l4ctable_odd(i32 %99, i32 5, i32 0, i32 15, i32 15, i32 5)
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @nlm_setup_l4ctable_even(i32 %101, i32 6, i32 0, i32 0, i32 1, i32 0, i32 0, i32 4)
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @nlm_setup_l4ctable_odd(i32 %103, i32 6, i32 0, i32 15, i32 15, i32 5)
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @nlm_setup_l4ctable_even(i32 %105, i32 7, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0)
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @nlm_setup_l4ctable_odd(i32 %107, i32 7, i32 0, i32 15, i32 15, i32 5)
  ret void
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_setup_l3ctable_even(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_setup_l3ctable_odd(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_setup_l4ctable_even(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_setup_l4ctable_odd(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
