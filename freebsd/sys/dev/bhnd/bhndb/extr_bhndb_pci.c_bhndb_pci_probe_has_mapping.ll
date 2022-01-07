; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_has_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_probe_has_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_probe = type { i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"missing register window\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"missing regwin resource\00", align 1
@BHNDB_REGWIN_T_DYN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unexpected window type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_probe*, i64, i64)* @bhndb_pci_probe_has_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_probe_has_mapping(%struct.bhndb_pci_probe* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_pci_probe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bhndb_pci_probe* %0, %struct.bhndb_pci_probe** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %9 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

13:                                               ; preds = %3
  %14 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %15 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %21 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %27 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BHNDB_REGWIN_T_DYN, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %35 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %33, i8* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %43 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %76

47:                                               ; preds = %13
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %50 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %53 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = icmp sge i64 %48, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %76

60:                                               ; preds = %47
  %61 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %62 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.bhndb_pci_probe*, %struct.bhndb_pci_probe** %5, align 8
  %65 = getelementptr inbounds %struct.bhndb_pci_probe, %struct.bhndb_pci_probe* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %76

75:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %74, %59, %46, %12
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
