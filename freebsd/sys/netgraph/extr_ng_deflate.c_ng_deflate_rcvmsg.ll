; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_deflate.c_ng_deflate_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_deflate.c_ng_deflate_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.ng_deflate_config, %struct.TYPE_10__, i32 }
%struct.ng_deflate_config = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.ng_mesg = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@NGM_DEFLATE_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"deflateInit2: error %d, %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"inflateInit2: error %d, %s\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_deflate_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_deflate_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_deflate_config*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_9__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %17 = call i32 @NGI_GET_MSG(i32 %15, %struct.ng_mesg* %16)
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NGM_DEFLATE_COOKIE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @ERROUT(i32 %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %206 [
    i32 131, label %32
    i32 128, label %169
    i32 129, label %172
    i32 132, label %172
    i32 130, label %172
  ]

32:                                               ; preds = %27
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ng_deflate_config*
  store %struct.ng_deflate_config* %36, %struct.ng_deflate_config** %11, align 8
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %38 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 8
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @ERROUT(i32 %44)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %48 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %53 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %58 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 15
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @ERROUT(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %68

65:                                               ; preds = %46
  %66 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %67 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = call i32 @deflateEnd(%struct.TYPE_10__* %81)
  br label %87

83:                                               ; preds = %74
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = call i32 @inflateEnd(%struct.TYPE_10__* %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %68
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %95 = bitcast %struct.ng_deflate_config* %93 to i8*
  %96 = bitcast %struct.ng_deflate_config* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %162

102:                                              ; preds = %91
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %102
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %114 = load i32, i32* @Z_DEFLATED, align 4
  %115 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %116 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 0, %117
  %119 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %120 = call i32 @deflateInit2(%struct.TYPE_10__* %112, i32 %113, i32 %114, i32 %118, i32 8, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* @Z_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %110
  %124 = load i32, i32* @LOG_NOTICE, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @log(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @ERROUT(i32 %134)
  br label %136

136:                                              ; preds = %123, %110
  br label %161

137:                                              ; preds = %102
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load %struct.ng_deflate_config*, %struct.ng_deflate_config** %11, align 8
  %141 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 0, %142
  %144 = call i32 @inflateInit2(%struct.TYPE_10__* %139, i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* @Z_OK, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %137
  %148 = load i32, i32* @LOG_NOTICE, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @log(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.ng_deflate_config, %struct.ng_deflate_config* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = call i32 @ERROUT(i32 %158)
  br label %160

160:                                              ; preds = %147, %137
  br label %161

161:                                              ; preds = %160, %136
  br label %162

162:                                              ; preds = %161, %91
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @NGI_RETADDR(i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %208

169:                                              ; preds = %27
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @ng_deflate_reset_req(i32 %170)
  br label %208

172:                                              ; preds = %27, %27, %27
  %173 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %174 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 132
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %180 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %181 = load i32, i32* @M_NOWAIT, align 4
  %182 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %179, %struct.ng_mesg* %180, i32 4, i32 %181)
  %183 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %184 = icmp eq %struct.ng_mesg* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = call i32 @ERROUT(i32 %186)
  br label %188

188:                                              ; preds = %185, %178
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %192 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @bcopy(i32* %190, i64 %193, i32 4)
  br label %195

195:                                              ; preds = %188, %172
  %196 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %197 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 129
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = call i32 @bzero(i32* %203, i32 4)
  br label %205

205:                                              ; preds = %201, %195
  br label %208

206:                                              ; preds = %27
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %206, %205, %169, %162
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %214 = call i32 @NG_RESPOND_MSG(i32 %210, i32 %211, i32 %212, %struct.ng_mesg* %213)
  %215 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %216 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %215)
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_9__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_10__*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @deflateInit2(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @NGI_RETADDR(i32) #1

declare dso_local i32 @ng_deflate_reset_req(i32) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
