; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_rss_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_rss_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FEATURE_RSS = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6_EX = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV6_EX = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSSEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_EX = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_EX_TCP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV6_EX = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_EX_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_initialize_rss_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_initialize_rss_mapping(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 3
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = bitcast [10 x i32]* %6 to i32*
  %23 = call i32 @rss_getkey(i32* %22)
  br label %27

24:                                               ; preds = %1
  %25 = bitcast [10 x i32]* %6 to i32**
  %26 = call i32 @arc4rand(i32** %25, i32 40, i32 0)
  br label %27

27:                                               ; preds = %24, %21
  store i32 1, i32* %9, align 4
  store i32 128, i32* %8, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %35 [
    i32 131, label %33
    i32 130, label %34
    i32 128, label %34
    i32 129, label %34
  ]

33:                                               ; preds = %27
  store i32 17, i32* %9, align 4
  br label %36

34:                                               ; preds = %27, %27, %27
  store i32 512, i32* %8, align 4
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %34, %33
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %97, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @rss_get_indirection_to_bucket(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = srem i32 %58, %61
  store i32 %62, i32* %7, align 4
  br label %67

63:                                               ; preds = %48
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %71, 24
  %73 = or i32 %70, %72
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %96

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 128
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 2
  %84 = call i32 @IXGBE_RETA(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %84, i32 %85)
  br label %95

87:                                               ; preds = %77
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 2
  %91 = sub nsw i32 %90, 32
  %92 = call i32 @IXGBE_ERETA(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %88, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %80
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %67
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %37

102:                                              ; preds = %37
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %115, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @IXGBE_RSSRK(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %107, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %103

118:                                              ; preds = %103
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 (...) @rss_gethashconfig()
  store i32 %126, i32* %12, align 4
  br label %139

127:                                              ; preds = %118
  %128 = load i32, i32* @RSS_HASHTYPE_RSS_IPV4, align 4
  %129 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV4, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @RSS_HASHTYPE_RSS_IPV6, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV6, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @RSS_HASHTYPE_RSS_IPV6_EX, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV6_EX, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %127, %125
  %140 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @RSS_HASHTYPE_RSS_IPV4, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV4, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @RSS_HASHTYPE_RSS_IPV6, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV6, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %172, %167
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @RSS_HASHTYPE_RSS_IPV6_EX, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_EX, align 4
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @RSS_HASHTYPE_RSS_TCP_IPV6_EX, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_EX_TCP, align 4
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @RSS_HASHTYPE_RSS_UDP_IPV4, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @RSS_HASHTYPE_RSS_UDP_IPV6, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @RSS_HASHTYPE_RSS_UDP_IPV6_EX, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_EX_UDP, align 4
  %219 = load i32, i32* %5, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = load %struct.adapter*, %struct.adapter** %2, align 8
  %223 = getelementptr inbounds %struct.adapter, %struct.adapter* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ixgbe_get_mrqc(i32 %224)
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %229 = load i32, i32* @IXGBE_MRQC, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %228, i32 %229, i32 %230)
  ret void
}

declare dso_local i32 @rss_getkey(i32*) #1

declare dso_local i32 @arc4rand(i32**, i32, i32) #1

declare dso_local i32 @rss_get_indirection_to_bucket(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RETA(i32) #1

declare dso_local i32 @IXGBE_ERETA(i32) #1

declare dso_local i32 @IXGBE_RSSRK(i32) #1

declare dso_local i32 @rss_gethashconfig(...) #1

declare dso_local i32 @ixgbe_get_mrqc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
