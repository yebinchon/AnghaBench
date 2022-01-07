; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_nranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_nranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_cell_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pci_nranges(i32 %0, %struct.ofw_pci_cell_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_pci_cell_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ofw_pci_cell_info* %1, %struct.ofw_pci_cell_info** %5, align 8
  %7 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %8 = icmp eq %struct.ofw_pci_cell_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %53

10:                                               ; preds = %2
  %11 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %12 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %14 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %16 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %15, i32 0, i32 2
  store i32 3, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @OF_parent(i32 %17)
  %19 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %20 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %19, i32 0, i32 0
  %21 = call i32 @OF_getencprop(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %20, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %24 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %23, i32 0, i32 2
  %25 = call i32 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %24, i32 4)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %28 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %27, i32 0, i32 1
  %29 = call i32 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32 4)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @OF_getproplen(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %53

35:                                               ; preds = %10
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %40 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %43 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %5, align 8
  %47 = getelementptr inbounds %struct.ofw_pci_cell_info, %struct.ofw_pci_cell_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %38, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %34, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
