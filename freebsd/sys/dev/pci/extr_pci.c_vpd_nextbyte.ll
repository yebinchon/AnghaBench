; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_vpd_nextbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_vpd_nextbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_readstate = type { i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpd_readstate*, i32*)* @vpd_nextbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_nextbyte(%struct.vpd_readstate* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpd_readstate*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vpd_readstate* %0, %struct.vpd_readstate** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %9 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %14 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %17 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %20 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pci_read_vpd_reg(i32 %15, i32 %18, i32 %21, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @le32toh(i32 %27)
  %29 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %30 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %32 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %32, align 4
  %35 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %36 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %7, align 4
  %39 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %40 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %39, i32 0, i32 0
  store i32 3, i32* %40, align 4
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %43 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %47 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %49 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %7, align 4
  %52 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %53 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %41, %26
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.vpd_readstate*, %struct.vpd_readstate** %4, align 8
  %59 = getelementptr inbounds %struct.vpd_readstate, %struct.vpd_readstate* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @pci_read_vpd_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
