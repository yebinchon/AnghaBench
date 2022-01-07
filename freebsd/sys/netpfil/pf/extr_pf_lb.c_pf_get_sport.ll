; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_get_sport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_get_sport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pf_addr = type { i32*, i32, i32*, i64 }
%struct.pf_src_node = type { i32 }
%struct.pf_state_key_cmp = type { i32*, i32, i32*, i64 }

@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@PF_IN = common dso_local global i32 0, align 4
@PF_POOL_TYPEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.pf_rule*, %struct.pf_addr*, i32, %struct.pf_addr*, i32, %struct.pf_addr*, i32*, i32, i32, %struct.pf_src_node**)* @pf_get_sport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_get_sport(i32 %0, i64 %1, %struct.pf_rule* %2, %struct.pf_addr* %3, i32 %4, %struct.pf_addr* %5, i32 %6, %struct.pf_addr* %7, i32* %8, i32 %9, i32 %10, %struct.pf_src_node** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.pf_rule*, align 8
  %17 = alloca %struct.pf_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.pf_addr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.pf_addr*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.pf_src_node**, align 8
  %26 = alloca %struct.pf_state_key_cmp, align 8
  %27 = alloca %struct.pf_addr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i64 %1, i64* %15, align 8
  store %struct.pf_rule* %2, %struct.pf_rule** %16, align 8
  store %struct.pf_addr* %3, %struct.pf_addr** %17, align 8
  store i32 %4, i32* %18, align 4
  store %struct.pf_addr* %5, %struct.pf_addr** %19, align 8
  store i32 %6, i32* %20, align 4
  store %struct.pf_addr* %7, %struct.pf_addr** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store %struct.pf_src_node** %11, %struct.pf_src_node*** %25, align 8
  %30 = bitcast %struct.pf_addr* %27 to %struct.pf_state_key_cmp*
  %31 = call i32 @bzero(%struct.pf_state_key_cmp* %30, i32 32)
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %34 = load %struct.pf_addr*, %struct.pf_addr** %17, align 8
  %35 = bitcast %struct.pf_addr* %34 to %struct.pf_state_key_cmp*
  %36 = load %struct.pf_addr*, %struct.pf_addr** %21, align 8
  %37 = bitcast %struct.pf_addr* %36 to %struct.pf_state_key_cmp*
  %38 = bitcast %struct.pf_addr* %27 to %struct.pf_state_key_cmp*
  %39 = load %struct.pf_src_node**, %struct.pf_src_node*** %25, align 8
  %40 = call i64 @pf_map_addr(i32 %32, %struct.pf_rule* %33, %struct.pf_state_key_cmp* %35, %struct.pf_state_key_cmp* %37, %struct.pf_state_key_cmp* %38, %struct.pf_src_node** %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %12
  store i32 1, i32* %13, align 4
  br label %236

43:                                               ; preds = %12
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @IPPROTO_ICMP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %23, align 4
  store i32 65535, i32* %24, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = call i32 @bzero(%struct.pf_state_key_cmp* %26, i32 32)
  %50 = load i32, i32* %14, align 4
  %51 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 3
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %20, align 4
  %55 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.pf_addr*, %struct.pf_addr** %19, align 8
  %62 = bitcast %struct.pf_addr* %61 to %struct.pf_state_key_cmp*
  %63 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PF_ACPY(i32* %60, %struct.pf_state_key_cmp* %62, i32 %64)
  br label %66

66:                                               ; preds = %227, %48
  %67 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load %struct.pf_addr*, %struct.pf_addr** %21, align 8
  %71 = bitcast %struct.pf_addr* %70 to %struct.pf_state_key_cmp*
  %72 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PF_ACPY(i32* %69, %struct.pf_state_key_cmp* %71, i32 %73)
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @IPPROTO_TCP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %66
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @IPPROTO_UDP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* @IPPROTO_ICMP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82, %78, %66
  %87 = load i32, i32* %23, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32, i32* %24, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %18, align 4
  %94 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @PF_IN, align 4
  %98 = call i32* @pf_find_state_all(%struct.pf_state_key_cmp* %26, i32 %97, i32* null)
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %22, align 8
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %13, align 4
  br label %236

103:                                              ; preds = %92
  br label %204

104:                                              ; preds = %89, %86
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %24, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32, i32* %23, align 4
  %110 = call i8* @htons(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @PF_IN, align 4
  %116 = call i32* @pf_find_state_all(%struct.pf_state_key_cmp* %26, i32 %115, i32* null)
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load i32, i32* %23, align 4
  %120 = call i8* @htons(i32 %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load i32*, i32** %22, align 8
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %13, align 4
  br label %236

123:                                              ; preds = %108
  br label %203

124:                                              ; preds = %104
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %23, align 4
  store i32 %129, i32* %28, align 4
  %130 = load i32, i32* %24, align 4
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %28, align 4
  store i32 %131, i32* %24, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = call i32 (...) @arc4random()
  %134 = load i32, i32* %24, align 4
  %135 = add nsw i32 1, %134
  %136 = load i32, i32* %23, align 4
  %137 = sub nsw i32 %135, %136
  %138 = srem i32 %133, %137
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %29, align 4
  %141 = load i32, i32* %29, align 4
  store i32 %141, i32* %28, align 4
  br label %142

142:                                              ; preds = %167, %132
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %24, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %28, align 4
  %148 = icmp sle i32 %147, 65535
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i1 [ false, %142 ], [ %148, %146 ]
  br i1 %150, label %151, label %170

151:                                              ; preds = %149
  %152 = load i32, i32* %28, align 4
  %153 = call i8* @htons(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @PF_IN, align 4
  %159 = call i32* @pf_find_state_all(%struct.pf_state_key_cmp* %26, i32 %158, i32* null)
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load i32, i32* %28, align 4
  %163 = call i8* @htons(i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %22, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %13, align 4
  br label %236

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %28, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %28, align 4
  br label %142

170:                                              ; preds = %149
  %171 = load i32, i32* %29, align 4
  store i32 %171, i32* %28, align 4
  %172 = load i32, i32* %28, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %28, align 4
  br label %174

174:                                              ; preds = %199, %170
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %28, align 4
  %180 = icmp sle i32 %179, 65535
  br label %181

181:                                              ; preds = %178, %174
  %182 = phi i1 [ false, %174 ], [ %180, %178 ]
  br i1 %182, label %183, label %202

183:                                              ; preds = %181
  %184 = load i32, i32* %28, align 4
  %185 = call i8* @htons(i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %26, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %186, i32* %189, align 4
  %190 = load i32, i32* @PF_IN, align 4
  %191 = call i32* @pf_find_state_all(%struct.pf_state_key_cmp* %26, i32 %190, i32* null)
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load i32, i32* %28, align 4
  %195 = call i8* @htons(i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load i32*, i32** %22, align 8
  store i32 %196, i32* %197, align 4
  store i32 0, i32* %13, align 4
  br label %236

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %28, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %28, align 4
  br label %174

202:                                              ; preds = %181
  br label %203

203:                                              ; preds = %202, %123
  br label %204

204:                                              ; preds = %203, %103
  %205 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %206 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @PF_POOL_TYPEMASK, align 4
  %210 = and i32 %208, %209
  switch i32 %210, label %225 [
    i32 130, label %211
    i32 129, label %211
    i32 131, label %224
    i32 128, label %224
    i32 132, label %224
  ]

211:                                              ; preds = %204, %204
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %214 = load %struct.pf_addr*, %struct.pf_addr** %17, align 8
  %215 = bitcast %struct.pf_addr* %214 to %struct.pf_state_key_cmp*
  %216 = load %struct.pf_addr*, %struct.pf_addr** %21, align 8
  %217 = bitcast %struct.pf_addr* %216 to %struct.pf_state_key_cmp*
  %218 = bitcast %struct.pf_addr* %27 to %struct.pf_state_key_cmp*
  %219 = load %struct.pf_src_node**, %struct.pf_src_node*** %25, align 8
  %220 = call i64 @pf_map_addr(i32 %212, %struct.pf_rule* %213, %struct.pf_state_key_cmp* %215, %struct.pf_state_key_cmp* %217, %struct.pf_state_key_cmp* %218, %struct.pf_src_node** %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  store i32 1, i32* %13, align 4
  br label %236

223:                                              ; preds = %211
  br label %226

224:                                              ; preds = %204, %204, %204
  br label %225

225:                                              ; preds = %204, %224
  store i32 1, i32* %13, align 4
  br label %236

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %226
  %228 = bitcast %struct.pf_addr* %27 to %struct.pf_state_key_cmp*
  %229 = load %struct.pf_addr*, %struct.pf_addr** %21, align 8
  %230 = bitcast %struct.pf_addr* %229 to %struct.pf_state_key_cmp*
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @PF_AEQ(%struct.pf_state_key_cmp* %228, %struct.pf_state_key_cmp* %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  br i1 %234, label %66, label %235

235:                                              ; preds = %227
  store i32 1, i32* %13, align 4
  br label %236

236:                                              ; preds = %235, %225, %222, %193, %161, %118, %100, %42
  %237 = load i32, i32* %13, align 4
  ret i32 %237
}

declare dso_local i32 @bzero(%struct.pf_state_key_cmp*, i32) #1

declare dso_local i64 @pf_map_addr(i32, %struct.pf_rule*, %struct.pf_state_key_cmp*, %struct.pf_state_key_cmp*, %struct.pf_state_key_cmp*, %struct.pf_src_node**) #1

declare dso_local i32 @PF_ACPY(i32*, %struct.pf_state_key_cmp*, i32) #1

declare dso_local i32* @pf_find_state_all(%struct.pf_state_key_cmp*, i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @PF_AEQ(%struct.pf_state_key_cmp*, %struct.pf_state_key_cmp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
