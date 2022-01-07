; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_delete_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_delete_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32, %struct.ip_fw** }
%struct.ip_fw = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@IPFW_RCFLAG_RANGE = common dso_local global i32 0, align 4
@IPFW_DEFAULT_RULE = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@IPFW_RCFLAG_DYNAMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_5__*, i32*)* @delete_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_range(%struct.ip_fw_chain* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip_fw*, align 8
  %9 = alloca %struct.ip_fw*, align 8
  %10 = alloca %struct.ip_fw**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ip_fw* null, %struct.ip_fw** %8, align 8
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %18 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %17)
  store i32 0, i32* %12, align 4
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %20 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %30, i64 %33, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %29
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @UINT32_MAX, align 4
  %51 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %46, i64 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %45, %3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IPFW_RCFLAG_DYNAMIC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = call i32 @ipfw_expire_dyn_states(%struct.ip_fw_chain* %61, %struct.TYPE_5__* %62)
  %64 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %65 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %64)
  store i32 0, i32* %4, align 4
  br label %210

66:                                               ; preds = %52
  %67 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %68 = call %struct.ip_fw** @get_map(%struct.ip_fw_chain* %67, i32 0, i32 1)
  store %struct.ip_fw** %68, %struct.ip_fw*** %10, align 8
  %69 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %70 = icmp eq %struct.ip_fw** %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %73 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %4, align 4
  br label %210

75:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %81 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %80, i32 0, i32 2
  %82 = load %struct.ip_fw**, %struct.ip_fw*** %81, align 8
  %83 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @bcopy(%struct.ip_fw** %82, %struct.ip_fw** %83, i32 %87)
  br label %89

89:                                               ; preds = %79, %75
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %124, %89
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %97 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %96, i32 0, i32 2
  %98 = load %struct.ip_fw**, %struct.ip_fw*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %98, i64 %100
  %102 = load %struct.ip_fw*, %struct.ip_fw** %101, align 8
  store %struct.ip_fw* %102, %struct.ip_fw** %9, align 8
  %103 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = call i64 @ipfw_match_range(%struct.ip_fw* %103, %struct.TYPE_5__* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %109 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %109, i64 %112
  store %struct.ip_fw* %108, %struct.ip_fw** %113, align 8
  br label %124

114:                                              ; preds = %95
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %118 = call i64 @ipfw_is_dyn_rule(%struct.ip_fw* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %120, %114
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %91

127:                                              ; preds = %91
  %128 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %129 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %128, i32 0, i32 2
  %130 = load %struct.ip_fw**, %struct.ip_fw*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %130, i64 %132
  %134 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %134, i64 %136
  %138 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %139 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @bcopy(%struct.ip_fw** %133, %struct.ip_fw** %137, i32 %145)
  %147 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %148 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %149 = call i32 @update_skipto_cache(%struct.ip_fw_chain* %147, %struct.ip_fw** %148)
  %150 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %151 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %152 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %153 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sub nsw i32 %154, %155
  %157 = call %struct.ip_fw** @swap_map(%struct.ip_fw_chain* %150, %struct.ip_fw** %151, i32 %156)
  store %struct.ip_fw** %157, %struct.ip_fw*** %10, align 8
  %158 = load i32, i32* %15, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %127
  %161 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = call i32 @ipfw_expire_dyn_states(%struct.ip_fw_chain* %161, %struct.TYPE_5__* %162)
  br label %164

164:                                              ; preds = %160, %127
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %193, %164
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %166
  %171 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %171, i64 %173
  %175 = load %struct.ip_fw*, %struct.ip_fw** %174, align 8
  store %struct.ip_fw* %175, %struct.ip_fw** %9, align 8
  %176 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = call i64 @ipfw_match_range(%struct.ip_fw* %176, %struct.TYPE_5__* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  br label %193

181:                                              ; preds = %170
  %182 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %183 = call i64 @RULEUSIZE0(%struct.ip_fw* %182)
  %184 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %185 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  %190 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %191 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %192 = call i32 @ipfw_reap_add(%struct.ip_fw_chain* %190, %struct.ip_fw** %8, %struct.ip_fw* %191)
  br label %193

193:                                              ; preds = %181, %180
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %166

196:                                              ; preds = %166
  %197 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %198 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %197)
  %199 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %200 = call i32 @ipfw_reap_rules(%struct.ip_fw* %199)
  %201 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %202 = icmp ne %struct.ip_fw** %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.ip_fw**, %struct.ip_fw*** %10, align 8
  %205 = load i32, i32* @M_IPFW, align 4
  %206 = call i32 @free(%struct.ip_fw** %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %196
  %208 = load i32, i32* %14, align 4
  %209 = load i32*, i32** %7, align 8
  store i32 %208, i32* %209, align 4
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %71, %59
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_find_rule(%struct.ip_fw_chain*, i64, i32) #1

declare dso_local i32 @ipfw_expire_dyn_states(%struct.ip_fw_chain*, %struct.TYPE_5__*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.ip_fw** @get_map(%struct.ip_fw_chain*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ip_fw**, %struct.ip_fw**, i32) #1

declare dso_local i64 @ipfw_match_range(%struct.ip_fw*, %struct.TYPE_5__*) #1

declare dso_local i64 @ipfw_is_dyn_rule(%struct.ip_fw*) #1

declare dso_local i32 @update_skipto_cache(%struct.ip_fw_chain*, %struct.ip_fw**) #1

declare dso_local %struct.ip_fw** @swap_map(%struct.ip_fw_chain*, %struct.ip_fw**, i32) #1

declare dso_local i64 @RULEUSIZE0(%struct.ip_fw*) #1

declare dso_local i32 @ipfw_reap_add(%struct.ip_fw_chain*, %struct.ip_fw**, %struct.ip_fw*) #1

declare dso_local i32 @ipfw_reap_rules(%struct.ip_fw*) #1

declare dso_local i32 @free(%struct.ip_fw**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
