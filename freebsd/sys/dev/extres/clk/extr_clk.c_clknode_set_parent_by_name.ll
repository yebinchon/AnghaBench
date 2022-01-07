; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_set_parent_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_set_parent_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32, i32, %struct.clknode*, i32** }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_set_parent_by_name(%struct.clknode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 (...) @CLK_TOPO_XASSERT()
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = getelementptr inbounds %struct.clknode, %struct.clknode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

16:                                               ; preds = %2
  %17 = load %struct.clknode*, %struct.clknode** %4, align 8
  %18 = getelementptr inbounds %struct.clknode, %struct.clknode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.clknode*, %struct.clknode** %4, align 8
  %23 = getelementptr inbounds %struct.clknode, %struct.clknode* %22, i32 0, i32 2
  %24 = load %struct.clknode*, %struct.clknode** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @clknode_set_parent_by_name(%struct.clknode* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %109

28:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.clknode*, %struct.clknode** %4, align 8
  %32 = getelementptr inbounds %struct.clknode, %struct.clknode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.clknode*, %struct.clknode** %4, align 8
  %37 = getelementptr inbounds %struct.clknode, %struct.clknode* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %58

45:                                               ; preds = %35
  %46 = load %struct.clknode*, %struct.clknode** %4, align 8
  %47 = getelementptr inbounds %struct.clknode, %struct.clknode* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i32* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %29

61:                                               ; preds = %56, %29
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.clknode*, %struct.clknode** %4, align 8
  %64 = getelementptr inbounds %struct.clknode, %struct.clknode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %3, align 4
  br label %109

69:                                               ; preds = %61
  %70 = load %struct.clknode*, %struct.clknode** %4, align 8
  %71 = getelementptr inbounds %struct.clknode, %struct.clknode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %109

76:                                               ; preds = %69
  %77 = load %struct.clknode*, %struct.clknode** %4, align 8
  %78 = getelementptr inbounds %struct.clknode, %struct.clknode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.clknode*, %struct.clknode** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @clknode_adjust_parent(%struct.clknode* %80, i32 %81)
  %83 = load %struct.clknode*, %struct.clknode** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @CLKNODE_SET_MUX(%struct.clknode* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.clknode*, %struct.clknode** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @clknode_adjust_parent(%struct.clknode* %89, i32 %90)
  %92 = load %struct.clknode*, %struct.clknode** %4, align 8
  %93 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %109

95:                                               ; preds = %76
  %96 = load %struct.clknode*, %struct.clknode** %4, align 8
  %97 = getelementptr inbounds %struct.clknode, %struct.clknode* %96, i32 0, i32 2
  %98 = load %struct.clknode*, %struct.clknode** %97, align 8
  %99 = call i32 @clknode_get_freq(%struct.clknode* %98, i32* %7)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %109

104:                                              ; preds = %95
  %105 = load %struct.clknode*, %struct.clknode** %4, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @clknode_refresh_cache(%struct.clknode* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %102, %88, %75, %67, %21, %15
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @CLK_TOPO_XASSERT(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @clknode_adjust_parent(%struct.clknode*, i32) #1

declare dso_local i32 @CLKNODE_SET_MUX(%struct.clknode*, i32) #1

declare dso_local i32 @CLKNODE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @clknode_get_freq(%struct.clknode*, i32*) #1

declare dso_local i32 @clknode_refresh_cache(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
