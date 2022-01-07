; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_pname_to_uid_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_pname_to_uid_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.svc_req = type { i32 }
%struct.passwd = type { i32, i32 }

@gssd_pname_to_uid_1_svc.buflen_hint = internal global i64 1024, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@NGROUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"gssd_pname_to_uid: mapped to uid=%d, gid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"gssd_pname_to_uid: mapped to uid=%d, but no groups\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"gssd_pname_to_uid: failed major=0x%x minor=%d\0A\00", align 1
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"gssd_pname_to_uid: no name\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssd_pname_to_uid_1_svc(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.svc_req* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.passwd, align 4
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.svc_req* %2, %struct.svc_req** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gssd_find_resource(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = call i32 @memset(%struct.TYPE_8__* %22, i32 0, i32 48)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %167

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gss_pname_to_uid(i64* %28, i64 %29, i32 %32, i64* %8)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GSS_S_COMPLETE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %156

41:                                               ; preds = %26
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @gssd_pname_to_uid_1_svc.buflen_hint, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %80, %41
  store %struct.passwd* null, %struct.passwd** %12, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %47, i8** %10, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ugt i64 %48, 1024
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %81

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @getpwuid_r(i64 %58, %struct.passwd* %11, i8* %59, i64 %60, %struct.passwd** %12)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ERANGE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %81

66:                                               ; preds = %57
  %67 = load i64, i64* %13, align 8
  %68 = icmp ugt i64 %67, 1024
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1024
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @gssd_pname_to_uid_1_svc.buflen_hint, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* @gssd_pname_to_uid_1_svc.buflen_hint, align 8
  br label %80

80:                                               ; preds = %78, %72
  br label %46

81:                                               ; preds = %65, %56
  %82 = load %struct.passwd*, %struct.passwd** %12, align 8
  %83 = icmp ne %struct.passwd* %82, null
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load i32, i32* @NGROUPS, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* @NGROUPS, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %16, align 8
  %89 = alloca i32, i64 %87, align 16
  store i64 %87, i64* %17, align 8
  %90 = load %struct.passwd*, %struct.passwd** %12, align 8
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.passwd*, %struct.passwd** %12, align 8
  %96 = getelementptr inbounds %struct.passwd, %struct.passwd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.passwd*, %struct.passwd** %12, align 8
  %99 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @getgrouplist(i32 %97, i32 %100, i32* %89, i32* %15)
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32* @mem_alloc(i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32* %110, i32** %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(i32* %117, i32* %89, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %146

132:                                              ; preds = %81
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 65534, i32* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %132, %84
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i64, i64* %13, align 8
  %151 = icmp ugt i64 %150, 1024
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %149, %146
  br label %166

156:                                              ; preds = %26
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %164)
  br label %166

166:                                              ; preds = %156, %155
  br label %174

167:                                              ; preds = %3
  %168 = load i64, i64* @GSS_S_BAD_NAME, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %167, %166
  %175 = load i32, i32* @TRUE, align 4
  ret i32 %175
}

declare dso_local i64 @gssd_find_resource(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @gss_pname_to_uid(i64*, i64, i32, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @getpwuid_r(i64, %struct.passwd*, i8*, i64, %struct.passwd**) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getgrouplist(i32, i32, i32*, i32*) #1

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gssd_verbose_out(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
