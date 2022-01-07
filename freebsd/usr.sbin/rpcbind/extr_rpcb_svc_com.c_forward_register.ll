; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_forward_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_forward_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i32, i8*, i64, i32* }
%struct.netbuf = type { i32 }

@forward_register.lastxid = internal global i64 0, align 8
@FINFO = common dso_local global %struct.TYPE_2__* null, align 8
@NFORWARD = common dso_local global i32 0, align 4
@FINFO_ACTIVE = common dso_local global i32 0, align 4
@MAXTIME_OFF = common dso_local global i32 0, align 4
@rpcb_rmtcalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.netbuf*, i32, i8*, i64, i64, i64*)* @forward_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_register(i64 %0, %struct.netbuf* %1, i32 %2, i8* %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.netbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store %struct.netbuf* %1, %struct.netbuf** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = call i8* @time(i32* null)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %19, align 4
  %27 = load i64, i64* @forward_register.lastxid, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* @NFORWARD, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* @forward_register.lastxid, align 8
  br label %34

34:                                               ; preds = %29, %7
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %145, %34
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @NFORWARD, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %148

39:                                               ; preds = %35
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FINFO_ACTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %39
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %49
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %58
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %84 = call i32 @netbufcmp(i32* %82, %struct.netbuf* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %76
  %87 = call i8* @time(i32* null)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 8
  store i32 0, i32* %8, align 4
  br label %242

94:                                               ; preds = %76, %67, %58, %49
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %95, %101
  %103 = load i32, i32* @MAXTIME_OFF, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @free_slot_by_index(i32 %106)
  br label %108

108:                                              ; preds = %105, %94
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %39
  %111 = load i32, i32* %20, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @FINFO_ACTIVE, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %20, align 4
  br label %143

125:                                              ; preds = %113
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %17, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %134, %125
  br label %143

143:                                              ; preds = %142, %123
  br label %144

144:                                              ; preds = %143, %110
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %35

148:                                              ; preds = %35
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %17, align 4
  br label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @free_slot_by_index(i32 %154)
  br label %156

156:                                              ; preds = %153, %151
  %157 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %158 = call i32* @netbufdup(%struct.netbuf* %157)
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 8
  store i32* %158, i32** %163, align 8
  %164 = icmp eq i32* %158, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i32 -1, i32* %8, align 4
  br label %242

166:                                              ; preds = %156
  %167 = load i32, i32* @rpcb_rmtcalls, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @rpcb_rmtcalls, align 4
  %169 = load i32, i32* @FINFO_ACTIVE, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 4
  %175 = load i64, i64* %13, align 8
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  store i64 %175, i64* %180, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  store i64 %181, i64* %186, align 8
  %187 = load i32, i32* %19, align 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  store i32 %187, i32* %192, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  store i64 %193, i64* %198, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 5
  store i32 %199, i32* %204, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 6
  store i8* %205, i8** %210, align 8
  %211 = load i64, i64* @forward_register.lastxid, align 8
  %212 = load i32, i32* @NFORWARD, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  store i64 %214, i64* @forward_register.lastxid, align 8
  %215 = load i64, i64* @forward_register.lastxid, align 8
  %216 = load i32, i32* @NFORWARD, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  %219 = load i32, i32* @NFORWARD, align 4
  %220 = sext i32 %219 to i64
  %221 = icmp sle i64 %218, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %166
  %223 = load i32, i32* @NFORWARD, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* @forward_register.lastxid, align 8
  br label %225

225:                                              ; preds = %222, %166
  %226 = load i64, i64* @forward_register.lastxid, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %226, %228
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 7
  store i64 %229, i64* %234, align 8
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FINFO, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = load i64*, i64** %15, align 8
  store i64 %240, i64* %241, align 8
  store i32 1, i32* %8, align 4
  br label %242

242:                                              ; preds = %225, %165, %86
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @netbufcmp(i32*, %struct.netbuf*) #1

declare dso_local i32 @free_slot_by_index(i32) #1

declare dso_local i32* @netbufdup(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
