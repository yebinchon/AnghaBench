; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_bdg_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_bdg_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq = type { i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/netmap\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to open /dev/netmap\00", align 1
@NETMAP_API = common dso_local global i32 0, align 4
@NIOCREGIF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unable to %s %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Success to %s %s\00", align 1
@NR_REG_ALL_NIC = common dso_local global i32 0, align 4
@NETMAP_BDG_HOST = common dso_local global i32 0, align 4
@NR_REG_NIC_SW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to %s %s to the bridge\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Success to %s %s to the bridge\00", align 1
@NIOCGINFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Unable to obtain info for %s\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s at bridge:%d port:%d\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"bridge:%d port:%d %s\00", align 1
@NR_REG_ONE_NIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"polling on %s %s\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"polling on %s %s (err %d)\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"couldn't start\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"couldn't stop\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Unable to get if info for %s\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%s: %d queues.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i32)* @bdg_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdg_ctl(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nmreq, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %223

21:                                               ; preds = %5
  %22 = call i32 @bzero(%struct.nmreq* %12, i32 56)
  %23 = load i32, i32* @NETMAP_API, align 4
  %24 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 10
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strncpy(i8* %29, i8* %30, i32 7)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @parse_nmr_config(i8* %35, %struct.nmreq* %12)
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %199 [
    i32 133, label %40
    i32 130, label %40
    i32 134, label %63
    i32 132, label %63
    i32 131, label %100
    i32 128, label %149
    i32 129, label %149
  ]

40:                                               ; preds = %32, %32
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @NIOCREGIF, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.nmreq* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 133
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @perror(i8* %53)
  br label %62

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 133
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %55, %46
  br label %219

63:                                               ; preds = %32, %32
  %64 = load i32, i32* @NR_REG_ALL_NIC, align 4
  %65 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 6
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NETMAP_BDG_HOST, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @NR_REG_NIC_SW, align 4
  %74 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 6
  store i32 %73, i32* %74, align 8
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %68, %63
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NIOCREGIF, align 4
  %80 = call i32 @ioctl(i32 %78, i32 %79, %struct.nmreq* %12)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 132
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @perror(i8* %90)
  br label %99

92:                                               ; preds = %75
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 132
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %92, %83
  br label %219

100:                                              ; preds = %32
  %101 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @NIOCGINFO, align 4
  %108 = call i32 @ioctl(i32 %106, i32 %107, %struct.nmreq* %12)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @perror(i8* %114)
  br label %123

116:                                              ; preds = %105
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %117, i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %116, %111
  br label %219

124:                                              ; preds = %100
  %125 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %144, %124
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @NIOCGINFO, align 4
  %130 = call i32 @ioctl(i32 %128, i32 %129, %struct.nmreq* %12)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %135, i32 %137, i8* %139)
  %141 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %127

148:                                              ; preds = %127
  br label %219

149:                                              ; preds = %32, %32
  %150 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @NR_REG_ONE_NIC, align 4
  br label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @NR_REG_ALL_NIC, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 8
  %162 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 8
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @NR_REG_ALL_NIC, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  store i32 1, i32* %170, align 8
  br label %175

171:                                              ; preds = %157
  %172 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  store i32 %173, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %169
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @NIOCREGIF, align 4
  %178 = call i32 @ioctl(i32 %176, i32 %177, %struct.nmreq* %12)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, 128
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)
  %188 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %183, i8* %187)
  br label %198

189:                                              ; preds = %175
  %190 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = icmp eq i32 %192, 128
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)
  %196 = load i32, i32* %13, align 4
  %197 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %191, i8* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %181
  br label %219

199:                                              ; preds = %32
  %200 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 2
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 3
  store i32 0, i32* %201, align 8
  %202 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 1
  store i32 0, i32* %202, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @NIOCGINFO, align 4
  %205 = call i32 @ioctl(i32 %203, i32 %204, %struct.nmreq* %12)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i8*, i8** %7, align 8
  %210 = call i32 (i8*, i8*, ...) @ND(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* %209)
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @perror(i8* %211)
  br label %218

213:                                              ; preds = %199
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %12, i32 0, i32 5
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %214, i8* %216)
  br label %218

218:                                              ; preds = %213, %208
  br label %219

219:                                              ; preds = %218, %198, %148, %123, %99, %62
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @close(i32 %220)
  %222 = load i32, i32* %13, align 4
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %219, %19
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @bzero(%struct.nmreq*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @parse_nmr_config(i8*, %struct.nmreq*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq*) #1

declare dso_local i32 @ND(i8*, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
