; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getaddrinfo/extr_getaddrinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getaddrinfo/extr_getaddrinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i8*, i64, i64, i32 }

@main.zero_addrinfo = internal constant %struct.addrinfo zeroinitializer, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cf:nNp:Ps:t:\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid address family: %s\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid protocol: %s\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid socket type: %s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"protocol already specified\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"canonname %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"printf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast %struct.addrinfo* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.addrinfo* @main.zero_addrinfo to i8*), i64 40, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @setprogname(i8* %16)
  %18 = load i32, i32* @AF_UNSPEC, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %85, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %83 [
    i32 99, label %30
    i32 102, label %35
    i32 110, label %45
    i32 78, label %50
    i32 115, label %55
    i32 112, label %57
    i32 80, label %67
    i32 116, label %72
    i32 63, label %82
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @AI_CANONNAME, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  br label %85

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  %38 = call i32 @parse_af(i8* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %40, %35
  br label %85

45:                                               ; preds = %28
  %46 = load i32, i32* @AI_NUMERICHOST, align 4
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  br label %85

50:                                               ; preds = %28
  %51 = load i32, i32* @AI_NUMERICSERV, align 4
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  br label %85

55:                                               ; preds = %28
  %56 = load i8*, i8** @optarg, align 8
  store i8* %56, i8** %9, align 8
  br label %85

57:                                               ; preds = %28
  %58 = load i8*, i8** @optarg, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  %60 = call i32 @parse_protocol(i8* %58, i64* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %62, %57
  br label %85

67:                                               ; preds = %28
  %68 = load i32, i32* @AI_PASSIVE, align 4
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %85

72:                                               ; preds = %28
  %73 = load i8*, i8** @optarg, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  %75 = call i32 @parse_socktype(i8* %73, i64* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %77, %72
  br label %85

82:                                               ; preds = %28
  br label %83

83:                                               ; preds = %28, %82
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %81, %67, %66, %55, %50, %45, %44, %30
  br label %23

86:                                               ; preds = %23
  %87 = load i64, i64* @optind, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load i64, i64* @optind, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  store i8** %94, i8*** %5, align 8
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %108, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AI_PASSIVE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100, %97
  %107 = call i32 (...) @usage()
  br label %108

108:                                              ; preds = %106, %100, %86
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load i8*, i8** %9, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 47)
  store i8* %120, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %128 = call i32 (...) @usage()
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i8*, i8** %12, align 8
  store i8 0, i8* %130, align 1
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  %135 = call i32 @parse_protocol(i8* %133, i64* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %129
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  %140 = call i32 (...) @usage()
  br label %141

141:                                              ; preds = %137, %129
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @getaddrinfo(i8* %144, i8* %145, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @gai_strerror(i32 %150)
  %152 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %143
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @AI_CANONNAME, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %153
  %160 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %161 = icmp ne %struct.addrinfo* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %162
  br label %171

171:                                              ; preds = %170, %159, %153
  %172 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %173 = call i32 @printaddrinfo(%struct.addrinfo* %172)
  %174 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %175 = call i32 @freeaddrinfo(%struct.addrinfo* %174)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setprogname(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @parse_af(i8*, i32*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @parse_protocol(i8*, i64*) #2

declare dso_local i32 @parse_socktype(i8*, i64*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i64 @printf(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @printaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
