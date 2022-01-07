; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32, i32, i64, i8*, %struct.clknode*, i64 }

@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_NODE_GLITCH_FREE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot set frequency for clk: %s, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot set frequency for clk: %s, end of chain\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_set_freq(%struct.clknode* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.clknode* %0, %struct.clknode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @CLK_TOPO_XASSERT()
  %14 = load %struct.clknode*, %struct.clknode** %6, align 8
  %15 = getelementptr inbounds %struct.clknode, %struct.clknode* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

20:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.clknode*, %struct.clknode** %6, align 8
  %27 = getelementptr inbounds %struct.clknode, %struct.clknode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.clknode*, %struct.clknode** %6, align 8
  %32 = getelementptr inbounds %struct.clknode, %struct.clknode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.clknode*, %struct.clknode** %6, align 8
  %38 = getelementptr inbounds %struct.clknode, %struct.clknode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLK_NODE_GLITCH_FREE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EBUSY, align 4
  store i32 %44, i32* %5, align 4
  br label %136

45:                                               ; preds = %36, %30, %25, %20
  %46 = load %struct.clknode*, %struct.clknode** %6, align 8
  %47 = getelementptr inbounds %struct.clknode, %struct.clknode* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.clknode*, %struct.clknode** %6, align 8
  %52 = getelementptr inbounds %struct.clknode, %struct.clknode* %51, i32 0, i32 4
  %53 = load %struct.clknode*, %struct.clknode** %52, align 8
  %54 = call i32 @clknode_get_freq(%struct.clknode* %53, i64* %12)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %136

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.clknode*, %struct.clknode** %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @CLKNODE_SET_FREQ(%struct.clknode* %61, i64 %62, i64* %7, i32 %63, i32* %11)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load %struct.clknode*, %struct.clknode** %6, align 8
  %69 = getelementptr inbounds %struct.clknode, %struct.clknode* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.clknode*, %struct.clknode** %6, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @clknode_refresh_cache(%struct.clknode* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %67
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %136

83:                                               ; preds = %60
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.clknode*, %struct.clknode** %6, align 8
  %94 = getelementptr inbounds %struct.clknode, %struct.clknode* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load %struct.clknode*, %struct.clknode** %6, align 8
  %96 = getelementptr inbounds %struct.clknode, %struct.clknode* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %91
  %100 = load %struct.clknode*, %struct.clknode** %6, align 8
  %101 = getelementptr inbounds %struct.clknode, %struct.clknode* %100, i32 0, i32 4
  %102 = load %struct.clknode*, %struct.clknode** %101, align 8
  %103 = call i32 @clknode_get_freq(%struct.clknode* %102, i64* %12)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %136

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.clknode*, %struct.clknode** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @clknode_refresh_cache(%struct.clknode* %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %86
  br label %134

114:                                              ; preds = %83
  %115 = load %struct.clknode*, %struct.clknode** %6, align 8
  %116 = getelementptr inbounds %struct.clknode, %struct.clknode* %115, i32 0, i32 4
  %117 = load %struct.clknode*, %struct.clknode** %116, align 8
  %118 = icmp ne %struct.clknode* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.clknode*, %struct.clknode** %6, align 8
  %121 = getelementptr inbounds %struct.clknode, %struct.clknode* %120, i32 0, i32 4
  %122 = load %struct.clknode*, %struct.clknode** %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @clknode_set_freq(%struct.clknode* %122, i64 %123, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %133

127:                                              ; preds = %114
  %128 = load %struct.clknode*, %struct.clknode** %6, align 8
  %129 = getelementptr inbounds %struct.clknode, %struct.clknode* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %127, %119
  br label %134

134:                                              ; preds = %133, %113
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %106, %81, %57, %43, %19
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @CLK_TOPO_XASSERT(...) #1

declare dso_local i32 @clknode_get_freq(%struct.clknode*, i64*) #1

declare dso_local i32 @CLKNODE_SET_FREQ(%struct.clknode*, i64, i64*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @clknode_refresh_cache(%struct.clknode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
