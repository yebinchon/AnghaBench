; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_start_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_nfsd_args = type { i8*, i64, i64 }
%struct.addrinfo = type { i8*, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nfs@%s\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@nfsdcnt_set = common dso_local global i64 0, align 8
@nfsdcnt = common dso_local global i64 0, align 8
@minthreads_set = common dso_local global i64 0, align 8
@minthreads = common dso_local global i64 0, align 8
@maxthreads_set = common dso_local global i64 0, align 8
@maxthreads = common dso_local global i64 0, align 8
@nfssvc_nfsd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAUTH = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"No gssd, using AUTH_SYS only\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad -p option, cannot run\00", align 1
@masterpid = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"nfssvc: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nfsd_nfsd_args*, i8*)* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server(i32 %0, %struct.nfsd_nfsd_args* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_nfsd_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo, align 8
  store i32 %0, i32* %4, align 4
  store %struct.nfsd_nfsd_args* %1, %struct.nfsd_nfsd_args** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %16 = add nsw i32 %15, 5
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %9, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = trunc i64 %22 to i32
  %28 = call i32 @gethostname(i8* %23, i32 %27)
  br label %33

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = trunc i64 %22 to i32
  %32 = call i32 @strlcpy(i8* %23, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = trunc i64 %17 to i32
  %35 = call i32 @snprintf(i8* %19, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23)
  %36 = call i8* @strchr(i8* %23, i8 signext 46)
  store i8* %36, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %38, %33
  %45 = bitcast %struct.addrinfo* %14 to i8*
  %46 = call i32 @memset(i8* %45, i32 0, i32 16)
  %47 = load i32, i32* @AI_CANONNAME, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = call i32 @getaddrinfo(i8* %23, i32* null, %struct.addrinfo* %14, %struct.addrinfo** %13)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 46)
  store i8* %61, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = trunc i64 %17 to i32
  %71 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @snprintf(i8* %19, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %69, %63, %57, %52
  %76 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %77 = call i32 @freeaddrinfo(%struct.addrinfo* %76)
  br label %78

78:                                               ; preds = %75, %44
  br label %79

79:                                               ; preds = %78, %38
  %80 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %81 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %80, i32 0, i32 0
  store i8* %19, i8** %81, align 8
  %82 = load i64, i64* @nfsdcnt_set, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i64, i64* @nfsdcnt, align 8
  %86 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %87 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %89 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %88, i32 0, i32 1
  store i64 %85, i64* %89, align 8
  br label %127

90:                                               ; preds = %79
  %91 = load i64, i64* @minthreads_set, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @minthreads, align 8
  br label %97

95:                                               ; preds = %90
  %96 = call i64 (...) @get_tuned_nfsdcount()
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %100 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* @maxthreads_set, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @maxthreads, align 8
  br label %109

105:                                              ; preds = %97
  %106 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %107 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi i64 [ %104, %103 ], [ %108, %105 ]
  %111 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %112 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %114 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %117 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %122 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %125 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %109
  br label %127

127:                                              ; preds = %126, %84
  %128 = load i32, i32* @nfssvc_nfsd, align 4
  %129 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %130 = call i32 @nfssvc(i32 %128, %struct.nfsd_nfsd_args* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, i64* @errno, align 8
  %135 = load i64, i64* @EAUTH, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* @LOG_ERR, align 4
  %139 = call i32 @syslog(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %140 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %140, align 16
  %141 = load i32, i32* @nfssvc_nfsd, align 4
  %142 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %5, align 8
  %143 = call i32 @nfssvc(i32 %141, %struct.nfsd_nfsd_args* %142)
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %137, %133, %127
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load i64, i64* @errno, align 8
  %149 = load i64, i64* @ENXIO, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* @LOG_ERR, align 4
  %153 = call i32 @syslog(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i64, i64* @masterpid, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i64, i64* @masterpid, align 8
  %161 = load i32, i32* @SIGUSR1, align 4
  %162 = call i32 @kill(i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %156, %151
  br label %167

164:                                              ; preds = %147
  %165 = load i32, i32* @LOG_ERR, align 4
  %166 = call i32 @syslog(i32 %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %163
  store i32 1, i32* %9, align 4
  br label %168

168:                                              ; preds = %167, %144
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @nfsd_exit(i32 %172)
  br label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @exit(i32 %175) #4
  unreachable

177:                                              ; preds = %171
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i64 @get_tuned_nfsdcount(...) #2

declare dso_local i32 @nfssvc(i32, %struct.nfsd_nfsd_args*) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @kill(i64, i32) #2

declare dso_local i32 @nfsd_exit(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
