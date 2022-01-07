; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ng_tag_hookin = type { i8*, i32 }
%struct.ng_tag_hookout = type { i8*, i32 }
%struct.ng_tag_hookstat = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.ng_tag_hookstat, %struct.ng_tag_hookstat*, %struct.ng_tag_hookstat* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ng_tag_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tag_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_tag_hookin*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ng_tag_hookout*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ng_tag_hookin*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ng_tag_hookout*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %20 = call i32 @NGI_GET_MSG(i32 %18, %struct.ng_mesg* %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %231 [
    i32 134, label %25
  ]

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %228 [
    i32 129, label %30
    i32 128, label %74
    i32 132, label %118
    i32 131, label %173
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.ng_tag_hookin*
  store %struct.ng_tag_hookin* %34, %struct.ng_tag_hookin** %10, align 8
  %35 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %36 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 16
  br i1 %40, label %51, label %41

41:                                               ; preds = %30
  %42 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %43 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %10, align 8
  %47 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @NG_TAG_HOOKIN_SIZE(i32 %48)
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41, %30
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @ERROUT(i32 %52)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %10, align 8
  %57 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32* @ng_findhook(i32 %55, i8* %58)
  store i32* %59, i32** %11, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOENT, align 4
  %63 = call i32 @ERROUT(i32 %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %10, align 8
  %67 = bitcast %struct.ng_tag_hookin* %66 to %struct.ng_tag_hookstat*
  %68 = call i32 @ng_tag_setdata_in(i32* %65, %struct.ng_tag_hookstat* %67)
  store i32 %68, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ERROUT(i32 %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %230

74:                                               ; preds = %25
  %75 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %76 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.ng_tag_hookout*
  store %struct.ng_tag_hookout* %78, %struct.ng_tag_hookout** %12, align 8
  %79 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %80 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 16
  br i1 %84, label %95, label %85

85:                                               ; preds = %74
  %86 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %87 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %12, align 8
  %91 = getelementptr inbounds %struct.ng_tag_hookout, %struct.ng_tag_hookout* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @NG_TAG_HOOKOUT_SIZE(i32 %92)
  %94 = icmp ne i32 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85, %74
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @ERROUT(i32 %96)
  br label %98

98:                                               ; preds = %95, %85
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %12, align 8
  %101 = getelementptr inbounds %struct.ng_tag_hookout, %struct.ng_tag_hookout* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32* @ng_findhook(i32 %99, i8* %102)
  store i32* %103, i32** %13, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOENT, align 4
  %107 = call i32 @ERROUT(i32 %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i32*, i32** %13, align 8
  %110 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %12, align 8
  %111 = bitcast %struct.ng_tag_hookout* %110 to %struct.ng_tag_hookstat*
  %112 = call i32 @ng_tag_setdata_out(i32* %109, %struct.ng_tag_hookstat* %111)
  store i32 %112, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ERROUT(i32 %115)
  br label %117

117:                                              ; preds = %114, %108
  br label %230

118:                                              ; preds = %25
  %119 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %120 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = call i32 @ERROUT(i32 %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %129 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %132 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %130, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %140 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32* @ng_findhook(i32 %138, i8* %141)
  store i32* %142, i32** %15, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %127
  %145 = load i32, i32* @ENOENT, align 4
  %146 = call i32 @ERROUT(i32 %145)
  br label %147

147:                                              ; preds = %144, %127
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @NG_HOOK_PRIVATE(i32* %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_4__*
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load %struct.ng_tag_hookstat*, %struct.ng_tag_hookstat** %152, align 8
  %154 = bitcast %struct.ng_tag_hookstat* %153 to %struct.ng_tag_hookin*
  store %struct.ng_tag_hookin* %154, %struct.ng_tag_hookin** %14, align 8
  %155 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %156 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %157 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %14, align 8
  %158 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @NG_TAG_HOOKIN_SIZE(i32 %159)
  %161 = load i32, i32* @M_WAITOK, align 4
  %162 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %155, %struct.ng_mesg* %156, i32 %160, i32 %161)
  %163 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %14, align 8
  %164 = bitcast %struct.ng_tag_hookin* %163 to %struct.ng_tag_hookstat*
  %165 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %166 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.ng_tag_hookin*, %struct.ng_tag_hookin** %14, align 8
  %169 = getelementptr inbounds %struct.ng_tag_hookin, %struct.ng_tag_hookin* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @NG_TAG_HOOKIN_SIZE(i32 %170)
  %172 = call i32 @bcopy(%struct.ng_tag_hookstat* %164, i8* %167, i32 %171)
  br label %230

173:                                              ; preds = %25
  %174 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %175 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @EINVAL, align 4
  %181 = call i32 @ERROUT(i32 %180)
  br label %182

182:                                              ; preds = %179, %173
  %183 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %184 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %187 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %185, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i32, i32* %4, align 4
  %194 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %195 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32* @ng_findhook(i32 %193, i8* %196)
  store i32* %197, i32** %17, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %182
  %200 = load i32, i32* @ENOENT, align 4
  %201 = call i32 @ERROUT(i32 %200)
  br label %202

202:                                              ; preds = %199, %182
  %203 = load i32*, i32** %17, align 8
  %204 = call i32 @NG_HOOK_PRIVATE(i32* %203)
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to %struct.TYPE_4__*
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load %struct.ng_tag_hookstat*, %struct.ng_tag_hookstat** %207, align 8
  %209 = bitcast %struct.ng_tag_hookstat* %208 to %struct.ng_tag_hookout*
  store %struct.ng_tag_hookout* %209, %struct.ng_tag_hookout** %16, align 8
  %210 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %211 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %212 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %16, align 8
  %213 = getelementptr inbounds %struct.ng_tag_hookout, %struct.ng_tag_hookout* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @NG_TAG_HOOKOUT_SIZE(i32 %214)
  %216 = load i32, i32* @M_WAITOK, align 4
  %217 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %210, %struct.ng_mesg* %211, i32 %215, i32 %216)
  %218 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %16, align 8
  %219 = bitcast %struct.ng_tag_hookout* %218 to %struct.ng_tag_hookstat*
  %220 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %221 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.ng_tag_hookout*, %struct.ng_tag_hookout** %16, align 8
  %224 = getelementptr inbounds %struct.ng_tag_hookout, %struct.ng_tag_hookout* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @NG_TAG_HOOKOUT_SIZE(i32 %225)
  %227 = call i32 @bcopy(%struct.ng_tag_hookstat* %219, i8* %222, i32 %226)
  br label %230

228:                                              ; preds = %25
  %229 = load i32, i32* @EINVAL, align 4
  store i32 %229, i32* %9, align 4
  br label %230

230:                                              ; preds = %228, %202, %147, %117, %73
  br label %233

231:                                              ; preds = %3
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %231, %230
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %239 = call i32 @NG_RESPOND_MSG(i32 %235, i32 %236, i32 %237, %struct.ng_mesg* %238)
  %240 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %241 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %240)
  %242 = load i32, i32* %9, align 4
  ret i32 %242
}

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_TAG_HOOKIN_SIZE(i32) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32* @ng_findhook(i32, i8*) #1

declare dso_local i32 @ng_tag_setdata_in(i32*, %struct.ng_tag_hookstat*) #1

declare dso_local i32 @NG_TAG_HOOKOUT_SIZE(i32) #1

declare dso_local i32 @ng_tag_setdata_out(i32*, %struct.ng_tag_hookstat*) #1

declare dso_local i32 @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_tag_hookstat*, i8*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
