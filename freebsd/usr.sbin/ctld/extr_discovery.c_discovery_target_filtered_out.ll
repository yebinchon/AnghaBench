; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_discovery_target_filtered_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_discovery_target_filtered_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.connection = type { i32*, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.portal_group* }
%struct.portal_group = type { i64, %struct.TYPE_4__* }
%struct.port = type { %struct.auth_group*, %struct.target* }
%struct.auth_group = type { i64 }
%struct.target = type { i32, %struct.auth_group* }
%struct.auth = type { i32 }

@PG_FILTER_UNKNOWN = common dso_local global %struct.TYPE_4__* null, align 8
@PG_FILTER_PORTAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"initiator does not match initiator portals allowed for target \22%s\22; skipping\00", align 1
@PG_FILTER_PORTAL_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"initiator does not match initiator names allowed for target \22%s\22; skipping\00", align 1
@PG_FILTER_PORTAL_NAME_AUTH = common dso_local global i64 0, align 8
@AG_TYPE_NO_AUTHENTICATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"initiator didn't authenticate, but target \22%s\22 requires CHAP; skipping\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"CHAP user \22%s\22 doesn't match target \22%s\22; skipping\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"password for CHAP user \22%s\22 doesn't match target \22%s\22; skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.port*)* @discovery_target_filtered_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discovery_target_filtered_out(%struct.connection* %0, %struct.port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.port*, align 8
  %6 = alloca %struct.auth_group*, align 8
  %7 = alloca %struct.portal_group*, align 8
  %8 = alloca %struct.target*, align 8
  %9 = alloca %struct.auth*, align 8
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.port* %1, %struct.port** %5, align 8
  %11 = load %struct.port*, %struct.port** %5, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 1
  %13 = load %struct.target*, %struct.target** %12, align 8
  store %struct.target* %13, %struct.target** %8, align 8
  %14 = load %struct.port*, %struct.port** %5, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 0
  %16 = load %struct.auth_group*, %struct.auth_group** %15, align 8
  store %struct.auth_group* %16, %struct.auth_group** %6, align 8
  %17 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %18 = icmp eq %struct.auth_group* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.target*, %struct.target** %8, align 8
  %21 = getelementptr inbounds %struct.target, %struct.target* %20, i32 0, i32 1
  %22 = load %struct.auth_group*, %struct.auth_group** %21, align 8
  store %struct.auth_group* %22, %struct.auth_group** %6, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.portal_group*, %struct.portal_group** %27, align 8
  store %struct.portal_group* %28, %struct.portal_group** %7, align 8
  %29 = load %struct.portal_group*, %struct.portal_group** %7, align 8
  %30 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PG_FILTER_UNKNOWN, align 8
  %33 = icmp ne %struct.TYPE_4__* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.portal_group*, %struct.portal_group** %7, align 8
  %37 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PG_FILTER_PORTAL, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %23
  %42 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %43 = load %struct.connection*, %struct.connection** %4, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 3
  %45 = call i64 @auth_portal_check(%struct.auth_group* %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.target*, %struct.target** %8, align 8
  %49 = getelementptr inbounds %struct.target, %struct.target* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 (i8*, i32*, ...) @log_debugx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32* %52)
  store i32 1, i32* %3, align 4
  br label %149

54:                                               ; preds = %41, %23
  %55 = load %struct.portal_group*, %struct.portal_group** %7, align 8
  %56 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PG_FILTER_PORTAL_NAME, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %62 = load %struct.connection*, %struct.connection** %4, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @auth_name_check(%struct.auth_group* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.target*, %struct.target** %8, align 8
  %69 = getelementptr inbounds %struct.target, %struct.target* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 (i8*, i32*, ...) @log_debugx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  store i32 1, i32* %3, align 4
  br label %149

74:                                               ; preds = %60, %54
  %75 = load %struct.portal_group*, %struct.portal_group** %7, align 8
  %76 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PG_FILTER_PORTAL_NAME_AUTH, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %148

80:                                               ; preds = %74
  %81 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %82 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AG_TYPE_NO_AUTHENTICATION, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %148

86:                                               ; preds = %80
  %87 = load %struct.connection*, %struct.connection** %4, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.portal_group*, %struct.portal_group** %7, align 8
  %93 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AG_TYPE_NO_AUTHENTICATION, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.target*, %struct.target** %8, align 8
  %102 = getelementptr inbounds %struct.target, %struct.target* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 (i8*, i32*, ...) @log_debugx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32* %105)
  store i32 1, i32* %3, align 4
  br label %149

107:                                              ; preds = %86
  %108 = load %struct.connection*, %struct.connection** %4, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %115 = load %struct.connection*, %struct.connection** %4, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call %struct.auth* @auth_find(%struct.auth_group* %114, i32* %117)
  store %struct.auth* %118, %struct.auth** %9, align 8
  %119 = load %struct.auth*, %struct.auth** %9, align 8
  %120 = icmp eq %struct.auth* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %107
  %122 = load %struct.connection*, %struct.connection** %4, align 8
  %123 = getelementptr inbounds %struct.connection, %struct.connection* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.target*, %struct.target** %8, align 8
  %126 = getelementptr inbounds %struct.target, %struct.target* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, i32*, ...) @log_debugx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32* %124, i32 %127)
  store i32 1, i32* %3, align 4
  br label %149

129:                                              ; preds = %107
  %130 = load %struct.connection*, %struct.connection** %4, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.auth*, %struct.auth** %9, align 8
  %134 = getelementptr inbounds %struct.auth, %struct.auth* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @chap_authenticate(i32* %132, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %129
  %140 = load %struct.connection*, %struct.connection** %4, align 8
  %141 = getelementptr inbounds %struct.connection, %struct.connection* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.target*, %struct.target** %8, align 8
  %144 = getelementptr inbounds %struct.target, %struct.target* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32*, ...) @log_debugx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32* %142, i32 %145)
  store i32 1, i32* %3, align 4
  br label %149

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %80, %74
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %139, %121, %91, %67, %47
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @auth_portal_check(%struct.auth_group*, i32*) #1

declare dso_local i32 @log_debugx(i8*, i32*, ...) #1

declare dso_local i64 @auth_name_check(%struct.auth_group*, i32) #1

declare dso_local %struct.auth* @auth_find(%struct.auth_group*, i32*) #1

declare dso_local i32 @chap_authenticate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
