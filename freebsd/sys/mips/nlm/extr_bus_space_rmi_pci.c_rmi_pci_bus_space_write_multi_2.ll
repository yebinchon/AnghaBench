; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_bus_space_rmi_pci.c_rmi_pci_bus_space_write_multi_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_bus_space_rmi_pci.c_rmi_pci_bus_space_write_multi_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32*, i64)* @rmi_pci_bus_space_write_multi_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_pci_bus_space_write_multi_2(i8* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = call i32 (...) @mips_sync()
  br label %12

12:                                               ; preds = %16, %5
  %13 = load i64, i64* %10, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %10, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bswap16(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  %23 = inttoptr i64 %22 to i32*
  store volatile i32 %19, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %9, align 8
  br label %12

26:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mips_sync(...) #1

declare dso_local i32 @bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
