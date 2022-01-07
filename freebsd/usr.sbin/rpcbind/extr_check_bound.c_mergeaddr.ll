; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_mergeaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_mergeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdlist = type { %struct.TYPE_9__*, %struct.fdlist* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.svc_dg_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@fdhead = common dso_local global %struct.fdlist* null, align 8
@FALSE = common dso_local global i64 0, align 8
@nullstring = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"taddr2uaddr failed for %s\00", align 1
@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mergeaddr(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fdlist*, align 8
  %11 = alloca %struct.svc_dg_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.fdlist*, %struct.fdlist** @fdhead, align 8
  store %struct.fdlist* %16, %struct.fdlist** %10, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %19 = icmp ne %struct.fdlist* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %22 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %35

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %33 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %32, i32 0, i32 1
  %34 = load %struct.fdlist*, %struct.fdlist** %33, align 8
  store %struct.fdlist* %34, %struct.fdlist** %10, align 8
  br label %17

35:                                               ; preds = %29, %17
  %36 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %37 = icmp eq %struct.fdlist* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* null, i8** %5, align 8
  br label %104

39:                                               ; preds = %35
  %40 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @check_bound(%struct.fdlist* %40, i8* %41)
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i8*, i8** @nullstring, align 8
  store i8* %46, i8** %5, align 8
  br label %104

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.svc_dg_data*
  store %struct.svc_dg_data* %51, %struct.svc_dg_data** %11, align 8
  %52 = load %struct.svc_dg_data*, %struct.svc_dg_data** %11, align 8
  %53 = icmp ne %struct.svc_dg_data* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.svc_dg_data*, %struct.svc_dg_data** %11, align 8
  %56 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %62 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load %struct.svc_dg_data*, %struct.svc_dg_data** %11, align 8
  %65 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %64, i32 0, i32 0
  %66 = call i8* @taddr2uaddr(%struct.TYPE_9__* %63, %struct.TYPE_10__* %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %15, align 8
  br label %82

68:                                               ; preds = %54, %47
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %12, align 8
  br label %81

73:                                               ; preds = %68
  %74 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %75 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = call %struct.TYPE_10__* @svc_getrpccaller(%struct.TYPE_8__* %77)
  %79 = call i8* @taddr2uaddr(%struct.TYPE_9__* %76, %struct.TYPE_10__* %78)
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  store i8* %80, i8** %15, align 8
  br label %81

81:                                               ; preds = %73, %71
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i8*, i8** %12, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @LOG_ERR, align 4
  %87 = load %struct.fdlist*, %struct.fdlist** %10, align 8
  %88 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @syslog(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i8* null, i8** %5, align 8
  br label %104

93:                                               ; preds = %82
  %94 = load i8*, i8** %8, align 8
  store i8* %94, i8** %13, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = call %struct.TYPE_10__* @svc_getrpccaller(%struct.TYPE_8__* %95)
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @addrmerge(%struct.TYPE_10__* %96, i8* %97, i8* %98, i8* %99)
  store i8* %100, i8** %14, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %14, align 8
  store i8* %103, i8** %5, align 8
  br label %104

104:                                              ; preds = %93, %85, %45, %38
  %105 = load i8*, i8** %5, align 8
  ret i8* %105
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @check_bound(%struct.fdlist*, i8*) #1

declare dso_local i8* @taddr2uaddr(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svc_getrpccaller(%struct.TYPE_8__*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i8* @addrmerge(%struct.TYPE_10__*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
