; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_pci_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_pci_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SPR_SVR = common dso_local global i32 0, align 4
@SVR_MPC8548E = common dso_local global i32 0, align 4
@SVR_MPC8548 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @law_pci_target(%struct.resource* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @SPR_SVR, align 4
  %12 = call i32 @mfspr(i32 %11)
  %13 = call i32 @SVR_VER(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.resource*, %struct.resource** %4, align 8
  %15 = call i32 @rman_get_start(%struct.resource* %14)
  %16 = and i32 %15, 61440
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %43 [
    i32 0, label %18
    i32 32768, label %18
    i32 4096, label %19
    i32 36864, label %19
    i32 8192, label %20
    i32 40960, label %20
    i32 12288, label %31
    i32 45056, label %31
  ]

18:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %45

19:                                               ; preds = %3, %3
  store i32 1, i32* %9, align 4
  br label %45

20:                                               ; preds = %3, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SVR_MPC8548E, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SVR_MPC8548, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  store i32 3, i32* %9, align 4
  br label %30

29:                                               ; preds = %24
  store i32 2, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %45

31:                                               ; preds = %3, %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SVR_MPC8548E, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SVR_MPC8548, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %10, align 4
  br label %42

41:                                               ; preds = %35
  store i32 3, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %39
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %42, %30, %19, %18
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @SVR_VER(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
