; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ng_sscfu_getdefparam = type { i32, i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_sscfu_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscfu_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_sscfu_getdefparam*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.priv* @NG_NODE_PRIVATE(i32 %12)
  store %struct.priv* %13, %struct.priv** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %16 = call i32 @NGI_GET_MSG(i32 %14, %struct.ng_mesg* %15)
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %210 [
    i32 136, label %21
    i32 135, label %55
  ]

21:                                               ; preds = %3
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %23 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %52 [
    i32 128, label %26
  ]

26:                                               ; preds = %21
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %29 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %27, %struct.ng_mesg* %28, i32 %29, i32 %30)
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %33 = icmp eq %struct.ng_mesg* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %10, align 4
  br label %54

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.priv*, %struct.priv** %7, align 8
  %39 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %40 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %44 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @text_status(i32 %37, %struct.priv* %38, i8* %42, i32 %46)
  %48 = add nsw i32 %47, 1
  %49 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %50 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %54

52:                                               ; preds = %21
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %36, %34
  br label %212

55:                                               ; preds = %3
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %57 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %207 [
    i32 131, label %60
    i32 133, label %87
    i32 134, label %105
    i32 130, label %127
    i32 132, label %162
    i32 129, label %188
  ]

60:                                               ; preds = %55
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %62 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %10, align 4
  br label %209

68:                                               ; preds = %60
  %69 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %70 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %69, %struct.ng_mesg* %70, i32 8, i32 %71)
  %73 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %74 = icmp eq %struct.ng_mesg* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %10, align 4
  br label %209

77:                                               ; preds = %68
  %78 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %79 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ng_sscfu_getdefparam*
  store %struct.ng_sscfu_getdefparam* %81, %struct.ng_sscfu_getdefparam** %11, align 8
  %82 = load %struct.ng_sscfu_getdefparam*, %struct.ng_sscfu_getdefparam** %11, align 8
  %83 = getelementptr inbounds %struct.ng_sscfu_getdefparam, %struct.ng_sscfu_getdefparam* %82, i32 0, i32 0
  %84 = call i32 @sscfu_getdefparam(i32* %83)
  %85 = load %struct.ng_sscfu_getdefparam*, %struct.ng_sscfu_getdefparam** %11, align 8
  %86 = getelementptr inbounds %struct.ng_sscfu_getdefparam, %struct.ng_sscfu_getdefparam* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %209

87:                                               ; preds = %55
  %88 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %89 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %10, align 4
  br label %209

95:                                               ; preds = %87
  %96 = load %struct.priv*, %struct.priv** %7, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @EISCONN, align 4
  store i32 %101, i32* %10, align 4
  br label %209

102:                                              ; preds = %95
  %103 = load %struct.priv*, %struct.priv** %7, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %209

105:                                              ; preds = %55
  %106 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %107 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %10, align 4
  br label %209

113:                                              ; preds = %105
  %114 = load %struct.priv*, %struct.priv** %7, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOTCONN, align 4
  store i32 %119, i32* %10, align 4
  br label %209

120:                                              ; preds = %113
  %121 = load %struct.priv*, %struct.priv** %7, align 8
  %122 = getelementptr inbounds %struct.priv, %struct.priv* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load %struct.priv*, %struct.priv** %7, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sscfu_reset(i32 %125)
  br label %209

127:                                              ; preds = %55
  %128 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %129 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %10, align 4
  br label %209

135:                                              ; preds = %127
  %136 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %137 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %138 = load i32, i32* @M_NOWAIT, align 4
  %139 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %136, %struct.ng_mesg* %137, i32 4, i32 %138)
  %140 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %141 = icmp eq %struct.ng_mesg* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %10, align 4
  br label %209

144:                                              ; preds = %135
  %145 = load %struct.priv*, %struct.priv** %7, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.priv*, %struct.priv** %7, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sscfu_getstate(i32 %152)
  %154 = add nsw i32 %153, 1
  br label %156

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %149
  %157 = phi i32 [ %154, %149 ], [ 0, %155 ]
  %158 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %159 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i32*
  store i32 %157, i32* %161, align 4
  br label %209

162:                                              ; preds = %55
  %163 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %164 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %10, align 4
  br label %209

170:                                              ; preds = %162
  %171 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %172 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %173 = load i32, i32* @M_NOWAIT, align 4
  %174 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %171, %struct.ng_mesg* %172, i32 4, i32 %173)
  %175 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %176 = icmp eq %struct.ng_mesg* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* @ENOMEM, align 4
  store i32 %178, i32* %10, align 4
  br label %209

179:                                              ; preds = %170
  %180 = load %struct.priv*, %struct.priv** %7, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @sscfu_getdebug(i32 %182)
  %184 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %185 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32*
  store i32 %183, i32* %187, align 4
  br label %209

188:                                              ; preds = %55
  %189 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %190 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %193, 4
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @EINVAL, align 4
  store i32 %196, i32* %10, align 4
  br label %209

197:                                              ; preds = %188
  %198 = load %struct.priv*, %struct.priv** %7, align 8
  %199 = getelementptr inbounds %struct.priv, %struct.priv* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %202 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @sscfu_setdebug(i32 %200, i32 %205)
  br label %209

207:                                              ; preds = %55
  %208 = load i32, i32* @EINVAL, align 4
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %207, %197, %195, %179, %177, %168, %156, %142, %133, %120, %118, %111, %102, %100, %93, %77, %75, %66
  br label %212

210:                                              ; preds = %3
  %211 = load i32, i32* @EINVAL, align 4
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %210, %209, %54
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %217 = call i32 @NG_RESPOND_MSG(i32 %213, i32 %214, i32 %215, %struct.ng_mesg* %216)
  %218 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %219 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %218)
  %220 = load i32, i32* %10, align 4
  ret i32 %220
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @text_status(i32, %struct.priv*, i8*, i32) #1

declare dso_local i32 @sscfu_getdefparam(i32*) #1

declare dso_local i32 @sscfu_reset(i32) #1

declare dso_local i32 @sscfu_getstate(i32) #1

declare dso_local i32 @sscfu_getdebug(i32) #1

declare dso_local i32 @sscfu_setdebug(i32, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
