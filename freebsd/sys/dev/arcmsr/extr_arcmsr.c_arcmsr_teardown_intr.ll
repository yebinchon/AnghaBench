; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32**, i32**, i32* }

@ACB_F_MSIX_ENABLED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.AdapterControlBlock*)* @arcmsr_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_teardown_intr(i32 %0, %struct.AdapterControlBlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.AdapterControlBlock* %1, %struct.AdapterControlBlock** %4, align 8
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ACB_F_MSIX_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %79, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %31 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %38 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_teardown_intr(i32 %29, i32* %36, i32* %43)
  br label %45

45:                                               ; preds = %28, %19
  %46 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %47 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SYS_RES_IRQ, align 4
  %57 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %58 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %65 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %64, i32 0, i32 3
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @bus_release_resource(i32 %55, i32 %56, i32 %63, i32* %70)
  br label %72

72:                                               ; preds = %54, %45
  %73 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %74 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %13

82:                                               ; preds = %13
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @pci_release_msi(i32 %83)
  br label %131

85:                                               ; preds = %2
  %86 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %87 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %95 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %100 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @bus_teardown_intr(i32 %93, i32* %98, i32* %103)
  br label %105

105:                                              ; preds = %92, %85
  %106 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %107 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %105
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @SYS_RES_IRQ, align 4
  %115 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %116 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %121 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %120, i32 0, i32 3
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bus_release_resource(i32 %113, i32 %114, i32 %119, i32* %124)
  br label %126

126:                                              ; preds = %112, %105
  %127 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %128 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %126, %82
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
