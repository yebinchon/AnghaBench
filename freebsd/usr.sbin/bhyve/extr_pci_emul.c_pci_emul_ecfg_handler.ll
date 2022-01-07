; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_ecfg_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_ecfg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@MEM_F_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*, i64)* @pci_emul_ecfg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_ecfg_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, 4095
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %12, align 4
  %25 = ashr i32 %24, 12
  %26 = and i32 %25, 7
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %12, align 4
  %28 = ashr i32 %27, 15
  %29 = and i32 %28, 31
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %12, align 4
  %31 = ashr i32 %30, 20
  %32 = and i32 %31, 255
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MEM_F_READ, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = load i32*, i32** %14, align 8
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %8
  %42 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @pci_cfgrw(%struct.vmctx* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32* %50)
  ret i32 0
}

declare dso_local i32 @pci_cfgrw(%struct.vmctx*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
