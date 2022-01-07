; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_spads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_spads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.tool_ctx* }
%struct.TYPE_4__ = type { i32, i32, %struct.tool_ctx* }

@M_NTB_TOOL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*)* @tool_init_spads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_init_spads(%struct.tool_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  %6 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @ntb_spad_count(i32 %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @M_NTB_TOOL, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @malloc(i32 %18, i32 %19, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  %25 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %25, i32 0, i32 4
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %2, align 4
  br label %182

33:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 8
  %49 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %57 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store %struct.tool_ctx* %56, %struct.tool_ctx** %63, align 8
  br label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %34

67:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %178, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %181

74:                                               ; preds = %68
  %75 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @ntb_spad_count(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 8
  %87 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 16
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @M_NTB_TOOL, align 4
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = load i32, i32* @M_ZERO, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @malloc(i32 %97, i32 %98, i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_5__*
  %104 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %110, align 8
  %111 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = icmp eq %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %74
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %2, align 4
  br label %182

122:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %174, %122
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %124, %132
  br i1 %133, label %134, label %177

134:                                              ; preds = %123
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 %135, i32* %147, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i32 %148, i32* %160, align 4
  %161 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %162 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %162, i32 0, i32 2
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  store %struct.tool_ctx* %161, %struct.tool_ctx** %173, align 8
  br label %174

174:                                              ; preds = %134
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %123

177:                                              ; preds = %123
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %68

181:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %120, %31
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i8* @ntb_spad_count(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
