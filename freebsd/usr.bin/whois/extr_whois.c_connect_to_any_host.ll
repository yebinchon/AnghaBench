; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_connect_to_any_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_connect_to_any_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.addrinfo*, i32, i32, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"calloc()\00", align 1
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*)* @connect_to_any_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_any_host(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %2, align 8
  store i32 180, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  store %struct.addrinfo* %11, %struct.addrinfo** %3, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %18, %1
  %13 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %14 = icmp ne %struct.addrinfo* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 1
  %21 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  store %struct.addrinfo* %21, %struct.addrinfo** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.pollfd* @calloc(i64 %23, i32 12)
  store %struct.pollfd* %24, %struct.pollfd** %7, align 8
  %25 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %26 = icmp eq %struct.pollfd* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %31 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  store %struct.addrinfo* %31, %struct.addrinfo** %3, align 8
  br label %32

32:                                               ; preds = %215, %30
  %33 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %34 = icmp ne %struct.addrinfo* %33, null
  br i1 %34, label %35, label %219

35:                                               ; preds = %32
  %36 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SOCK_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @socket(i32 %38, i32 %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %215

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @connect(i32 %52, i32 %55, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %51
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EINPROGRESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i64 %68
  %70 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @POLLERR, align 4
  %72 = load i32, i32* @POLLHUP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @POLLIN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @POLLOUT, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %78, i64 %79
  %81 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  store i32 -1, i32* %9, align 4
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %4, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %4, align 8
  br label %93

86:                                               ; preds = %61
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @close(i32 %87)
  store i32 -1, i32* %9, align 4
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %215

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %65
  br label %95

94:                                               ; preds = %51
  br label %225

95:                                               ; preds = %93
  %96 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 1
  %98 = load %struct.addrinfo*, %struct.addrinfo** %97, align 8
  %99 = icmp eq %struct.addrinfo* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @INFTIM, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %95
  br label %103

103:                                              ; preds = %212, %102
  %104 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @poll(%struct.pollfd* %104, i64 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %113, %110
  br label %214

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 -1, i32* %9, align 4
  br label %225

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121
  store i64 0, i64* %5, align 8
  br label %123

123:                                              ; preds = %201, %122
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %4, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %204

127:                                              ; preds = %123
  %128 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %128, i64 %129
  %131 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %148, label %134

134:                                              ; preds = %127
  %135 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %135, i64 %136
  %138 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %134
  %142 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %142, i64 %143
  %145 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141, %134, %127
  br label %201

149:                                              ; preds = %141
  %150 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %150, i64 %151
  %153 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @POLLIN, align 4
  %156 = load i32, i32* @POLLOUT, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = and i32 %154, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %149
  %162 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %163 = load i64, i64* %5, align 8
  %164 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %162, i64 %163
  %165 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @close(i32 %166)
  %168 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %169 = load i64, i64* %5, align 8
  %170 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %168, i64 %169
  %171 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %170, i32 0, i32 0
  store i32 -1, i32* %171, align 4
  %172 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %172, i64 %173
  %175 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %6, align 8
  br label %201

178:                                              ; preds = %149
  %179 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %179, i64 %180
  %182 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @POLLIN, align 4
  %185 = load i32, i32* @POLLOUT, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %178
  %190 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %191 = load i64, i64* %5, align 8
  %192 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %190, i64 %191
  %193 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %9, align 4
  %195 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %196 = load i64, i64* %5, align 8
  %197 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %195, i64 %196
  %198 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %197, i32 0, i32 0
  store i32 -1, i32* %198, align 4
  br label %225

199:                                              ; preds = %178
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200, %161, %148
  %202 = load i64, i64* %5, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %5, align 8
  br label %123

204:                                              ; preds = %123
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @INFTIM, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i64, i64* %6, align 8
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %209, %205
  %213 = phi i1 [ false, %205 ], [ %211, %209 ]
  br i1 %213, label %103, label %214

214:                                              ; preds = %212, %116
  br label %215

215:                                              ; preds = %214, %91, %50
  %216 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 1
  %218 = load %struct.addrinfo*, %struct.addrinfo** %217, align 8
  store %struct.addrinfo* %218, %struct.addrinfo** %3, align 8
  br label %32

219:                                              ; preds = %32
  store i32 -1, i32* %9, align 4
  %220 = load i64, i64* %6, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %223, i64* @errno, align 8
  br label %224

224:                                              ; preds = %222, %219
  br label %225

225:                                              ; preds = %224, %189, %120, %94
  store i64 0, i64* %5, align 8
  br label %226

226:                                              ; preds = %245, %225
  %227 = load i64, i64* %5, align 8
  %228 = load i64, i64* %4, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %226
  %231 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %232 = load i64, i64* %5, align 8
  %233 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %231, i64 %232
  %234 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %239 = load i64, i64* %5, align 8
  %240 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %238, i64 %239
  %241 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @close(i32 %242)
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %5, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %5, align 8
  br label %226

248:                                              ; preds = %226
  %249 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %250 = call i32 @free(%struct.pollfd* %249)
  %251 = load i32, i32* %9, align 4
  ret i32 %251
}

declare dso_local %struct.pollfd* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i64, i32) #1

declare dso_local i32 @free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
