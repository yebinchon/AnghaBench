; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbupdate.c_ypmap_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbupdate.c_ypmap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_14__ = type { i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"YP_LAST_MODIFIED\00", align 1
@ERR_ACCESS = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ERR_DBASE = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4
@ERR_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown update command: (%d)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to update timestamp in %s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ypmap_update(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [32 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %23 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i32 0, i32* %22, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 64)
  store i8* %26, i8** %21, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @ERR_ACCESS, align 4
  store i32 %29, i32* %8, align 4
  br label %144

30:                                               ; preds = %7
  %31 = load i8*, i8** %21, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %21, align 8
  %33 = load i8*, i8** %21, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = call %struct.TYPE_15__* @yp_open_db_rw(i8* %33, i8* %34, i32 %35)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %16, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @ERR_DBASE, align 4
  store i32 %40, i32* %8, align 4
  br label %144

41:                                               ; preds = %30
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %91 [
    i32 130, label %51
    i32 129, label %59
    i32 128, label %67
    i32 131, label %75
  ]

51:                                               ; preds = %41
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %53 = call i32 @yp_del_record(%struct.TYPE_15__* %52, %struct.TYPE_14__* %17)
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* @YP_TRUE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %22, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %94

59:                                               ; preds = %41
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %61 = call i32 @yp_put_record(%struct.TYPE_15__* %60, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32 0)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* @YP_TRUE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %22, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %94

67:                                               ; preds = %41
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %69 = call i32 @yp_put_record(%struct.TYPE_15__* %68, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32 1)
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* @YP_TRUE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %22, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %94

75:                                               ; preds = %41
  %76 = load i8*, i8** %21, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @yp_get_record(i8* %76, i8* %77, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32 0)
  %79 = load i32, i32* @YP_TRUE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @ERR_KEY, align 4
  store i32 %82, i32* %22, align 4
  br label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %85 = call i32 @yp_put_record(%struct.TYPE_15__* %84, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32 1)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @YP_TRUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %94

91:                                               ; preds = %41
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %90, %81, %74, %66, %58
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %102 = call i32 %100(%struct.TYPE_15__* %101)
  %103 = load i32, i32* %22, align 4
  store i32 %103, i32* %8, align 4
  br label %144

104:                                              ; preds = %94
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %106 = call i64 @time(i32* null)
  %107 = trunc i64 %106 to i32
  %108 = call i32 @snprintf(i8* %105, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = call i8* @strlen(i8* %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %113, i32* %114, align 8
  %115 = bitcast [32 x i8]* %20 to i8*
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %118 = call i8* @strlen(i8* %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %122 = call i32 @yp_put_record(%struct.TYPE_15__* %121, %struct.TYPE_14__* %17, %struct.TYPE_14__* %18, i32 1)
  %123 = load i32, i32* @YP_TRUE, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %104
  %126 = load i8*, i8** %21, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %126, i8* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %133 = call i32 %131(%struct.TYPE_15__* %132)
  %134 = load i32, i32* @ERR_DBASE, align 4
  store i32 %134, i32* %8, align 4
  br label %144

135:                                              ; preds = %104
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %140 = call i32 %138(%struct.TYPE_15__* %139)
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %21, align 8
  %143 = call i32 @yp_domake(i8* %141, i8* %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %135, %125, %97, %39, %28
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.TYPE_15__* @yp_open_db_rw(i8*, i8*, i32) #2

declare dso_local i32 @yp_del_record(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @yp_put_record(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @yp_get_record(i8*, i8*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @yp_domake(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
