; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_ng_netflow.c_ng_netflow_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_ng_netflow.c_ng_netflow_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

@NG_NETFLOW_HOOK_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_NETFLOW_MAXIFACES = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@NG_NETFLOW_HOOK_OUT = common dso_local global i32 0, align 4
@NG_NETFLOW_HOOK_EXPORT = common dso_local global i32 0, align 4
@CNTR_MAX = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@ng_netflow_expire = common dso_local global i32 0, align 4
@NG_NETFLOW_HOOK_EXPORT9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_netflow_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_netflow_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @NG_NETFLOW_HOOK_DATA, align 4
  %21 = load i32, i32* @NG_NETFLOW_HOOK_DATA, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = call i64 @strncmp(i8* %19, i32 %20, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @NG_NETFLOW_HOOK_DATA, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isdigit(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %25
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %230

49:                                               ; preds = %41, %35
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @strtoul(i8* %50, i8** %12, i32 10)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @NG_NETFLOW_MAXIFACES, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %57, %49
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %230

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @EISCONN, align 4
  store i32 %77, i32* %4, align 4
  br label %230

78:                                               ; preds = %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %9, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = call i32 @NG_HOOK_SET_PRIVATE(i8* %85, %struct.TYPE_8__* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @DLT_EN10MB, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %229

96:                                               ; preds = %3
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @NG_NETFLOW_HOOK_OUT, align 4
  %99 = load i32, i32* @NG_NETFLOW_HOOK_OUT, align 4
  %100 = call i32 @strlen(i32 %99)
  %101 = call i64 @strncmp(i8* %97, i32 %98, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %170

103:                                              ; preds = %96
  store i32 -1, i32* %14, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* @NG_NETFLOW_HOOK_OUT, align 4
  %106 = call i32 @strlen(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8* %108, i8** %15, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @isdigit(i8 signext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %103
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load i8*, i8** %15, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119, %103
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %4, align 4
  br label %230

127:                                              ; preds = %119, %113
  %128 = load i8*, i8** %15, align 8
  %129 = call i64 @strtoul(i8* %128, i8** %16, i32 10)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = load i8*, i8** %16, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @NG_NETFLOW_MAXIFACES, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138, %135, %127
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %4, align 4
  br label %230

144:                                              ; preds = %138
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @EISCONN, align 4
  store i32 %155, i32* %4, align 4
  br label %230

156:                                              ; preds = %144
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %13, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %165 = call i32 @NG_HOOK_SET_PRIVATE(i8* %163, %struct.TYPE_8__* %164)
  %166 = load i8*, i8** %6, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  br label %228

170:                                              ; preds = %96
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* @NG_NETFLOW_HOOK_EXPORT, align 4
  %173 = call i64 @strcmp(i8* %171, i32 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* @EISCONN, align 4
  store i32 %181, i32* %4, align 4
  br label %230

182:                                              ; preds = %175
  %183 = load i64, i64* @CNTR_MAX, align 8
  %184 = load i64, i64* @UINT64_MAX, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @EINVAL, align 4
  store i32 %187, i32* %4, align 4
  br label %230

188:                                              ; preds = %182
  %189 = load i8*, i8** %6, align 8
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* @hz, align 4
  %196 = mul nsw i32 1, %195
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = bitcast %struct.TYPE_7__* %197 to i8*
  %199 = call i32 @callout_reset(i32* %194, i32 %196, i32* @ng_netflow_expire, i8* %198)
  br label %227

200:                                              ; preds = %170
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* @NG_NETFLOW_HOOK_EXPORT9, align 4
  %203 = call i64 @strcmp(i8* %201, i32 %202)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %224

205:                                              ; preds = %200
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @EISCONN, align 4
  store i32 %211, i32* %4, align 4
  br label %230

212:                                              ; preds = %205
  %213 = load i8*, i8** %6, align 8
  %214 = bitcast i8* %213 to i32*
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  store i32* %214, i32** %216, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* @hz, align 4
  %220 = mul nsw i32 1, %219
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %222 = bitcast %struct.TYPE_7__* %221 to i8*
  %223 = call i32 @callout_reset(i32* %218, i32 %220, i32* @ng_netflow_expire, i8* %222)
  br label %226

224:                                              ; preds = %200
  %225 = load i32, i32* @EINVAL, align 4
  store i32 %225, i32* %4, align 4
  br label %230

226:                                              ; preds = %212
  br label %227

227:                                              ; preds = %226, %188
  br label %228

228:                                              ; preds = %227, %156
  br label %229

229:                                              ; preds = %228, %78
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %229, %224, %210, %186, %180, %154, %142, %125, %76, %64, %47
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
