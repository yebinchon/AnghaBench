; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_do_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbcmd = type { i32, i32, i32, i16*, i8**, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i8*, i8* }

@slave = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@fmt = common dso_local global i8* null, align 8
@iflag = common dso_local global i32 0, align 4
@wflag = common dso_local global i64 0, align 8
@wordfmt = common dso_local global i8* null, align 8
@bytefmt = common dso_local global i8* null, align 8
@oflag = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@SMB_QUICK_WRITE = common dso_local global i32 0, align 4
@SMB_QUICK_READ = common dso_local global i32 0, align 4
@SMB_RECVB = common dso_local global i32 0, align 4
@obuf = common dso_local global i8** null, align 8
@SMB_SENDB = common dso_local global i32 0, align 4
@SMB_READB = common dso_local global i32 0, align 4
@SMB_WRITEB = common dso_local global i32 0, align 4
@SMB_READW = common dso_local global i32 0, align 4
@oword = common dso_local global i8* null, align 8
@SMB_WRITEW = common dso_local global i32 0, align 4
@SMB_PCALL = common dso_local global i32 0, align 4
@ibuf = common dso_local global i16* null, align 8
@SMB_BREAD = common dso_local global i32 0, align 4
@SMB_BWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_io() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smbcmd, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @slave, align 4
  %5 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 7
  store i32 %4, i32* %5, align 8
  %6 = load i32, i32* @cflag, align 4
  %7 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = load i8*, i8** @fmt, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = load i32, i32* @iflag, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i64, i64* @wflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8*, i8** @wordfmt, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load i8*, i8** @bytefmt, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  store i8* %23, i8** @fmt, align 8
  br label %24

24:                                               ; preds = %22, %12, %0
  %25 = load i32, i32* @cflag, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %83

27:                                               ; preds = %24
  %28 = load i32, i32* @iflag, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* @oflag, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @fd, align 4
  %35 = load i32, i32* @SMB_QUICK_WRITE, align 4
  %36 = call i32 @ioctl(i32 %34, i32 %35, %struct.smbcmd* %2)
  store i32 %36, i32* %1, align 4
  br label %245

37:                                               ; preds = %30, %27
  %38 = load i32, i32* @iflag, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @oflag, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @fd, align 4
  %45 = load i32, i32* @SMB_QUICK_READ, align 4
  %46 = call i32 @ioctl(i32 %44, i32 %45, %struct.smbcmd* %2)
  store i32 %46, i32* %1, align 4
  br label %245

47:                                               ; preds = %40, %37
  %48 = load i32, i32* @iflag, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* @oflag, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* @fd, align 4
  %55 = load i32, i32* @SMB_RECVB, align 4
  %56 = call i32 @ioctl(i32 %54, i32 %55, %struct.smbcmd* %2)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %1, align 4
  br label %245

59:                                               ; preds = %53
  %60 = load i8*, i8** @fmt, align 8
  %61 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = trunc i32 %62 to i8
  %64 = zext i8 %63 to i16
  %65 = call i32 @printf(i8* %60, i16 zeroext %64)
  %66 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %245

67:                                               ; preds = %50, %47
  %68 = load i32, i32* @iflag, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* @oflag, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i8**, i8*** @obuf, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* @fd, align 4
  %80 = load i32, i32* @SMB_SENDB, align 4
  %81 = call i32 @ioctl(i32 %79, i32 %80, %struct.smbcmd* %2)
  store i32 %81, i32* %1, align 4
  br label %245

82:                                               ; preds = %70, %67
  store i32 -2, i32* %1, align 4
  br label %245

83:                                               ; preds = %24
  %84 = load i32, i32* @iflag, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i32, i32* @oflag, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32, i32* @fd, align 4
  %91 = load i32, i32* @SMB_READB, align 4
  %92 = call i32 @ioctl(i32 %90, i32 %91, %struct.smbcmd* %2)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 -1, i32* %1, align 4
  br label %245

95:                                               ; preds = %89
  %96 = load i8*, i8** @fmt, align 8
  %97 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i8
  %101 = zext i8 %100 to i16
  %102 = call i32 @printf(i8* %96, i16 zeroext %101)
  %103 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %245

104:                                              ; preds = %86, %83
  %105 = load i32, i32* @iflag, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* @oflag, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i8**, i8*** @obuf, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @fd, align 4
  %117 = load i32, i32* @SMB_WRITEB, align 4
  %118 = call i32 @ioctl(i32 %116, i32 %117, %struct.smbcmd* %2)
  store i32 %118, i32* %1, align 4
  br label %245

119:                                              ; preds = %107, %104
  %120 = load i64, i64* @wflag, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i32, i32* @iflag, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32, i32* @oflag, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i32, i32* @fd, align 4
  %130 = load i32, i32* @SMB_READW, align 4
  %131 = call i32 @ioctl(i32 %129, i32 %130, %struct.smbcmd* %2)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 -1, i32* %1, align 4
  br label %245

134:                                              ; preds = %128
  %135 = load i8*, i8** @fmt, align 8
  %136 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i16
  %140 = call i32 @printf(i8* %135, i16 zeroext %139)
  %141 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %245

142:                                              ; preds = %125, %122, %119
  %143 = load i64, i64* @wflag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32, i32* @iflag, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* @oflag, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i8*, i8** @oword, align 8
  %153 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* @fd, align 4
  %156 = load i32, i32* @SMB_WRITEW, align 4
  %157 = call i32 @ioctl(i32 %155, i32 %156, %struct.smbcmd* %2)
  store i32 %157, i32* %1, align 4
  br label %245

158:                                              ; preds = %148, %145, %142
  %159 = load i64, i64* @wflag, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %158
  %162 = load i32, i32* @iflag, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load i32, i32* @oflag, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load i8*, i8** @oword, align 8
  %169 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @fd, align 4
  %172 = load i32, i32* @SMB_PCALL, align 4
  %173 = call i32 @ioctl(i32 %171, i32 %172, %struct.smbcmd* %2)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 -1, i32* %1, align 4
  br label %245

176:                                              ; preds = %167
  %177 = load i8*, i8** @fmt, align 8
  %178 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i16
  %182 = call i32 @printf(i8* %177, i16 zeroext %181)
  %183 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %245

184:                                              ; preds = %164, %161, %158
  %185 = load i32, i32* @iflag, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %224

187:                                              ; preds = %184
  %188 = load i32, i32* @oflag, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load i16*, i16** @ibuf, align 8
  %192 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 3
  store i16* %191, i16** %192, align 8
  %193 = load i32, i32* @iflag, align 4
  %194 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 1
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* @fd, align 4
  %196 = load i32, i32* @SMB_BREAD, align 4
  %197 = call i32 @ioctl(i32 %195, i32 %196, %struct.smbcmd* %2)
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  store i32 -1, i32* %1, align 4
  br label %245

200:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %219, %200
  %202 = load i32, i32* %3, align 4
  %203 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = load i32, i32* %3, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call i32 @putchar(i8 signext 32)
  br label %211

211:                                              ; preds = %209, %206
  %212 = load i8*, i8** @fmt, align 8
  %213 = load i16*, i16** @ibuf, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i16, i16* %213, i64 %215
  %217 = load i16, i16* %216, align 2
  %218 = call i32 @printf(i8* %212, i16 zeroext %217)
  br label %219

219:                                              ; preds = %211
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %201

222:                                              ; preds = %201
  %223 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %245

224:                                              ; preds = %187, %184
  %225 = load i32, i32* @iflag, align 4
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %238

227:                                              ; preds = %224
  %228 = load i32, i32* @oflag, align 4
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load i8**, i8*** @obuf, align 8
  %232 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 4
  store i8** %231, i8*** %232, align 8
  %233 = load i32, i32* @oflag, align 4
  %234 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %2, i32 0, i32 2
  store i32 %233, i32* %234, align 8
  %235 = load i32, i32* @fd, align 4
  %236 = load i32, i32* @SMB_BWRITE, align 4
  %237 = call i32 @ioctl(i32 %235, i32 %236, %struct.smbcmd* %2)
  store i32 %237, i32* %1, align 4
  br label %245

238:                                              ; preds = %227, %224
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  store i32 -2, i32* %1, align 4
  br label %245

245:                                              ; preds = %244, %230, %222, %199, %176, %175, %151, %134, %133, %110, %95, %94, %82, %73, %59, %58, %43, %33
  %246 = load i32, i32* %1, align 4
  ret i32 %246
}

declare dso_local i32 @ioctl(i32, i32, %struct.smbcmd*) #1

declare dso_local i32 @printf(i8*, i16 zeroext) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
