; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_find_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_find_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.addrinfo = type { i64, i64, i32, %struct.addrinfo* }

@status_info = common dso_local global %struct.TYPE_6__* null, align 8
@SM_MAXSTRLEN = common dso_local global i32 0, align 4
@status_file_len = common dso_local global i32 0, align 4
@status_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to extend status file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @find_host(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @getaddrinfo(i8* %15, i32* null, i32* null, %struct.addrinfo** %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  br label %19

19:                                               ; preds = %18, %2
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  br label %23

23:                                               ; preds = %147, %19
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %152

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @SM_MAXSTRLEN, align 4
  %35 = call i32 @strncasecmp(i8* %30, i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %8, align 8
  br label %152

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @getaddrinfo(i8* %50, i32* null, i32* null, %struct.addrinfo** %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  br label %54

54:                                               ; preds = %53, %47, %39
  %55 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %56 = icmp ne %struct.addrinfo* %55, null
  br i1 %56, label %57, label %125

57:                                               ; preds = %54
  %58 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %59 = icmp ne %struct.addrinfo* %58, null
  br i1 %59, label %60, label %125

60:                                               ; preds = %57
  %61 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %61, %struct.addrinfo** %12, align 8
  br label %62

62:                                               ; preds = %116, %60
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %67 = icmp ne %struct.addrinfo* %66, null
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ false, %62 ], [ %67, %65 ]
  br i1 %69, label %70, label %120

70:                                               ; preds = %68
  %71 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %71, %struct.addrinfo** %13, align 8
  br label %72

72:                                               ; preds = %111, %70
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %77 = icmp ne %struct.addrinfo* %76, null
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %115

80:                                               ; preds = %78
  %81 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memcmp(i32 %99, i32 %102, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %96
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %8, align 8
  br label %115

110:                                              ; preds = %96, %88, %80
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 3
  %114 = load %struct.addrinfo*, %struct.addrinfo** %113, align 8
  store %struct.addrinfo* %114, %struct.addrinfo** %13, align 8
  br label %72

115:                                              ; preds = %108, %78
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 3
  %119 = load %struct.addrinfo*, %struct.addrinfo** %118, align 8
  store %struct.addrinfo* %119, %struct.addrinfo** %12, align 8
  br label %62

120:                                              ; preds = %68
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = icmp ne %struct.TYPE_5__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %152

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %57, %54
  %126 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %127 = icmp ne %struct.addrinfo* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %130 = call i32 @freeaddrinfo(%struct.addrinfo* %129)
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = icmp ne %struct.TYPE_5__* %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %145, %struct.TYPE_5__** %7, align 8
  br label %146

146:                                              ; preds = %144, %139, %134, %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 1
  store %struct.TYPE_5__* %151, %struct.TYPE_5__** %6, align 8
  br label %23

152:                                              ; preds = %123, %37, %23
  %153 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %154 = icmp ne %struct.addrinfo* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %157 = call i32 @freeaddrinfo(%struct.addrinfo* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = icmp ne %struct.TYPE_5__* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %165, %struct.TYPE_5__** %3, align 8
  br label %221

166:                                              ; preds = %161
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %168 = icmp ne %struct.TYPE_5__* %167, null
  br i1 %168, label %211, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %176
  store %struct.TYPE_5__* %177, %struct.TYPE_5__** %7, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %179 = bitcast %struct.TYPE_5__* %178 to i8*
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %181 = bitcast %struct.TYPE_6__* %180 to i8*
  %182 = ptrtoint i8* %179 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = add i64 %184, 16
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @status_file_len, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %169
  %191 = load i32, i32* @status_fd, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load i32, i32* @SEEK_SET, align 4
  %195 = call i32 @lseek(i32 %191, i32 %193, i32 %194)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %201, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* @status_fd, align 4
  %199 = call i64 @write(i32 %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %190
  %202 = load i32, i32* @LOG_ERR, align 4
  %203 = call i32 @syslog(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %221

204:                                              ; preds = %197
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* @status_file_len, align 4
  br label %206

206:                                              ; preds = %204, %169
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_info, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %206, %166
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %213 = call i32 @memset(%struct.TYPE_5__* %212, i32 0, i32 16)
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** %4, align 8
  %218 = load i32, i32* @SM_MAXSTRLEN, align 4
  %219 = call i32 @strncpy(i8* %216, i8* %217, i32 %218)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %220, %struct.TYPE_5__** %3, align 8
  br label %221

221:                                              ; preds = %211, %201, %164
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %222
}

declare dso_local i64 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
