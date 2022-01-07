; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_build_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_build_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idm = type { i32, i8**, i32 }
%struct.idm_req = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.aldap_message = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@UID_MAX = common dso_local global i32 0, align 4
@ATTR_GR_GID = common dso_local global i32 0, align 4
@GID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_build_req(%struct.idm* %0, %struct.idm_req* %1, %struct.aldap_message* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.idm*, align 8
  %8 = alloca %struct.idm_req*, align 8
  %9 = alloca %struct.aldap_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.idm* %0, %struct.idm** %7, align 8
  store %struct.idm_req* %1, %struct.idm_req** %8, align 8
  store %struct.aldap_message* %2, %struct.aldap_message** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %16 = call i32 @memset(%struct.idm_req* %15, i32 0, i32 24)
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %224, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %227

22:                                               ; preds = %18
  %23 = load %struct.idm*, %struct.idm** %7, align 8
  %24 = getelementptr inbounds %struct.idm, %struct.idm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @F_FIXED_ATTR(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %22
  %31 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %32 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.idm*, %struct.idm** %7, align 8
  %35 = getelementptr inbounds %struct.idm, %struct.idm* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlcat(i32 %33, i8* %40, i32 4)
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %228

45:                                               ; preds = %30
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ATTR_UID, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.idm*, %struct.idm** %7, align 8
  %51 = getelementptr inbounds %struct.idm, %struct.idm* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @UID_MAX, align 4
  %58 = call i8* @strtonum(i8* %56, i32 0, i32 %57, i32* null)
  %59 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %60 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  br label %80

62:                                               ; preds = %45
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @ATTR_GR_GID, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.idm*, %struct.idm** %7, align 8
  %68 = getelementptr inbounds %struct.idm, %struct.idm* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @GID_MAX, align 4
  %75 = call i8* @strtonum(i8* %73, i32 0, i32 %74, i32* null)
  %76 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %77 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  br label %79

79:                                               ; preds = %66, %62
  br label %80

80:                                               ; preds = %79, %49
  br label %209

81:                                               ; preds = %22
  %82 = load %struct.idm*, %struct.idm** %7, align 8
  %83 = getelementptr inbounds %struct.idm, %struct.idm* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @F_LIST(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %81
  %90 = load %struct.aldap_message*, %struct.aldap_message** %9, align 8
  %91 = load %struct.idm*, %struct.idm** %7, align 8
  %92 = getelementptr inbounds %struct.idm, %struct.idm* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @aldap_match_attr(%struct.aldap_message* %90, i8* %97, i8*** %12)
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %147, %89
  %100 = load i32, i32* %14, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i8**, i8*** %12, align 8
  %104 = icmp ne i8** %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i8**, i8*** %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br label %112

112:                                              ; preds = %105, %102, %99
  %113 = phi i1 [ false, %102 ], [ false, %99 ], [ %111, %105 ]
  br i1 %113, label %114, label %150

114:                                              ; preds = %112
  %115 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %116 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8**, i8*** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlcat(i32 %117, i8* %122, i32 4)
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %147

127:                                              ; preds = %114
  %128 = load i8**, i8*** %12, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %127
  %136 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %137 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @strlcat(i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4)
  %140 = sext i32 %139 to i64
  %141 = icmp uge i64 %140, 4
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i8**, i8*** %12, align 8
  %144 = call i32 @aldap_free_attr(i8** %143)
  store i32 -1, i32* %6, align 4
  br label %228

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %127
  br label %147

147:                                              ; preds = %146, %126
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %99

150:                                              ; preds = %112
  %151 = load i8**, i8*** %12, align 8
  %152 = call i32 @aldap_free_attr(i8** %151)
  br label %208

153:                                              ; preds = %81
  %154 = load %struct.aldap_message*, %struct.aldap_message** %9, align 8
  %155 = load %struct.idm*, %struct.idm** %7, align 8
  %156 = getelementptr inbounds %struct.idm, %struct.idm* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @aldap_match_attr(%struct.aldap_message* %154, i8* %161, i8*** %12)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  store i32 -1, i32* %6, align 4
  br label %228

165:                                              ; preds = %153
  %166 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %167 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i8**, i8*** %12, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlcat(i32 %168, i8* %171, i32 4)
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %173, 4
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load i8**, i8*** %12, align 8
  %177 = call i32 @aldap_free_attr(i8** %176)
  store i32 -1, i32* %6, align 4
  br label %228

178:                                              ; preds = %165
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @ATTR_UID, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i8**, i8*** %12, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* @UID_MAX, align 4
  %187 = call i8* @strtonum(i8* %185, i32 0, i32 %186, i32* null)
  %188 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %189 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %205

191:                                              ; preds = %178
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @ATTR_GR_GID, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load i8**, i8*** %12, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @GID_MAX, align 4
  %200 = call i8* @strtonum(i8* %198, i32 0, i32 %199, i32* null)
  %201 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %202 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  store i8* %200, i8** %203, align 8
  br label %204

204:                                              ; preds = %195, %191
  br label %205

205:                                              ; preds = %204, %182
  %206 = load i8**, i8*** %12, align 8
  %207 = call i32 @aldap_free_attr(i8** %206)
  br label %208

208:                                              ; preds = %205, %150
  br label %209

209:                                              ; preds = %208, %80
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load %struct.idm_req*, %struct.idm_req** %8, align 8
  %216 = getelementptr inbounds %struct.idm_req, %struct.idm_req* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @strlcat(i32 %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %219 = sext i32 %218 to i64
  %220 = icmp uge i64 %219, 4
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  store i32 -1, i32* %6, align 4
  br label %228

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %209
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %18

227:                                              ; preds = %18
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %227, %221, %175, %164, %142, %44
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i32 @memset(%struct.idm_req*, i32, i32) #1

declare dso_local i32 @F_FIXED_ATTR(i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i8* @strtonum(i8*, i32, i32, i32*) #1

declare dso_local i32 @F_LIST(i32) #1

declare dso_local i32 @aldap_match_attr(%struct.aldap_message*, i8*, i8***) #1

declare dso_local i32 @aldap_free_attr(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
