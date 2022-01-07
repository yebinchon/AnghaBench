; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_rfc3164.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_rfc3164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.filed = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iovlist = type { i32 }

@RFC3164_DATELEN = common dso_local global i32 0, align 4
@RFC3164_DATEFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@LocalHostName = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c" Forwarded from \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\0D\0A\07Message from syslogd@\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" ...\0D\0A\00", align 1
@LogFacPri = common dso_local global i32 0, align 4
@LOG_FACMASK = common dso_local global i32 0, align 4
@facilitynames = common dso_local global %struct.TYPE_6__* null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@prioritynames = common dso_local global %struct.TYPE_6__* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filed*, i8*, i8*, i8*, i8*, i32)* @fprintlog_rfc3164 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprintlog_rfc3164(%struct.filed* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.filed*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iovlist, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [5 x i8], align 1
  %20 = alloca [5 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.filed* %0, %struct.filed** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* @RFC3164_DATELEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = trunc i64 %25 to i32
  %29 = load i32, i32* @RFC3164_DATEFMT, align 4
  %30 = load %struct.filed*, %struct.filed** %7, align 8
  %31 = getelementptr inbounds %struct.filed, %struct.filed* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i64 @strftime(i8* %27, i32 %28, i32 %29, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %36, align 16
  br label %37

37:                                               ; preds = %35, %6
  %38 = call i32 @iovlist_init(%struct.iovlist* %13)
  %39 = load %struct.filed*, %struct.filed** %7, align 8
  %40 = getelementptr inbounds %struct.filed, %struct.filed* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %71 [
    i32 129, label %42
    i32 128, label %64
  ]

42:                                               ; preds = %37
  %43 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %45 = load %struct.filed*, %struct.filed** %7, align 8
  %46 = getelementptr inbounds %struct.filed, %struct.filed* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %44, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %50 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %49)
  %51 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %27)
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @LocalHostName, align 4
  %55 = call i32 @strcasecmp(i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %59)
  %61 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %42
  %63 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %164

64:                                               ; preds = %37
  %65 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %66)
  %68 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %69 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %27)
  %70 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %164

71:                                               ; preds = %37
  %72 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %27)
  %73 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @LogFacPri, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %160

76:                                               ; preds = %71
  %77 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.filed*, %struct.filed** %7, align 8
  %79 = getelementptr inbounds %struct.filed, %struct.filed* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LOG_FACMASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %15, align 4
  store i32 0, i32* %21, align 4
  %83 = load i32, i32* @LogFacPri, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %108

85:                                               ; preds = %76
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @facilitynames, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %14, align 8
  br label %87

87:                                               ; preds = %104, %85
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %101)
  store i32 1, i32* %21, align 4
  br label %107

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 1
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %14, align 8
  br label %87

107:                                              ; preds = %98, %87
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @LOG_FAC(i32 %113)
  %115 = call i32 @snprintf(i8* %112, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %117 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %120 = load %struct.filed*, %struct.filed** %7, align 8
  %121 = getelementptr inbounds %struct.filed, %struct.filed* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @LOG_PRI(i32 %122)
  store i32 %123, i32* %16, align 4
  store i32 0, i32* %22, align 4
  %124 = load i32, i32* @LogFacPri, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %149

126:                                              ; preds = %118
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prioritynames, align 8
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %14, align 8
  br label %128

128:                                              ; preds = %145, %126
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %142)
  store i32 1, i32* %22, align 4
  br label %148

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 1
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %14, align 8
  br label %128

148:                                              ; preds = %139, %128
  br label %149

149:                                              ; preds = %148, %118
  %150 = load i32, i32* %22, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @snprintf(i8* %153, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %157 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %156)
  br label %158

158:                                              ; preds = %152, %149
  %159 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %71
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %161)
  %163 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %64, %62
  %165 = load i8*, i8** %9, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %168)
  %170 = load i8*, i8** %10, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %174)
  %176 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %167
  %178 = call i32 @iovlist_append(%struct.iovlist* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %164
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @iovlist_append(%struct.iovlist* %13, i8* %180)
  %182 = load %struct.filed*, %struct.filed** %7, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @fprintlog_write(%struct.filed* %182, %struct.iovlist* %13, i32 %183)
  %185 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %185)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strftime(i8*, i32, i32, i32*) #2

declare dso_local i32 @iovlist_init(%struct.iovlist*) #2

declare dso_local i32 @iovlist_append(%struct.iovlist*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strcasecmp(i8*, i32) #2

declare dso_local i32 @LOG_FAC(i32) #2

declare dso_local i32 @LOG_PRI(i32) #2

declare dso_local i32 @fprintlog_write(%struct.filed*, %struct.iovlist*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
