; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_RedirectPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_RedirectPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.in_addr = type { i8* }
%struct.alias_link = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Alias not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IPPROTO_TCP = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@IPPROTO_UDP = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"port redirect: protocol must be tcp or udp\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"nat port: error reading localaddr:port\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"nat port: error reading alias port\0A\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"nat port: error reading remoteaddr:port\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"nat port: local & alias port ranges are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"nat port: local & remote port ranges are not equal\0A\00", align 1
@la = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"nat port: %d: error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat_RedirectPort(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.in_addr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in_addr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.alias_link*, align 8
  %16 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %223

28:                                               ; preds = %1
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 3
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %39 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %221

46:                                               ; preds = %37, %28
  %47 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %48 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i8, i8* @IPPROTO_TCP, align 1
  store i8 %60, i8* %4, align 1
  br label %73

61:                                               ; preds = %46
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8, i8* @IPPROTO_UDP, align 1
  store i8 %66, i8* %4, align 1
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %69 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %75 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %78 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %76, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @StrToAddrAndPort(i8* %83, %struct.in_addr* %6, i64* %8, i64* %7, i8* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %90 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

93:                                               ; preds = %73
  %94 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %95 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %98 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %96, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @StrToPortRange(i8* %103, i64* %11, i64* %10, i8* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %93
  %109 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %110 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

113:                                              ; preds = %93
  %114 = load i8*, i8** @INADDR_ANY, align 8
  %115 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %117 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %120 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 4
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %113
  %125 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %126 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %129 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %127, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @StrToAddrAndPort(i8* %134, %struct.in_addr* %12, i64* %14, i64* %13, i8* %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %141 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

144:                                              ; preds = %124
  br label %148

145:                                              ; preds = %113
  %146 = load i8*, i8** @INADDR_ANY, align 8
  %147 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i8* %146, i8** %147, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %148

148:                                              ; preds = %145, %144
  %149 = call i32 @lowhigh(i64* %8, i64* %7)
  %150 = call i32 @lowhigh(i64* %11, i64* %10)
  %151 = call i32 @lowhigh(i64* %14, i64* %13)
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = sub nsw i64 %155, %156
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %148
  %160 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %161 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %162, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

164:                                              ; preds = %148
  %165 = load i64, i64* %13, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = sub nsw i64 %168, %169
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = sub nsw i64 %171, %172
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %177 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %178, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

180:                                              ; preds = %167, %164
  br label %181

181:                                              ; preds = %215, %180
  %182 = load i32, i32* @la, align 4
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @htons(i64 %183)
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @htons(i64 %185)
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @htons(i64 %187)
  %189 = load i8, i8* %4, align 1
  %190 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call %struct.alias_link* @LibAliasRedirectPort(i32 %182, i8* %191, i32 %184, i8* %193, i32 %186, i8* %195, i32 %188, i8 signext %189)
  store %struct.alias_link* %196, %struct.alias_link** %15, align 8
  %197 = load %struct.alias_link*, %struct.alias_link** %15, align 8
  %198 = icmp eq %struct.alias_link* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %181
  %200 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %201 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i32, i32* %16, align 4
  %205 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %203, i32 %204)
  store i32 1, i32* %2, align 4
  br label %223

206:                                              ; preds = %181
  %207 = load i64, i64* %8, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %8, align 8
  %209 = load i64, i64* %13, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i64, i64* %14, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %11, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %11, align 8
  %218 = load i64, i64* %10, align 8
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %181, label %220

220:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %223

221:                                              ; preds = %37
  br label %222

222:                                              ; preds = %221
  store i32 -1, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %220, %199, %175, %159, %139, %108, %88, %67, %23
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @StrToAddrAndPort(i8*, %struct.in_addr*, i64*, i64*, i8*) #1

declare dso_local i32 @StrToPortRange(i8*, i64*, i64*, i8*) #1

declare dso_local i32 @lowhigh(i64*, i64*) #1

declare dso_local %struct.alias_link* @LibAliasRedirectPort(i32, i8*, i32, i8*, i32, i8*, i32, i8 signext) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
