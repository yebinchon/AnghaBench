; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_accept4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_accept4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32 }
%struct.sockaddr = type { i64 }
%struct.file = type { %struct.socket* }
%struct.socket = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.filecaps = type { i32 }

@cap_accept_rights = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@ACCEPT4_INHERIT = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i32 0, align 4
@socketops = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@FIOASYNC = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_accept4(%struct.thread* %0, i32 %1, %struct.sockaddr** %2, i64* %3, i32 %4, %struct.file** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.file**, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.socket*, align 8
  %18 = alloca %struct.socket*, align 8
  %19 = alloca %struct.filecaps, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sockaddr** %2, %struct.sockaddr*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.file** %5, %struct.file*** %13, align 8
  store %struct.file* null, %struct.file** %15, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %16, align 8
  %25 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  %26 = icmp ne %struct.sockaddr** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %28, align 8
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @AUDIT_ARG_FD(i32 %30)
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @getsock_cap(%struct.thread* %32, i32 %33, i32* @cap_accept_rights, %struct.file** %14, i32* %20, %struct.filecaps* %19)
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %22, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %22, align 4
  store i32 %38, i32* %7, align 4
  br label %229

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %14, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.socket*, %struct.socket** %41, align 8
  store %struct.socket* %42, %struct.socket** %17, align 8
  %43 = load %struct.socket*, %struct.socket** %17, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SO_ACCEPTCONN, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %22, align 4
  br label %200

51:                                               ; preds = %39
  %52 = load %struct.thread*, %struct.thread** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SOCK_CLOEXEC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @O_CLOEXEC, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = call i32 @falloc_caps(%struct.thread* %52, %struct.file** %15, i32* %23, i32 %61, %struct.filecaps* %19)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %200

66:                                               ; preds = %60
  %67 = load %struct.socket*, %struct.socket** %17, align 8
  %68 = call i32 @SOCK_LOCK(%struct.socket* %67)
  %69 = load %struct.socket*, %struct.socket** %17, align 8
  %70 = call i32 @SOLISTENING(%struct.socket* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.socket*, %struct.socket** %17, align 8
  %74 = call i32 @SOCK_UNLOCK(%struct.socket* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %22, align 4
  br label %188

76:                                               ; preds = %66
  %77 = load %struct.socket*, %struct.socket** %17, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @solisten_dequeue(%struct.socket* %77, %struct.socket** %18, i32 %78)
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %188

83:                                               ; preds = %76
  %84 = load i32, i32* %23, align 4
  %85 = load %struct.thread*, %struct.thread** %8, align 8
  %86 = getelementptr inbounds %struct.thread, %struct.thread* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.socket*, %struct.socket** %17, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @KNOTE_UNLOCKED(i32* %91, i32 0)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @ACCEPT4_INHERIT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %83
  %98 = load %struct.socket*, %struct.socket** %17, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 1
  %100 = call i64 @fgetown(i32* %99)
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %21, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i64, i64* %21, align 8
  %105 = load %struct.socket*, %struct.socket** %18, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 1
  %107 = call i32 @fsetown(i64 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %125

109:                                              ; preds = %83
  %110 = load i32, i32* @FNONBLOCK, align 4
  %111 = load i32, i32* @FASYNC, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %20, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @SOCK_NONBLOCK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load i32, i32* @FNONBLOCK, align 4
  %122 = load i32, i32* %20, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %120, %109
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.file*, %struct.file** %15, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* @DTYPE_SOCKET, align 4
  %129 = load %struct.socket*, %struct.socket** %18, align 8
  %130 = call i32 @finit(%struct.file* %126, i32 %127, i32 %128, %struct.socket* %129, i32* @socketops)
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @FNONBLOCK, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %24, align 4
  %134 = load %struct.file*, %struct.file** %15, align 8
  %135 = load i32, i32* @FIONBIO, align 4
  %136 = load %struct.thread*, %struct.thread** %8, align 8
  %137 = getelementptr inbounds %struct.thread, %struct.thread* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.thread*, %struct.thread** %8, align 8
  %140 = call i32 @fo_ioctl(%struct.file* %134, i32 %135, i32* %24, i32 %138, %struct.thread* %139)
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @FASYNC, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %24, align 4
  %144 = load %struct.file*, %struct.file** %15, align 8
  %145 = load i32, i32* @FIOASYNC, align 4
  %146 = load %struct.thread*, %struct.thread** %8, align 8
  %147 = getelementptr inbounds %struct.thread, %struct.thread* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.thread*, %struct.thread** %8, align 8
  %150 = call i32 @fo_ioctl(%struct.file* %144, i32 %145, i32* %24, i32 %148, %struct.thread* %149)
  %151 = load %struct.socket*, %struct.socket** %18, align 8
  %152 = call i32 @soaccept(%struct.socket* %151, %struct.sockaddr** %16)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %125
  br label %188

156:                                              ; preds = %125
  %157 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %158 = icmp eq %struct.sockaddr* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  %161 = icmp ne %struct.sockaddr** %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i64*, i64** %11, align 8
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %162, %159
  br label %200

165:                                              ; preds = %156
  %166 = load %struct.thread*, %struct.thread** %8, align 8
  %167 = load i32, i32* @AT_FDCWD, align 4
  %168 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %169 = call i32 @AUDIT_ARG_SOCKADDR(%struct.thread* %166, i32 %167, %struct.sockaddr* %168)
  %170 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  %171 = icmp ne %struct.sockaddr** %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load i64*, i64** %11, align 8
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %176 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %181 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %11, align 8
  store i64 %182, i64* %183, align 8
  br label %184

184:                                              ; preds = %179, %172
  %185 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %186 = load %struct.sockaddr**, %struct.sockaddr*** %10, align 8
  store %struct.sockaddr* %185, %struct.sockaddr** %186, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %16, align 8
  br label %187

187:                                              ; preds = %184, %165
  br label %188

188:                                              ; preds = %187, %155, %82, %72
  %189 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %190 = load i32, i32* @M_SONAME, align 4
  %191 = call i32 @free(%struct.sockaddr* %189, i32 %190)
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load %struct.thread*, %struct.thread** %8, align 8
  %196 = load %struct.file*, %struct.file** %15, align 8
  %197 = load i32, i32* %23, align 4
  %198 = call i32 @fdclose(%struct.thread* %195, %struct.file* %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %188
  br label %200

200:                                              ; preds = %199, %164, %65, %49
  %201 = load %struct.file*, %struct.file** %15, align 8
  %202 = icmp eq %struct.file* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 @filecaps_free(%struct.filecaps* %19)
  br label %205

205:                                              ; preds = %203, %200
  %206 = load %struct.file**, %struct.file*** %13, align 8
  %207 = icmp ne %struct.file** %206, null
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load i32, i32* %22, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.file*, %struct.file** %15, align 8
  %213 = load %struct.file**, %struct.file*** %13, align 8
  store %struct.file* %212, %struct.file** %213, align 8
  store %struct.file* null, %struct.file** %15, align 8
  br label %216

214:                                              ; preds = %208
  %215 = load %struct.file**, %struct.file*** %13, align 8
  store %struct.file* null, %struct.file** %215, align 8
  br label %216

216:                                              ; preds = %214, %211
  br label %217

217:                                              ; preds = %216, %205
  %218 = load %struct.file*, %struct.file** %15, align 8
  %219 = icmp ne %struct.file* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.file*, %struct.file** %15, align 8
  %222 = load %struct.thread*, %struct.thread** %8, align 8
  %223 = call i32 @fdrop(%struct.file* %221, %struct.thread* %222)
  br label %224

224:                                              ; preds = %220, %217
  %225 = load %struct.file*, %struct.file** %14, align 8
  %226 = load %struct.thread*, %struct.thread** %8, align 8
  %227 = call i32 @fdrop(%struct.file* %225, %struct.thread* %226)
  %228 = load i32, i32* %22, align 4
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %224, %37
  %230 = load i32, i32* %7, align 4
  ret i32 %230
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, %struct.filecaps*) #1

declare dso_local i32 @falloc_caps(%struct.thread*, %struct.file**, i32*, i32, %struct.filecaps*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @solisten_dequeue(%struct.socket*, %struct.socket**, i32) #1

declare dso_local i32 @KNOTE_UNLOCKED(i32*, i32) #1

declare dso_local i64 @fgetown(i32*) #1

declare dso_local i32 @fsetown(i64, i32*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.socket*, i32*) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32*, i32, %struct.thread*) #1

declare dso_local i32 @soaccept(%struct.socket*, %struct.sockaddr**) #1

declare dso_local i32 @AUDIT_ARG_SOCKADDR(%struct.thread*, i32, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @filecaps_free(%struct.filecaps*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
