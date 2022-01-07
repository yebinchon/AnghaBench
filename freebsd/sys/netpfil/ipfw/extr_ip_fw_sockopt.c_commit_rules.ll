; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_commit_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_commit_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32, i64, i32 }
%struct.rule_check_info = type { i64, i64, i64, %struct.ip_fw* }
%struct.ip_fw = type { i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@V_autoinc_step = common dso_local global i32 0, align 4
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.rule_check_info*, i32)* @commit_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_rules(%struct.ip_fw_chain* %0, %struct.rule_check_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.rule_check_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.rule_check_info*, align 8
  %15 = alloca %struct.ip_fw*, align 8
  %16 = alloca %struct.ip_fw**, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.rule_check_info* %1, %struct.rule_check_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.rule_check_info*, %struct.rule_check_info** %6, align 8
  store %struct.rule_check_info* %17, %struct.rule_check_info** %14, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %66, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %24 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %66

28:                                               ; preds = %22
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %31 = call i32 @rewrite_rule_uidx(%struct.ip_fw_chain* %29, %struct.rule_check_info* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %38)
  br label %40

40:                                               ; preds = %52, %51, %37
  %41 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %42 = load %struct.rule_check_info*, %struct.rule_check_info** %6, align 8
  %43 = icmp ne %struct.rule_check_info* %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %46 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %45, i32 -1
  store %struct.rule_check_info* %46, %struct.rule_check_info** %14, align 8
  %47 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %48 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %40

52:                                               ; preds = %44
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %54 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %55 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %54, i32 0, i32 3
  %56 = load %struct.ip_fw*, %struct.ip_fw** %55, align 8
  %57 = call i32 @unref_rule_objects(%struct.ip_fw_chain* %53, %struct.ip_fw* %56)
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %60 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %59)
  br label %61

61:                                               ; preds = %58, %34
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %250

63:                                               ; preds = %28
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %27
  %67 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %68 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %67, i32 1
  store %struct.rule_check_info* %68, %struct.rule_check_info** %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.ip_fw** @get_map(%struct.ip_fw_chain* %72, i32 %73, i32 0)
  store %struct.ip_fw** %74, %struct.ip_fw*** %16, align 8
  %75 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %76 = icmp eq %struct.ip_fw** %75, null
  br i1 %76, label %77, label %110

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %82 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %81)
  %83 = load %struct.rule_check_info*, %struct.rule_check_info** %6, align 8
  store %struct.rule_check_info* %83, %struct.rule_check_info** %14, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %100, %80
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %90 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %100

94:                                               ; preds = %88
  %95 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %96 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %97 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %96, i32 0, i32 3
  %98 = load %struct.ip_fw*, %struct.ip_fw** %97, align 8
  %99 = call i32 @unref_rule_objects(%struct.ip_fw_chain* %95, %struct.ip_fw* %98)
  br label %100

100:                                              ; preds = %94, %93
  %101 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %102 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %101, i32 1
  store %struct.rule_check_info* %102, %struct.rule_check_info** %14, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %107 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %106)
  br label %108

108:                                              ; preds = %105, %77
  %109 = load i32, i32* @ENOSPC, align 4
  store i32 %109, i32* %4, align 4
  br label %250

110:                                              ; preds = %71
  %111 = load i32, i32* @V_autoinc_step, align 4
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 1, i32* @V_autoinc_step, align 4
  br label %119

114:                                              ; preds = %110
  %115 = load i32, i32* @V_autoinc_step, align 4
  %116 = icmp sgt i32 %115, 1000
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1000, i32* @V_autoinc_step, align 4
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %118, %113
  %120 = load %struct.rule_check_info*, %struct.rule_check_info** %6, align 8
  store %struct.rule_check_info* %120, %struct.rule_check_info** %14, align 8
  %121 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %122 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %121, i32 0, i32 3
  %123 = load %struct.ip_fw*, %struct.ip_fw** %122, align 8
  store %struct.ip_fw* %123, %struct.ip_fw** %15, align 8
  %124 = load %struct.ip_fw*, %struct.ip_fw** %15, align 8
  %125 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  br label %134

132:                                              ; preds = %119
  %133 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %131, %129 ], [ %133, %132 ]
  store i32 %135, i32* %10, align 4
  %136 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %136, i32 %137, i32 0)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %143 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @bcopy(i32 %144, %struct.ip_fw** %145, i32 %149)
  br label %151

151:                                              ; preds = %141, %134
  %152 = load %struct.ip_fw*, %struct.ip_fw** %15, align 8
  %153 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %153, i64 %155
  store %struct.ip_fw* %152, %struct.ip_fw** %156, align 8
  %157 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %158 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %162, i64 %164
  %166 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %165, i64 1
  %167 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %168 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = mul i64 8, %172
  %174 = trunc i64 %173 to i32
  %175 = call i32 @bcopy(i32 %161, %struct.ip_fw** %166, i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %151
  %179 = load i32, i32* %9, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %182, i64 %185
  %187 = load %struct.ip_fw*, %struct.ip_fw** %186, align 8
  %188 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  br label %191

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %190, %181
  %192 = phi i32 [ %189, %181 ], [ 0, %190 ]
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  %195 = load i32, i32* @V_autoinc_step, align 4
  %196 = sub nsw i32 %194, %195
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load i32, i32* @V_autoinc_step, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %198, %191
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.ip_fw*, %struct.ip_fw** %15, align 8
  %205 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %207 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.rule_check_info*, %struct.rule_check_info** %14, align 8
  %210 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = inttoptr i64 %212 to i32*
  store i32* %213, i32** %13, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32*, i32** %13, align 8
  store i32 %214, i32* %215, align 4
  br label %216

216:                                              ; preds = %202, %151
  %217 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %218 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  %221 = load %struct.ip_fw*, %struct.ip_fw** %15, align 8
  %222 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %224 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %225 = call i32 @update_skipto_cache(%struct.ip_fw_chain* %223, %struct.ip_fw** %224)
  %226 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %227 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %228 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %229 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  %232 = call %struct.ip_fw** @swap_map(%struct.ip_fw_chain* %226, %struct.ip_fw** %227, i32 %231)
  store %struct.ip_fw** %232, %struct.ip_fw*** %16, align 8
  %233 = load %struct.ip_fw*, %struct.ip_fw** %15, align 8
  %234 = call i64 @RULEUSIZE0(%struct.ip_fw* %233)
  %235 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %236 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %242 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %241)
  %243 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %244 = icmp ne %struct.ip_fw** %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %216
  %246 = load %struct.ip_fw**, %struct.ip_fw*** %16, align 8
  %247 = load i32, i32* @M_IPFW, align 4
  %248 = call i32 @free(%struct.ip_fw** %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %216
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %249, %108, %61
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @rewrite_rule_uidx(%struct.ip_fw_chain*, %struct.rule_check_info*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @unref_rule_objects(%struct.ip_fw_chain*, %struct.ip_fw*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.ip_fw** @get_map(%struct.ip_fw_chain*, i32, i32) #1

declare dso_local i32 @ipfw_find_rule(%struct.ip_fw_chain*, i32, i32) #1

declare dso_local i32 @bcopy(i32, %struct.ip_fw**, i32) #1

declare dso_local i32 @update_skipto_cache(%struct.ip_fw_chain*, %struct.ip_fw**) #1

declare dso_local %struct.ip_fw** @swap_map(%struct.ip_fw_chain*, %struct.ip_fw**, i32) #1

declare dso_local i64 @RULEUSIZE0(%struct.ip_fw*) #1

declare dso_local i32 @free(%struct.ip_fw**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
