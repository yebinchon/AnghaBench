; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USECS_IN_SECOND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BBR_INCL_TCP_OH = common dso_local global i32 0, align 4
@BBR_INCL_IP_OH = common dso_local global i32 0, align 4
@BBR_INCL_ENET_OH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*, %struct.tcp_bbr*)* @bbr_get_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_sockopt(%struct.socket* %0, %struct.sockopt* %1, %struct.inpcb* %2, %struct.tcpcb* %3, %struct.tcp_bbr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockopt*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca %struct.tcp_bbr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockopt* %1, %struct.sockopt** %8, align 8
  store %struct.inpcb* %2, %struct.inpcb** %9, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %10, align 8
  store %struct.tcp_bbr* %4, %struct.tcp_bbr** %11, align 8
  %14 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %212 [
    i32 152, label %17
    i32 154, label %22
    i32 151, label %27
    i32 156, label %32
    i32 150, label %36
    i32 155, label %41
    i32 164, label %46
    i32 140, label %50
    i32 159, label %54
    i32 142, label %58
    i32 163, label %63
    i32 147, label %68
    i32 146, label %73
    i32 148, label %81
    i32 143, label %86
    i32 138, label %90
    i32 157, label %92
    i32 158, label %97
    i32 132, label %101
    i32 133, label %106
    i32 129, label %111
    i32 130, label %116
    i32 137, label %121
    i32 161, label %125
    i32 136, label %130
    i32 144, label %135
    i32 162, label %139
    i32 128, label %143
    i32 131, label %147
    i32 145, label %152
    i32 135, label %156
    i32 134, label %160
    i32 160, label %164
    i32 149, label %168
    i32 139, label %172
    i32 141, label %176
    i32 153, label %181
  ]

17:                                               ; preds = %5
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  br label %218

22:                                               ; preds = %5
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %24 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  br label %218

27:                                               ; preds = %5
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %218

32:                                               ; preds = %5
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %218

36:                                               ; preds = %5
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 15
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  br label %218

41:                                               ; preds = %5
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 15
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  br label %218

46:                                               ; preds = %5
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  br label %218

50:                                               ; preds = %5
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  br label %218

54:                                               ; preds = %5
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  br label %218

58:                                               ; preds = %5
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 15
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  br label %218

63:                                               ; preds = %5
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %65 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %64, i32 0, i32 15
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  br label %218

68:                                               ; preds = %5
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 15
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %218

73:                                               ; preds = %5
  %74 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %75 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 21
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @USECS_IN_SECOND, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %13, align 4
  br label %218

81:                                               ; preds = %5
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  br label %218

86:                                               ; preds = %5
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  br label %218

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %12, align 4
  br label %218

92:                                               ; preds = %5
  %93 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %94 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  br label %218

97:                                               ; preds = %5
  %98 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %99 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  br label %218

101:                                              ; preds = %5
  %102 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %103 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  br label %218

106:                                              ; preds = %5
  %107 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %108 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  br label %218

111:                                              ; preds = %5
  %112 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %113 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  br label %218

116:                                              ; preds = %5
  %117 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %118 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %13, align 4
  br label %218

121:                                              ; preds = %5
  %122 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %123 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %13, align 4
  br label %218

125:                                              ; preds = %5
  %126 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %127 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 14
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  br label %218

130:                                              ; preds = %5
  %131 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %132 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %13, align 4
  br label %218

135:                                              ; preds = %5
  %136 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %137 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %13, align 4
  br label %218

139:                                              ; preds = %5
  %140 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %141 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %13, align 4
  br label %218

143:                                              ; preds = %5
  %144 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %145 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  br label %218

147:                                              ; preds = %5
  %148 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %149 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 16
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  br label %218

152:                                              ; preds = %5
  %153 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %154 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %13, align 4
  br label %218

156:                                              ; preds = %5
  %157 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %158 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %13, align 4
  br label %218

160:                                              ; preds = %5
  %161 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %13, align 4
  br label %218

164:                                              ; preds = %5
  %165 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %166 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  br label %218

168:                                              ; preds = %5
  %169 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %170 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %169, i32 0, i32 13
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %13, align 4
  br label %218

172:                                              ; preds = %5
  %173 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %174 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %173, i32 0, i32 14
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %13, align 4
  br label %218

176:                                              ; preds = %5
  %177 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %178 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %13, align 4
  br label %218

181:                                              ; preds = %5
  store i32 0, i32* %13, align 4
  %182 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %183 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %182, i32 0, i32 15
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 20
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i32, i32* @BBR_INCL_TCP_OH, align 4
  %189 = load i32, i32* %13, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %187, %181
  %192 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %193 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %192, i32 0, i32 15
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 19
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* @BBR_INCL_IP_OH, align 4
  %199 = load i32, i32* %13, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %197, %191
  %202 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %203 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 18
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i32, i32* @BBR_INCL_ENET_OH, align 4
  %209 = load i32, i32* %13, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %13, align 4
  br label %211

211:                                              ; preds = %207, %201
  br label %218

212:                                              ; preds = %5
  %213 = load %struct.socket*, %struct.socket** %7, align 8
  %214 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %215 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %216 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %217 = call i32 @tcp_default_ctloutput(%struct.socket* %213, %struct.sockopt* %214, %struct.inpcb* %215, %struct.tcpcb* %216)
  store i32 %217, i32* %6, align 4
  br label %224

218:                                              ; preds = %211, %176, %172, %168, %164, %160, %156, %152, %147, %143, %139, %135, %130, %125, %121, %116, %111, %106, %101, %97, %92, %90, %86, %81, %73, %68, %63, %58, %54, %50, %46, %41, %36, %32, %27, %22, %17
  %219 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %220 = call i32 @INP_WUNLOCK(%struct.inpcb* %219)
  %221 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %222 = call i32 @sooptcopyout(%struct.sockopt* %221, i32* %13, i32 4)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %218, %212
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @tcp_default_ctloutput(%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
