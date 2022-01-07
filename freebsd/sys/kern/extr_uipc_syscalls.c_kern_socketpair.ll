; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_socketpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.unpcb = type { i32 }

@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i32 0, align 4
@socketops = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_socketpair(%struct.thread* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.unpcb*, align 8
  %21 = alloca %struct.unpcb*, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @AUDIT_ARG_SOCKET(i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SOCK_CLOEXEC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load i32, i32* @SOCK_CLOEXEC, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @O_CLOEXEC, align 4
  %36 = load i32, i32* %18, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %18, align 4
  br label %38

38:                                               ; preds = %30, %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SOCK_NONBLOCK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @SOCK_NONBLOCK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @FNONBLOCK, align 4
  %49 = load i32, i32* %19, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.thread*, %struct.thread** %7, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.thread*, %struct.thread** %7, align 8
  %59 = call i32 @socreate(i32 %52, %struct.socket** %14, i32 %53, i32 %54, i32 %57, %struct.thread* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %6, align 4
  br label %225

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.thread*, %struct.thread** %7, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.thread*, %struct.thread** %7, align 8
  %72 = call i32 @socreate(i32 %65, %struct.socket** %15, i32 %66, i32 %67, i32 %70, %struct.thread* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %217

76:                                               ; preds = %64
  %77 = load %struct.thread*, %struct.thread** %7, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @falloc(%struct.thread* %77, %struct.file** %12, i32* %16, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %210

83:                                               ; preds = %76
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.socket*, %struct.socket** %14, align 8
  %88 = load %struct.file*, %struct.file** %12, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  store %struct.socket* %87, %struct.socket** %89, align 8
  %90 = load %struct.thread*, %struct.thread** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @falloc(%struct.thread* %90, %struct.file** %13, i32* %16, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %200

96:                                               ; preds = %83
  %97 = load %struct.socket*, %struct.socket** %15, align 8
  %98 = load %struct.file*, %struct.file** %13, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 0
  store %struct.socket* %97, %struct.socket** %99, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.socket*, %struct.socket** %14, align 8
  %104 = load %struct.socket*, %struct.socket** %15, align 8
  %105 = call i32 @soconnect2(%struct.socket* %103, %struct.socket* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %190

109:                                              ; preds = %96
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @SOCK_DGRAM, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.socket*, %struct.socket** %15, align 8
  %115 = load %struct.socket*, %struct.socket** %14, align 8
  %116 = call i32 @soconnect2(%struct.socket* %114, %struct.socket* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %190

120:                                              ; preds = %113
  br label %141

121:                                              ; preds = %109
  %122 = load %struct.socket*, %struct.socket** %14, align 8
  %123 = getelementptr inbounds %struct.socket, %struct.socket* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PR_CONNREQUIRED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %121
  %131 = load %struct.socket*, %struct.socket** %14, align 8
  %132 = call %struct.unpcb* @sotounpcb(%struct.socket* %131)
  store %struct.unpcb* %132, %struct.unpcb** %20, align 8
  %133 = load %struct.socket*, %struct.socket** %15, align 8
  %134 = call %struct.unpcb* @sotounpcb(%struct.socket* %133)
  store %struct.unpcb* %134, %struct.unpcb** %21, align 8
  %135 = load %struct.thread*, %struct.thread** %7, align 8
  %136 = load %struct.unpcb*, %struct.unpcb** %20, align 8
  %137 = load %struct.unpcb*, %struct.unpcb** %21, align 8
  %138 = load %struct.unpcb*, %struct.unpcb** %20, align 8
  %139 = call i32 @unp_copy_peercred(%struct.thread* %135, %struct.unpcb* %136, %struct.unpcb* %137, %struct.unpcb* %138)
  br label %140

140:                                              ; preds = %130, %121
  br label %141

141:                                              ; preds = %140, %120
  %142 = load %struct.file*, %struct.file** %12, align 8
  %143 = load i32, i32* @FREAD, align 4
  %144 = load i32, i32* @FWRITE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @DTYPE_SOCKET, align 4
  %149 = load %struct.file*, %struct.file** %12, align 8
  %150 = getelementptr inbounds %struct.file, %struct.file* %149, i32 0, i32 0
  %151 = load %struct.socket*, %struct.socket** %150, align 8
  %152 = call i32 @finit(%struct.file* %142, i32 %147, i32 %148, %struct.socket* %151, i32* @socketops)
  %153 = load %struct.file*, %struct.file** %13, align 8
  %154 = load i32, i32* @FREAD, align 4
  %155 = load i32, i32* @FWRITE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %19, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @DTYPE_SOCKET, align 4
  %160 = load %struct.file*, %struct.file** %13, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 0
  %162 = load %struct.socket*, %struct.socket** %161, align 8
  %163 = call i32 @finit(%struct.file* %153, i32 %158, i32 %159, %struct.socket* %162, i32* @socketops)
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @FNONBLOCK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %141
  %169 = load %struct.file*, %struct.file** %12, align 8
  %170 = load i32, i32* @FIONBIO, align 4
  %171 = load %struct.thread*, %struct.thread** %7, align 8
  %172 = getelementptr inbounds %struct.thread, %struct.thread* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.thread*, %struct.thread** %7, align 8
  %175 = call i32 @fo_ioctl(%struct.file* %169, i32 %170, i32* %19, i32 %173, %struct.thread* %174)
  %176 = load %struct.file*, %struct.file** %13, align 8
  %177 = load i32, i32* @FIONBIO, align 4
  %178 = load %struct.thread*, %struct.thread** %7, align 8
  %179 = getelementptr inbounds %struct.thread, %struct.thread* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.thread*, %struct.thread** %7, align 8
  %182 = call i32 @fo_ioctl(%struct.file* %176, i32 %177, i32* %19, i32 %180, %struct.thread* %181)
  br label %183

183:                                              ; preds = %168, %141
  %184 = load %struct.file*, %struct.file** %12, align 8
  %185 = load %struct.thread*, %struct.thread** %7, align 8
  %186 = call i32 @fdrop(%struct.file* %184, %struct.thread* %185)
  %187 = load %struct.file*, %struct.file** %13, align 8
  %188 = load %struct.thread*, %struct.thread** %7, align 8
  %189 = call i32 @fdrop(%struct.file* %187, %struct.thread* %188)
  store i32 0, i32* %6, align 4
  br label %225

190:                                              ; preds = %119, %108
  %191 = load %struct.thread*, %struct.thread** %7, align 8
  %192 = load %struct.file*, %struct.file** %13, align 8
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @fdclose(%struct.thread* %191, %struct.file* %192, i32 %195)
  %197 = load %struct.file*, %struct.file** %13, align 8
  %198 = load %struct.thread*, %struct.thread** %7, align 8
  %199 = call i32 @fdrop(%struct.file* %197, %struct.thread* %198)
  br label %200

200:                                              ; preds = %190, %95
  %201 = load %struct.thread*, %struct.thread** %7, align 8
  %202 = load %struct.file*, %struct.file** %12, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @fdclose(%struct.thread* %201, %struct.file* %202, i32 %205)
  %207 = load %struct.file*, %struct.file** %12, align 8
  %208 = load %struct.thread*, %struct.thread** %7, align 8
  %209 = call i32 @fdrop(%struct.file* %207, %struct.thread* %208)
  br label %210

210:                                              ; preds = %200, %82
  %211 = load %struct.socket*, %struct.socket** %15, align 8
  %212 = icmp ne %struct.socket* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.socket*, %struct.socket** %15, align 8
  %215 = call i32 @soclose(%struct.socket* %214)
  br label %216

216:                                              ; preds = %213, %210
  br label %217

217:                                              ; preds = %216, %75
  %218 = load %struct.socket*, %struct.socket** %14, align 8
  %219 = icmp ne %struct.socket* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.socket*, %struct.socket** %14, align 8
  %222 = call i32 @soclose(%struct.socket* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %223, %183, %62
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @AUDIT_ARG_SOCKET(i32, i32, i32) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local i32 @soconnect2(%struct.socket*, %struct.socket*) #1

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @unp_copy_peercred(%struct.thread*, %struct.unpcb*, %struct.unpcb*, %struct.unpcb*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.socket*, i32*) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32*, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
