; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { %struct.resource*, i32, %struct.resource**, i32*, %struct.resource*, i32, i32*, i32 }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@FDC_MAXREG = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdc_release_resources(%struct.fdc_data* %0) #0 {
  %2 = alloca %struct.fdc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %2, align 8
  %6 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %7 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %10 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %16 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %15, i32 0, i32 4
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  %18 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %19 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_teardown_intr(i32 %14, %struct.resource* %17, i32* %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %24 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %26 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %25, i32 0, i32 4
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %33 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %36 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %35, i32 0, i32 4
  %37 = load %struct.resource*, %struct.resource** %36, align 8
  %38 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %34, %struct.resource* %37)
  br label %39

39:                                               ; preds = %29, %22
  %40 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %41 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %40, i32 0, i32 4
  store %struct.resource* null, %struct.resource** %41, align 8
  store %struct.resource* null, %struct.resource** %4, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %97, %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @FDC_MAXREG, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %42
  %47 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %48 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %47, i32 0, i32 2
  %49 = load %struct.resource**, %struct.resource*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.resource*, %struct.resource** %49, i64 %51
  %53 = load %struct.resource*, %struct.resource** %52, align 8
  %54 = icmp ne %struct.resource* %53, null
  br i1 %54, label %55, label %96

55:                                               ; preds = %46
  %56 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %57 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %56, i32 0, i32 2
  %58 = load %struct.resource**, %struct.resource*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.resource*, %struct.resource** %58, i64 %60
  %62 = load %struct.resource*, %struct.resource** %61, align 8
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = icmp ne %struct.resource* %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %55
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SYS_RES_IOPORT, align 4
  %68 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %69 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %76 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %75, i32 0, i32 2
  %77 = load %struct.resource**, %struct.resource*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.resource*, %struct.resource** %77, i64 %79
  %81 = load %struct.resource*, %struct.resource** %80, align 8
  %82 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 %74, %struct.resource* %81)
  %83 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %84 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %83, i32 0, i32 2
  %85 = load %struct.resource**, %struct.resource*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.resource*, %struct.resource** %85, i64 %87
  %89 = load %struct.resource*, %struct.resource** %88, align 8
  store %struct.resource* %89, %struct.resource** %4, align 8
  %90 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %91 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %90, i32 0, i32 2
  %92 = load %struct.resource**, %struct.resource*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.resource*, %struct.resource** %92, i64 %94
  store %struct.resource* null, %struct.resource** %95, align 8
  br label %96

96:                                               ; preds = %65, %55, %46
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %42

100:                                              ; preds = %42
  %101 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %102 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %101, i32 0, i32 0
  %103 = load %struct.resource*, %struct.resource** %102, align 8
  %104 = icmp ne %struct.resource* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SYS_RES_DRQ, align 4
  %108 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %109 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %112 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %112, align 8
  %114 = call i32 @bus_release_resource(i32 %106, i32 %107, i32 %110, %struct.resource* %113)
  br label %115

115:                                              ; preds = %105, %100
  %116 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %117 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %116, i32 0, i32 0
  store %struct.resource* null, %struct.resource** %117, align 8
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
