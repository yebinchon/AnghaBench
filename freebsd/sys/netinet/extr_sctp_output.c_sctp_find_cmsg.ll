; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_find_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_find_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.cmsghdr = type { i32, i64, i32 }
%struct.sctp_sndinfo = type { i32, i32, i32, i32, i32 }
%struct.sctp_prinfo = type { i32, i32 }
%struct.sctp_authinfo = type { i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@SCTP_SNDRCV = common dso_local global i32 0, align 4
@SCTP_PR_SCTP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.mbuf*, i64)* @sctp_find_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_find_cmsg(i32 %0, i8* %1, %struct.mbuf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmsghdr, align 8
  %11 = alloca %struct.sctp_sndinfo, align 4
  %12 = alloca %struct.sctp_prinfo, align 4
  %13 = alloca %struct.sctp_authinfo, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sctp_sndrcvinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = call i32 @SCTP_BUF_LEN(%struct.mbuf* %21)
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %221, %4
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %229

27:                                               ; preds = %23
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %18, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @CMSG_ALIGN(i32 24)
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %5, align 4
  br label %231

37:                                               ; preds = %27
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = load i32, i32* %18, align 4
  %40 = ptrtoint %struct.cmsghdr* %10 to i32
  %41 = call i32 @m_copydata(%struct.mbuf* %38, i32 %39, i32 24, i32 %40)
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = call i64 @CMSG_ALIGN(i32 24)
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %5, align 4
  br label %231

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @INT_MAX, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %5, align 4
  br label %231

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = call i64 @CMSG_ALIGN(i32 24)
  %67 = sub nsw i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = call i64 @CMSG_ALIGN(i32 24)
  %72 = add nsw i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  %74 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPPROTO_SCTP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %220

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SCTP_SNDRCV, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %220

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 129
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 130
  br i1 %98, label %99, label %220

99:                                               ; preds = %95, %91, %87, %78
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @INT_MAX, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %5, align 4
  br label %231

110:                                              ; preds = %104
  %111 = load i32, i32* %16, align 4
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %19, align 4
  store i32 %116, i32* %5, align 4
  br label %231

117:                                              ; preds = %110
  %118 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %7, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = call i32 @m_copydata(%struct.mbuf* %118, i32 %119, i32 %121, i32 %123)
  store i32 1, i32* %5, align 4
  br label %231

125:                                              ; preds = %99
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to %struct.sctp_sndrcvinfo*
  store %struct.sctp_sndrcvinfo* %127, %struct.sctp_sndrcvinfo** %20, align 8
  %128 = load i32, i32* %19, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load i64, i64* %9, align 8
  %132 = icmp ult i64 %131, 32
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %19, align 4
  store i32 %134, i32* %5, align 4
  br label %231

135:                                              ; preds = %130
  %136 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %137 = call i32 @memset(%struct.sctp_sndrcvinfo* %136, i32 0, i32 32)
  br label %138

138:                                              ; preds = %135, %125
  %139 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %216 [
    i32 128, label %141
    i32 129, label %171
    i32 130, label %200
  ]

141:                                              ; preds = %138
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 20
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %5, align 4
  br label %231

146:                                              ; preds = %141
  %147 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %148 = load i32, i32* %17, align 4
  %149 = ptrtoint %struct.sctp_sndinfo* %11 to i32
  %150 = call i32 @m_copydata(%struct.mbuf* %147, i32 %148, i32 20, i32 %149)
  %151 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %11, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %154 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 4
  %155 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %11, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %158 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %11, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %162 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 4
  %163 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %11, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %166 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %11, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %170 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  br label %218

171:                                              ; preds = %138
  %172 = load i32, i32* %16, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %5, align 4
  br label %231

176:                                              ; preds = %171
  %177 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %178 = load i32, i32* %17, align 4
  %179 = ptrtoint %struct.sctp_prinfo* %12 to i32
  %180 = call i32 @m_copydata(%struct.mbuf* %177, i32 %178, i32 8, i32 %179)
  %181 = getelementptr inbounds %struct.sctp_prinfo, %struct.sctp_prinfo* %12, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SCTP_PR_SCTP_NONE, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.sctp_prinfo, %struct.sctp_prinfo* %12, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %189 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  br label %193

190:                                              ; preds = %176
  %191 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %192 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %191, i32 0, i32 3
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %185
  %194 = getelementptr inbounds %struct.sctp_prinfo, %struct.sctp_prinfo* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %197 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %218

200:                                              ; preds = %138
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %19, align 4
  store i32 %204, i32* %5, align 4
  br label %231

205:                                              ; preds = %200
  %206 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %207 = load i32, i32* %17, align 4
  %208 = ptrtoint %struct.sctp_authinfo* %13 to i32
  %209 = call i32 @m_copydata(%struct.mbuf* %206, i32 %207, i32 4, i32 %208)
  %210 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %211 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %210, i32 0, i32 0
  store i32 1, i32* %211, align 4
  %212 = getelementptr inbounds %struct.sctp_authinfo, %struct.sctp_authinfo* %13, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %20, align 8
  %215 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %218

216:                                              ; preds = %138
  %217 = load i32, i32* %19, align 4
  store i32 %217, i32* %5, align 4
  br label %231

218:                                              ; preds = %205, %193, %146
  store i32 1, i32* %19, align 4
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219, %95, %83, %62
  br label %221

221:                                              ; preds = %220
  %222 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @CMSG_ALIGN(i32 %223)
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %18, align 4
  br label %23

229:                                              ; preds = %23
  %230 = load i32, i32* %19, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %216, %203, %174, %144, %133, %117, %115, %108, %60, %47, %35
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @SCTP_BUF_LEN(%struct.mbuf*) #1

declare dso_local i64 @CMSG_ALIGN(i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sctp_sndrcvinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
