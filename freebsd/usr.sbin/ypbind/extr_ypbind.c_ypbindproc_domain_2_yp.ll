; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ypbindproc_domain_2_yp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ypbindproc_domain_2_yp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypbind_resp = type { i8*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.ypbind_resp*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct._dom_binding = type { i8*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct._dom_binding*, i32, i64, i64 }

@ypbindproc_domain_2_yp.res = internal global %struct.ypbind_resp zeroinitializer, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@YPBIND_FAIL_VAL = common dso_local global i32 0, align 4
@YPBIND_ERR_NOSERV = common dso_local global i8* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Domain name '%s' has embedded slash -- rejecting.\00", align 1
@ypbindlist = common dso_local global %struct.ypbind_resp* null, align 8
@yp_restricted = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Running in restricted mode -- request to bind domain \22%s\22 rejected.\0A\00", align 1
@domains = common dso_local global i64 0, align 8
@MAX_DOMAINS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"domain limit (%d) exceeded\00", align 1
@YPBIND_ERR_RESC = common dso_local global i8* null, align 8
@YPMAXDOMAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"domain %s too long\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"malloc: %m\00", align 1
@YPVERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%s/%s.%ld\00", align 1
@BINDINGDIR = common dso_local global i8* null, align 8
@YPBIND_SUCC_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ypbind_resp* (i32*, i32*, i32*)* @ypbindproc_domain_2_yp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ypbind_resp* @ypbindproc_domain_2_yp(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ypbind_resp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._dom_binding*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = call i32 @bzero(%struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 80)
  %17 = load i32, i32* @YPBIND_FAIL_VAL, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 4), align 8
  %18 = load i8*, i8** @YPBIND_ERR_NOSERV, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 1), align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strchr(i32 %20, i8 signext 47)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @syslog(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

28:                                               ; preds = %3
  %29 = load %struct.ypbind_resp*, %struct.ypbind_resp** @ypbindlist, align 8
  %30 = bitcast %struct.ypbind_resp* %29 to %struct._dom_binding*
  store %struct._dom_binding* %30, %struct._dom_binding** %8, align 8
  br label %31

31:                                               ; preds = %44, %28
  %32 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %33 = icmp ne %struct._dom_binding* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %36 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i8* %37, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %46 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %45, i32 0, i32 5
  %47 = load %struct._dom_binding*, %struct._dom_binding** %46, align 8
  store %struct._dom_binding* %47, %struct._dom_binding** %8, align 8
  br label %31

48:                                               ; preds = %42, %31
  %49 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %50 = icmp eq %struct._dom_binding* %49, null
  br i1 %50, label %51, label %125

51:                                               ; preds = %48
  %52 = load i64, i64* @yp_restricted, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @LOG_NOTICE, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @syslog(i32 %55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

59:                                               ; preds = %51
  %60 = load i64, i64* @domains, align 8
  %61 = load i64, i64* @MAX_DOMAINS, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @LOG_WARNING, align 4
  %65 = load i64, i64* @MAX_DOMAINS, align 8
  %66 = call i32 (i32, i8*, ...) @syslog(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i8*, i8** @YPBIND_ERR_RESC, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 1), align 8
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strlen(i32 %70)
  %72 = load i64, i64* @YPMAXDOMAIN, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @syslog(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** @YPBIND_ERR_RESC, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 1), align 8
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

80:                                               ; preds = %68
  %81 = call %struct.ypbind_resp* @malloc(i32 80)
  %82 = bitcast %struct.ypbind_resp* %81 to %struct._dom_binding*
  store %struct._dom_binding* %82, %struct._dom_binding** %8, align 8
  %83 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %84 = icmp eq %struct._dom_binding* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @LOG_WARNING, align 4
  %87 = call i32 (i32, i8*, ...) @syslog(i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i8*, i8** @YPBIND_ERR_RESC, align 8
  store i8* %88, i8** getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 1), align 8
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

89:                                               ; preds = %80
  %90 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %91 = bitcast %struct._dom_binding* %90 to %struct.ypbind_resp*
  %92 = call i32 @bzero(%struct.ypbind_resp* %91, i32 80)
  %93 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %94 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strlcpy(i8* %95, i32 %97, i32 8)
  %99 = load i32, i32* @YPVERS, align 4
  %100 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %101 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %103 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %102, i32 0, i32 8
  store i64 0, i64* %103, align 8
  %104 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %105 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %104, i32 0, i32 7
  store i64 0, i64* %105, align 8
  %106 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %107 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %106, i32 0, i32 1
  store i32 -1, i32* %107, align 8
  %108 = load i8*, i8** @BINDINGDIR, align 8
  %109 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %110 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %113 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %108, i8* %111, i32 %114)
  %116 = call i32 @unlink(i8* %15)
  %117 = load %struct.ypbind_resp*, %struct.ypbind_resp** @ypbindlist, align 8
  %118 = bitcast %struct.ypbind_resp* %117 to %struct._dom_binding*
  %119 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %120 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %119, i32 0, i32 5
  store %struct._dom_binding* %118, %struct._dom_binding** %120, align 8
  %121 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %122 = bitcast %struct._dom_binding* %121 to %struct.ypbind_resp*
  store %struct.ypbind_resp* %122, %struct.ypbind_resp** @ypbindlist, align 8
  %123 = load i64, i64* @domains, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* @domains, align 8
  br label %125

125:                                              ; preds = %89, %48
  %126 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %127 = bitcast %struct._dom_binding* %126 to %struct.ypbind_resp*
  %128 = call i64 @ping(%struct.ypbind_resp* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

131:                                              ; preds = %125
  %132 = load i32, i32* @YPBIND_SUCC_VAL, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 4), align 8
  store i8* null, i8** getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 1), align 8
  %133 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %134 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = call i32 @memcpy(i32* getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 0, i32 1), i32* %136, i32 4)
  %138 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %139 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = call i32 @memcpy(i32* getelementptr inbounds (%struct.ypbind_resp, %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, i32 0, i32 3, i32 0, i32 0), i32* %140, i32 4)
  store %struct.ypbind_resp* @ypbindproc_domain_2_yp.res, %struct.ypbind_resp** %4, align 8
  store i32 1, i32* %11, align 4
  br label %142

142:                                              ; preds = %131, %130, %85, %74, %63, %54, %23
  %143 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load %struct.ypbind_resp*, %struct.ypbind_resp** %4, align 8
  ret %struct.ypbind_resp* %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.ypbind_resp*, i32) #2

declare dso_local i64 @strchr(i32, i8 signext) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local %struct.ypbind_resp* @malloc(i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @ping(%struct.ypbind_resp*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
