; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.hostlist = type { i8*, %struct.hostlist* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"d:j:p:h:t:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@yppush_domain = common dso_local global i8* null, align 8
@yppush_jobs = common dso_local global i32 0, align 4
@yp_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@yppush_timeout = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@yppush_mapname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"no domain specified and NIS not running\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to get name of local host: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"YP_MASTER_NAME\00", align 1
@YP_TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"couldn't open %s map: %s\00", align 1
@skip_master = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"warning: this host is not the master for %s\00", align 1
@yppush_master = common dso_local global i8* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@yppush_transid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"ypservers\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"all jobs dispatched\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hostlist*, align 8
  %12 = alloca %struct.hostlist*, align 8
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store %struct.hostlist* null, %struct.hostlist** %11, align 8
  br label %18

18:                                               ; preds = %61, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %59 [
    i32 100, label %25
    i32 106, label %27
    i32 112, label %35
    i32 104, label %37
    i32 116, label %53
    i32 118, label %56
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @yppush_domain, align 8
  br label %61

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @atoi(i8* %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @yppush_jobs, align 4
  %31 = load i32, i32* @yppush_jobs, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* @yppush_jobs, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %61

35:                                               ; preds = %23
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @yp_dir, align 8
  br label %61

37:                                               ; preds = %23
  %38 = call i8* @malloc(i32 16)
  %39 = bitcast i8* %38 to %struct.hostlist*
  store %struct.hostlist* %39, %struct.hostlist** %12, align 8
  %40 = icmp eq %struct.hostlist* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @yppush_exit(i32 1)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i8* @strdup(i8* %45)
  %47 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %48 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hostlist*, %struct.hostlist** %11, align 8
  %50 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %51 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %50, i32 0, i32 1
  store %struct.hostlist* %49, %struct.hostlist** %51, align 8
  %52 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  store %struct.hostlist* %52, %struct.hostlist** %11, align 8
  br label %61

53:                                               ; preds = %23
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i8* @atoi(i8* %54)
  store i8* %55, i8** @yppush_timeout, align 8
  br label %61

56:                                               ; preds = %23
  %57 = load i32, i32* @verbose, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @verbose, align 4
  br label %61

59:                                               ; preds = %23
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %56, %53, %44, %35, %34, %25
  br label %18

62:                                               ; preds = %18
  %63 = load i64, i64* @optind, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i64, i64* @optind, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68
  store i8** %70, i8*** %5, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** @yppush_mapname, align 8
  %74 = load i8*, i8** @yppush_mapname, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = call i32 (...) @usage()
  br label %78

78:                                               ; preds = %76, %62
  %79 = load i8*, i8** @yppush_domain, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = call i32 @yp_get_default_domain(i8** %13)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = call i32 @_yp_check(i8** %13)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 (...) @usage()
  br label %92

90:                                               ; preds = %84, %81
  %91 = call i32 @yp_get_default_domain(i8** @yppush_domain)
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92, %78
  %94 = trunc i64 %15 to i32
  %95 = call i64 @gethostname(i8* %17, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @strerror(i32 %98)
  %100 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = call i32 @yppush_exit(i32 1)
  br label %102

102:                                              ; preds = %97, %93
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 14, i32* %104, align 8
  %105 = load i8*, i8** @yppush_domain, align 8
  %106 = load i8*, i8** @yppush_mapname, align 8
  %107 = call i64 @yp_get_record(i8* %105, i8* %106, %struct.TYPE_4__* %7, %struct.TYPE_4__* %8, i32 1)
  %108 = load i64, i64* @YP_TRUE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i8*, i8** @yppush_mapname, align 8
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @strerror(i32 %112)
  %114 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %111, i32 %113)
  %115 = call i32 @yppush_exit(i32 1)
  br label %116

116:                                              ; preds = %110, %102
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @strncasecmp(i8* %17, i8* %118, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.hostlist*, %struct.hostlist** %11, align 8
  %125 = icmp eq %struct.hostlist* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* @skip_master, align 4
  br label %127

127:                                              ; preds = %126, %123
  br label %131

128:                                              ; preds = %116
  %129 = load i8*, i8** @yppush_mapname, align 8
  %130 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %127
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  %135 = call i8* @malloc(i32 %134)
  store i8* %135, i8** @yppush_master, align 8
  %136 = load i8*, i8** @yppush_master, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @strncpy(i8* %136, i8* %138, i32 %140)
  %142 = load i8*, i8** @yppush_master, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i32, i32* @SIGTERM, align 4
  %148 = load i32, i32* @handler, align 4
  %149 = call i32 @signal(i32 %147, i32 %148)
  %150 = load i32, i32* @SIGINT, align 4
  %151 = load i32, i32* @handler, align 4
  %152 = call i32 @signal(i32 %150, i32 %151)
  %153 = call i32 @time(i32* null)
  store i32 %153, i32* @yppush_transid, align 4
  %154 = load %struct.hostlist*, %struct.hostlist** %11, align 8
  %155 = icmp ne %struct.hostlist* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %131
  %157 = load %struct.hostlist*, %struct.hostlist** %11, align 8
  store %struct.hostlist* %157, %struct.hostlist** %12, align 8
  br label %158

158:                                              ; preds = %161, %156
  %159 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %160 = icmp ne %struct.hostlist* %159, null
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i64, i64* @YP_TRUE, align 8
  %163 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %164 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %167 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strlen(i8* %168)
  %170 = call i32 @yppush_foreach(i64 %162, i32* null, i32 0, i8* %165, i32 %169, i32* null)
  %171 = load %struct.hostlist*, %struct.hostlist** %12, align 8
  %172 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %171, i32 0, i32 1
  %173 = load %struct.hostlist*, %struct.hostlist** %172, align 8
  store %struct.hostlist* %173, %struct.hostlist** %12, align 8
  br label %158

174:                                              ; preds = %158
  br label %178

175:                                              ; preds = %131
  %176 = load i8*, i8** @yppush_domain, align 8
  %177 = call i32 @ypxfr_get_map(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 (i64, i32*, i32, i8*, i32, i32*)* @yppush_foreach)
  br label %178

178:                                              ; preds = %175, %174
  %179 = load i32, i32* @verbose, align 4
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %178
  %184 = call i32 @yppush_exit(i32 0)
  %185 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i32 @yppush_exit(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @yp_get_default_domain(i8**) #2

declare dso_local i32 @_yp_check(i8**) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @yp_get_record(i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @yppush_foreach(i64, i32*, i32, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ypxfr_get_map(i8*, i8*, i8*, i32 (i64, i32*, i32, i8*, i32, i32*)*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
