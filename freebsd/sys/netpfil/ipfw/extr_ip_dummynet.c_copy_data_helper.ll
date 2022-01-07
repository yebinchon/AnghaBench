; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_data_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_data_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dn_schk = type { %struct.TYPE_8__, %struct.dn_fsk*, i32, %struct.TYPE_8__ }
%struct.dn_fsk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DN_LINK = common dso_local global i64 0, align 8
@DN_SCH = common dso_local global i64 0, align 8
@DN_MAX_ID = common dso_local global i32 0, align 4
@DN_C_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@DNHT_SCAN_END = common dso_local global i32 0, align 4
@DN_C_SCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@DN_C_FLOW = common dso_local global i32 0, align 4
@DN_FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @copy_data_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_data_helper(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.copy_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_schk*, align 8
  %11 = alloca %struct.dn_fsk*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.copy_args*
  store %struct.copy_args* %13, %struct.copy_args** %6, align 8
  %14 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %15 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %20 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = bitcast %struct.TYPE_6__* %21 to i8*
  %23 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %24 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %22, i64 %29
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %33 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DN_LINK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %39 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DN_SCH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %174

43:                                               ; preds = %37, %2
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to %struct.dn_schk*
  store %struct.dn_schk* %45, %struct.dn_schk** %10, align 8
  %46 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %47 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  %50 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %51 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DN_SCH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DN_MAX_ID, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %226

60:                                               ; preds = %55, %43
  %61 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %62 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DN_LINK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @DN_MAX_ID, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %226

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %170, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ult i32* %73, %74
  br i1 %75, label %76, label %173

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %76
  br label %170

89:                                               ; preds = %82
  %90 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %91 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DN_C_LINK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %89
  %97 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %98 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %101 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %104 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %103, i32 0, i32 3
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @copy_obj(i32 %99, i32 %102, %struct.TYPE_8__* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %109, i32* %3, align 4
  br label %226

110:                                              ; preds = %96
  %111 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %112 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %113 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @copy_profile(%struct.copy_args* %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %118, i32* %3, align 4
  br label %226

119:                                              ; preds = %110
  %120 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %121 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %122 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %121, i32 0, i32 1
  %123 = load %struct.dn_fsk*, %struct.dn_fsk** %122, align 8
  %124 = call i64 @copy_flowset(%struct.copy_args* %120, %struct.dn_fsk* %123, i32 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %127, i32* %3, align 4
  br label %226

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %89
  %130 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %131 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DN_C_SCH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %129
  %137 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %138 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %141 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %144 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %143, i32 0, i32 0
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @copy_obj(i32 %139, i32 %142, %struct.TYPE_8__* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %149, i32* %3, align 4
  br label %226

150:                                              ; preds = %136
  %151 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %152 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %153 = call i64 @copy_fsk_list(%struct.copy_args* %151, %struct.dn_schk* %152, i32 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %156, i32* %3, align 4
  br label %226

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %129
  %159 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %160 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DN_C_FLOW, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %167 = load %struct.dn_schk*, %struct.dn_schk** %10, align 8
  %168 = call i32 @copy_si(%struct.copy_args* %166, %struct.dn_schk* %167, i32 0)
  br label %169

169:                                              ; preds = %165, %158
  br label %173

170:                                              ; preds = %88
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32* %172, i32** %7, align 8
  br label %72

173:                                              ; preds = %169, %72
  br label %225

174:                                              ; preds = %37
  %175 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %176 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DN_FS, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %174
  %181 = load i8*, i8** %4, align 8
  %182 = bitcast i8* %181 to %struct.dn_fsk*
  store %struct.dn_fsk* %182, %struct.dn_fsk** %11, align 8
  %183 = load %struct.dn_fsk*, %struct.dn_fsk** %11, align 8
  %184 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @DN_MAX_ID, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %226

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %220, %191
  %193 = load i32*, i32** %7, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = icmp ult i32* %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %9, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202, %196
  br label %220

209:                                              ; preds = %202
  %210 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %211 = load %struct.dn_fsk*, %struct.dn_fsk** %11, align 8
  %212 = call i64 @copy_flowset(%struct.copy_args* %210, %struct.dn_fsk* %211, i32 0)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %215, i32* %3, align 4
  br label %226

216:                                              ; preds = %209
  %217 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %218 = load %struct.dn_fsk*, %struct.dn_fsk** %11, align 8
  %219 = call i32 @copy_q(%struct.copy_args* %217, %struct.dn_fsk* %218, i32 0)
  br label %223

220:                                              ; preds = %208
  %221 = load i32*, i32** %7, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32* %222, i32** %7, align 8
  br label %192

223:                                              ; preds = %216, %192
  br label %224

224:                                              ; preds = %223, %174
  br label %225

225:                                              ; preds = %224, %173
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %214, %190, %155, %148, %126, %117, %108, %70, %59
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i64 @copy_obj(i32, i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @copy_profile(%struct.copy_args*, i32) #1

declare dso_local i64 @copy_flowset(%struct.copy_args*, %struct.dn_fsk*, i32) #1

declare dso_local i64 @copy_fsk_list(%struct.copy_args*, %struct.dn_schk*, i32) #1

declare dso_local i32 @copy_si(%struct.copy_args*, %struct.dn_schk*, i32) #1

declare dso_local i32 @copy_q(%struct.copy_args*, %struct.dn_fsk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
