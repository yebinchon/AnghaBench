; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c___mlx4_ib_default_rules_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c___mlx4_ib_default_rules_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.default_rules = type { i64, i32*, i64* }
%struct.ib_qp = type { i32 }
%struct.ib_flow_attr = type { i32, i32 }
%union.ib_flow_spec = type { i32 }

@default_table = common dso_local global %struct.default_rules* null, align 8
@IB_FLOW_SPEC_SUPPORT_LAYERS = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_LAYER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_flow_attr*)* @__mlx4_ib_default_rules_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_ib_default_rules_match(%struct.ib_qp* %0, %struct.ib_flow_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_flow_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.default_rules*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.ib_flow_spec*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %5, align 8
  %16 = load %struct.default_rules*, %struct.default_rules** @default_table, align 8
  store %struct.default_rules* %16, %struct.default_rules** %10, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rdma_port_get_link_layer(i32 %19, i32 %22)
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %167, %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.default_rules*, %struct.default_rules** @default_table, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.default_rules* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %172

29:                                               ; preds = %24
  %30 = load i32, i32* @IB_FLOW_SPEC_SUPPORT_LAYERS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %12, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %34 = bitcast i32* %33 to i32**
  %35 = mul nuw i64 4, %31
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32** %34, i32 0, i32 %36)
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %40 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 4, i32* %14, align 4
  br label %164

44:                                               ; preds = %29
  %45 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %45, i64 1
  %47 = bitcast %struct.ib_flow_attr* %46 to i8*
  store i8* %47, i8** %9, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %114, %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @IB_FLOW_SPEC_SUPPORT_LAYERS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi i1 [ false, %48 ], [ %57, %52 ]
  br i1 %59, label %60, label %117

60:                                               ; preds = %58
  %61 = load i8*, i8** %9, align 8
  %62 = bitcast i8* %61 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %62, %union.ib_flow_spec** %15, align 8
  %63 = load %union.ib_flow_spec*, %union.ib_flow_spec** %15, align 8
  %64 = bitcast %union.ib_flow_spec* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IB_FLOW_SPEC_LAYER_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %69 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_FLOW_SPEC_LAYER_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %67, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %60
  %79 = load %union.ib_flow_spec*, %union.ib_flow_spec** %15, align 8
  %80 = bitcast %union.ib_flow_spec* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %83 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %81, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store i32 8, i32* %14, align 4
  br label %164

91:                                               ; preds = %78, %60
  %92 = load %union.ib_flow_spec*, %union.ib_flow_spec** %15, align 8
  %93 = bitcast %union.ib_flow_spec* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %96 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %94, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = bitcast i8* %106 to %union.ib_flow_spec*
  %108 = bitcast %union.ib_flow_spec* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  store i8* %112, i8** %9, align 8
  br label %113

113:                                              ; preds = %103, %91
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %48

117:                                              ; preds = %58
  %118 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %119 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %118, i64 1
  %120 = bitcast %struct.ib_flow_attr* %119 to i8*
  store i8* %120, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %152, %117
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %124 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %162

127:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %148, %127
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @IB_FLOW_SPEC_SUPPORT_LAYERS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i8*, i8** %9, align 8
  %134 = bitcast i8* %133 to %union.ib_flow_spec*
  %135 = bitcast %union.ib_flow_spec* %134 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %139 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %138, i32 0, i32 2
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %137, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 8, i32* %14, align 4
  br label %164

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %128

151:                                              ; preds = %128
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = bitcast i8* %155 to %union.ib_flow_spec*
  %157 = bitcast %union.ib_flow_spec* %156 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr i8, i8* %159, i64 %160
  store i8* %161, i8** %9, align 8
  br label %121

162:                                              ; preds = %121
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %164

164:                                              ; preds = %146, %90, %162, %43
  %165 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %14, align 4
  switch i32 %166, label %176 [
    i32 4, label %167
    i32 1, label %174
    i32 8, label %173
  ]

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  %170 = load %struct.default_rules*, %struct.default_rules** %10, align 8
  %171 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %170, i32 1
  store %struct.default_rules* %171, %struct.default_rules** %10, align 8
  br label %24

172:                                              ; preds = %24
  br label %173

173:                                              ; preds = %172, %164
  store i32 -1, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %164
  %175 = load i32, i32* %3, align 4
  ret i32 %175

176:                                              ; preds = %164
  unreachable
}

declare dso_local i64 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.default_rules*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32**, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
