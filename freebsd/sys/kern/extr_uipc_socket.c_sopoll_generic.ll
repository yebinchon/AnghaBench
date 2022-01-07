; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sopoll_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sopoll_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLINIGNEOF = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@SBS_RCVATMARK = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@SBS_CANTSENDMORE = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sopoll_generic(%struct.socket* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call i32 @SOCK_LOCK(%struct.socket* %10)
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = call i64 @SOLISTENING(%struct.socket* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = load i32, i32* @POLLRDNORM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %59

23:                                               ; preds = %15
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 6
  %26 = call i32 @TAILQ_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  store i32 %33, i32* %9, align 4
  br label %58

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @POLLINIGNEOF, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @POLLIN, align 4
  %47 = load i32, i32* @POLLRDNORM, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @POLLHUP, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %57

52:                                               ; preds = %39, %34
  %53 = load %struct.thread*, %struct.thread** %8, align 8
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 3
  %56 = call i32 @selrecord(%struct.thread* %53, i32* %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %22
  br label %220

60:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %62)
  %64 = load %struct.socket*, %struct.socket** %5, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  %66 = call i32 @SOCKBUF_LOCK(%struct.TYPE_3__* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @POLLIN, align 4
  %69 = load i32, i32* @POLLRDNORM, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = load %struct.socket*, %struct.socket** %5, align 8
  %75 = call i64 @soreadabledata(%struct.socket* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @POLLIN, align 4
  %80 = load i32, i32* @POLLRDNORM, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %77, %73
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @POLLOUT, align 4
  %89 = load i32, i32* @POLLWRNORM, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load %struct.socket*, %struct.socket** %5, align 8
  %95 = call i64 @sowriteable(%struct.socket* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @POLLOUT, align 4
  %100 = load i32, i32* @POLLWRNORM, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %97, %93
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @POLLPRI, align 4
  %109 = load i32, i32* @POLLRDBAND, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = load %struct.socket*, %struct.socket** %5, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.socket*, %struct.socket** %5, align 8
  %120 = getelementptr inbounds %struct.socket, %struct.socket* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SBS_RCVATMARK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118, %113
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @POLLPRI, align 4
  %129 = load i32, i32* @POLLRDBAND, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %126, %118
  br label %135

135:                                              ; preds = %134, %106
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @POLLINIGNEOF, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %169

140:                                              ; preds = %135
  %141 = load %struct.socket*, %struct.socket** %5, align 8
  %142 = getelementptr inbounds %struct.socket, %struct.socket* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %140
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @POLLIN, align 4
  %151 = load i32, i32* @POLLRDNORM, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %149, %152
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load %struct.socket*, %struct.socket** %5, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SBS_CANTSENDMORE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %148
  %164 = load i32, i32* @POLLHUP, align 4
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %163, %148
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %135
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @POLLIN, align 4
  %175 = load i32, i32* @POLLPRI, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @POLLRDNORM, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @POLLRDBAND, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %173, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %172
  %184 = load %struct.thread*, %struct.thread** %8, align 8
  %185 = load %struct.socket*, %struct.socket** %5, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 3
  %187 = call i32 @selrecord(%struct.thread* %184, i32* %186)
  %188 = load i32, i32* @SB_SEL, align 4
  %189 = load %struct.socket*, %struct.socket** %5, align 8
  %190 = getelementptr inbounds %struct.socket, %struct.socket* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %183, %172
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @POLLOUT, align 4
  %197 = load i32, i32* @POLLWRNORM, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %194
  %202 = load %struct.thread*, %struct.thread** %8, align 8
  %203 = load %struct.socket*, %struct.socket** %5, align 8
  %204 = getelementptr inbounds %struct.socket, %struct.socket* %203, i32 0, i32 2
  %205 = call i32 @selrecord(%struct.thread* %202, i32* %204)
  %206 = load i32, i32* @SB_SEL, align 4
  %207 = load %struct.socket*, %struct.socket** %5, align 8
  %208 = getelementptr inbounds %struct.socket, %struct.socket* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %201, %194
  br label %213

213:                                              ; preds = %212, %169
  %214 = load %struct.socket*, %struct.socket** %5, align 8
  %215 = getelementptr inbounds %struct.socket, %struct.socket* %214, i32 0, i32 1
  %216 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %215)
  %217 = load %struct.socket*, %struct.socket** %5, align 8
  %218 = getelementptr inbounds %struct.socket, %struct.socket* %217, i32 0, i32 0
  %219 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__* %218)
  br label %220

220:                                              ; preds = %213, %59
  %221 = load %struct.socket*, %struct.socket** %5, align 8
  %222 = call i32 @SOCK_UNLOCK(%struct.socket* %221)
  %223 = load i32, i32* %9, align 4
  ret i32 %223
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_3__*) #1

declare dso_local i64 @soreadabledata(%struct.socket*) #1

declare dso_local i64 @sowriteable(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
