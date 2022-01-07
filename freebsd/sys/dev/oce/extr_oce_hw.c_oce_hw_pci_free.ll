; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_pci_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_pci_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, %struct.resource*, i32, i8*, i8*, i8*, %struct.resource*, i8*, i8*, i8*, %struct.resource* }
%struct.resource = type { i32 }

@OCE_FLAGS_BE2 = common dso_local global i32 0, align 4
@OCE_DEV_BE2_CFG_BAR = common dso_local global i32 0, align 4
@OCE_DEV_CFG_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@OCE_PCI_CSR_BAR = common dso_local global i32 0, align 4
@OCE_PCI_DB_BAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oce_hw_pci_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i64 @IS_BE(%struct.TYPE_4__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OCE_FLAGS_BE2, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @OCE_DEV_BE2_CFG_BAR, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %7, %1
  %17 = load i32, i32* @OCE_DEV_CFG_BAR, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 13
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PCIR_BAR(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 13
  %32 = load %struct.resource*, %struct.resource** %31, align 8
  %33 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %29, %struct.resource* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 13
  store %struct.resource* null, %struct.resource** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 12
  store i8* null, i8** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 11
  store i8* null, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 10
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %23, %18
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  %45 = load %struct.resource*, %struct.resource** %44, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load i32, i32* @OCE_PCI_CSR_BAR, align 4
  %53 = call i32 @PCIR_BAR(i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 9
  %56 = load %struct.resource*, %struct.resource** %55, align 8
  %57 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %53, %struct.resource* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 9
  store %struct.resource* null, %struct.resource** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 8
  store i8* null, i8** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 7
  store i8* null, i8** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %47, %42
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load %struct.resource*, %struct.resource** %68, align 8
  %70 = icmp ne %struct.resource* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load i32, i32* @OCE_PCI_DB_BAR, align 4
  %77 = call i32 @PCIR_BAR(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load %struct.resource*, %struct.resource** %79, align 8
  %81 = call i32 @bus_release_resource(i32 %74, i32 %75, i32 %77, %struct.resource* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store %struct.resource* null, %struct.resource** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* null, i8** %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* null, i8** %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %71, %66
  ret void
}

declare dso_local i64 @IS_BE(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
