; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_mws.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tool_mw* }
%struct.tool_mw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tool_ctx* }

@M_NTB_TOOL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_MW_OFF = common dso_local global i32 0, align 4
@DEFAULT_MW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*)* @tool_init_mws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_init_mws(%struct.tool_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca %struct.tool_mw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %127, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %130

14:                                               ; preds = %8
  %15 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntb_mw_count(i32 %17)
  %19 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 8
  %26 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 48
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @M_NTB_TOOL, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.tool_mw* @malloc(i32 %36, i32 %37, i32 %40)
  %42 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.tool_mw* %41, %struct.tool_mw** %48, align 8
  %49 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.tool_mw*, %struct.tool_mw** %55, align 8
  %57 = icmp eq %struct.tool_mw* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %14
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %2, align 4
  br label %135

60:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %123, %60
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %62, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %61
  %73 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load %struct.tool_mw*, %struct.tool_mw** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %80, i64 %82
  store %struct.tool_mw* %83, %struct.tool_mw** %4, align 8
  %84 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %85 = bitcast %struct.tool_mw* %84 to i8*
  %86 = call i32 @memset(i8* %85, i32 0, i32 48)
  %87 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %88 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %89 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %88, i32 0, i32 10
  store %struct.tool_ctx* %87, %struct.tool_ctx** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %92 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %95 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DEFAULT_MW_OFF, align 4
  %97 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %98 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DEFAULT_MW_SIZE, align 4
  %100 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %101 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %107 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %106, i32 0, i32 7
  %108 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %109 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %108, i32 0, i32 6
  %110 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %111 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %110, i32 0, i32 5
  %112 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %113 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %112, i32 0, i32 4
  %114 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %115 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %114, i32 0, i32 3
  %116 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %117 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %116, i32 0, i32 2
  %118 = call i32 @ntb_mw_get_range(i32 %104, i32 %105, i32* %107, i32* %109, i32* %111, i32* %113, i32* %115, i32* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %72
  br label %131

122:                                              ; preds = %72
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %61

126:                                              ; preds = %61
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %8

130:                                              ; preds = %8
  store i32 0, i32* %2, align 4
  br label %135

131:                                              ; preds = %121
  %132 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %133 = call i32 @tool_clear_mws(%struct.tool_ctx* %132)
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %130, %58
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @ntb_mw_count(i32) #1

declare dso_local %struct.tool_mw* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ntb_mw_get_range(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @tool_clear_mws(%struct.tool_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
