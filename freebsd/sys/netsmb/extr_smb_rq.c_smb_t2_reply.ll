; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_t2rq = type { i32, i32, i32, %struct.smb_rq* }
%struct.smb_rq = type { %struct.mdchain }
%struct.mdchain = type { i32 }

@SMBT2_ALLSENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't handle disordered parameters %d:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't handle disordered data\0A\00", align 1
@SMBT2_ALLRECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_t2rq*)* @smb_t2_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_t2_reply(%struct.smb_t2rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_t2rq*, align 8
  %4 = alloca %struct.mdchain*, align 8
  %5 = alloca %struct.smb_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.smb_t2rq* %0, %struct.smb_t2rq** %3, align 8
  %20 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %21 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %20, i32 0, i32 3
  %22 = load %struct.smb_rq*, %struct.smb_rq** %21, align 8
  store %struct.smb_rq* %22, %struct.smb_rq** %5, align 8
  %23 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %24 = call i32 @smb_rq_reply(%struct.smb_rq* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %227

29:                                               ; preds = %1
  %30 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %31 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SMBT2_ALLSENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %38 = call i32 @SMBRQ_SLOCK(%struct.smb_rq* %37)
  %39 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %40 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %39, i32 0, i32 0
  %41 = call i32 @md_next_record(%struct.mdchain* %40)
  %42 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %43 = call i32 @SMBRQ_SUNLOCK(%struct.smb_rq* %42)
  store i32 0, i32* %2, align 4
  br label %227

44:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i64 65535, i64* %10, align 8
  store i64 65535, i64* %9, align 8
  %45 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %46 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %45, i32 0, i32 0
  store %struct.mdchain* %46, %struct.mdchain** %4, align 8
  br label %47

47:                                               ; preds = %224, %44
  %48 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %49 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @m_dumpm(i32 %50)
  %52 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %53 = call i32 @md_get_uint8(%struct.mdchain* %52, i32* %19)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %225

56:                                               ; preds = %47
  %57 = load i32, i32* %19, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %6, align 4
  br label %225

61:                                               ; preds = %56
  %62 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %63 = call i32 @md_get_uint16le(%struct.mdchain* %62, i64* %16)
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %225

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %16, align 8
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %74 = call i32 @md_get_uint16le(%struct.mdchain* %73, i64* %16)
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %16, align 8
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %78, %72
  %81 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %82 = call i32 @md_get_uint16le(%struct.mdchain* %81, i64* %16)
  store i32 %82, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %86 = call i32 @md_get_uint16le(%struct.mdchain* %85, i64* %11)
  store i32 %86, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %90 = call i32 @md_get_uint16le(%struct.mdchain* %89, i64* %12)
  store i32 %90, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %94 = call i32 @md_get_uint16le(%struct.mdchain* %93, i64* %14)
  store i32 %94, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88, %84, %80
  br label %225

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i64, i64* %14, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i64, i64* %14, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %6, align 4
  br label %225

110:                                              ; preds = %100, %97
  %111 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %112 = call i32 @md_get_uint16le(%struct.mdchain* %111, i64* %18)
  store i32 %112, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %116 = call i32 @md_get_uint16le(%struct.mdchain* %115, i64* %13)
  store i32 %116, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %120 = call i32 @md_get_uint16le(%struct.mdchain* %119, i64* %15)
  store i32 %120, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %114, %110
  br label %225

123:                                              ; preds = %118
  %124 = load i64, i64* %18, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  store i32 %133, i32* %6, align 4
  br label %225

134:                                              ; preds = %126, %123
  %135 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %136 = call i32 @md_get_uint8(%struct.mdchain* %135, i32* %19)
  %137 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %138 = call i32 @md_get_uint8(%struct.mdchain* %137, i32* null)
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %16, align 8
  br label %141

141:                                              ; preds = %145, %134
  %142 = load i64, i64* %16, align 8
  %143 = add nsw i64 %142, -1
  store i64 %143, i64* %16, align 8
  %144 = icmp ne i64 %142, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %147 = call i32 @md_get_uint16(%struct.mdchain* %146, i32* null)
  br label %141

148:                                              ; preds = %141
  %149 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %150 = call i32 @md_get_uint16le(%struct.mdchain* %149, i64* %17)
  store i32 %150, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %225

153:                                              ; preds = %148
  %154 = load i64, i64* %18, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %158 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %18, align 8
  %162 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %163 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %162, i32 0, i32 2
  %164 = call i32 @smb_t2_placedata(i32 %159, i64 %160, i64 %161, i32* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %225

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %153
  %170 = load i64, i64* %11, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load %struct.mdchain*, %struct.mdchain** %4, align 8
  %174 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %179 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %178, i32 0, i32 1
  %180 = call i32 @smb_t2_placedata(i32 %175, i64 %176, i64 %177, i32* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %225

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %169
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %7, align 4
  %191 = load i64, i64* %18, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %9, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %185
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* %10, align 8
  %204 = icmp sge i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  store i32 0, i32* %6, align 4
  %206 = load i32, i32* @SMBT2_ALLRECV, align 4
  %207 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %208 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %225

211:                                              ; preds = %200, %185
  %212 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %213 = call i32 @SMBRQ_SLOCK(%struct.smb_rq* %212)
  %214 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %215 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %214, i32 0, i32 0
  %216 = call i32 @md_next_record(%struct.mdchain* %215)
  %217 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %218 = call i32 @SMBRQ_SUNLOCK(%struct.smb_rq* %217)
  %219 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %220 = call i32 @smb_rq_reply(%struct.smb_rq* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  br label %225

224:                                              ; preds = %211
  br label %47

225:                                              ; preds = %223, %205, %183, %167, %152, %131, %122, %105, %96, %65, %59, %55
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %36, %27
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @smb_rq_reply(%struct.smb_rq*) #1

declare dso_local i32 @SMBRQ_SLOCK(%struct.smb_rq*) #1

declare dso_local i32 @md_next_record(%struct.mdchain*) #1

declare dso_local i32 @SMBRQ_SUNLOCK(%struct.smb_rq*) #1

declare dso_local i32 @m_dumpm(i32) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i64*) #1

declare dso_local i32 @SMBERROR(i8*, ...) #1

declare dso_local i32 @md_get_uint16(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_t2_placedata(i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
