; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_prepare_transport.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_prepare_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.transport = type { i64, i32 }
%struct.remote = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@progress = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@upload_pack = common dso_local global i8* null, align 8
@TRANS_OPT_UPLOADPACK = common dso_local global i32 0, align 4
@keep = common dso_local global i64 0, align 8
@TRANS_OPT_KEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@depth = common dso_local global i8* null, align 8
@TRANS_OPT_DEPTH = common dso_local global i32 0, align 4
@deepen_since = common dso_local global i8* null, align 8
@TRANS_OPT_DEEPEN_SINCE = common dso_local global i32 0, align 4
@deepen_not = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRANS_OPT_DEEPEN_NOT = common dso_local global i32 0, align 4
@deepen_relative = common dso_local global i64 0, align 8
@TRANS_OPT_DEEPEN_RELATIVE = common dso_local global i32 0, align 4
@update_shallow = common dso_local global i64 0, align 8
@TRANS_OPT_UPDATE_SHALLOW = common dso_local global i32 0, align 4
@filter_options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRANS_OPT_LIST_OBJECTS_FILTER = common dso_local global i32 0, align 4
@TRANS_OPT_FROM_PROMISOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@negotiation_tip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Ignoring --negotiation-tip because the protocol does not support it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.transport* (%struct.remote*, i32)* @prepare_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.transport* @prepare_transport(%struct.remote* %0, i32 %1) #0 {
  %3 = alloca %struct.remote*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i8*, align 8
  store %struct.remote* %0, %struct.remote** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.remote*, %struct.remote** %3, align 8
  %8 = call %struct.transport* @transport_get(%struct.remote* %7, i32* null)
  store %struct.transport* %8, %struct.transport** %5, align 8
  %9 = load %struct.transport*, %struct.transport** %5, align 8
  %10 = load i32, i32* @verbosity, align 4
  %11 = load i32, i32* @progress, align 4
  %12 = call i32 @transport_set_verbosity(%struct.transport* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @family, align 4
  %14 = load %struct.transport*, %struct.transport** %5, align 8
  %15 = getelementptr inbounds %struct.transport, %struct.transport* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** @upload_pack, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.transport*, %struct.transport** %5, align 8
  %20 = load i32, i32* @TRANS_OPT_UPLOADPACK, align 4
  %21 = load i8*, i8** @upload_pack, align 8
  %22 = call i32 @set_option(%struct.transport* %19, i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i64, i64* @keep, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.transport*, %struct.transport** %5, align 8
  %28 = load i32, i32* @TRANS_OPT_KEEP, align 4
  %29 = call i32 @set_option(%struct.transport* %27, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i8*, i8** @depth, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.transport*, %struct.transport** %5, align 8
  %35 = load i32, i32* @TRANS_OPT_DEPTH, align 4
  %36 = load i8*, i8** @depth, align 8
  %37 = call i32 @set_option(%struct.transport* %34, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i8*, i8** @deepen_since, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.transport*, %struct.transport** %5, align 8
  %46 = load i32, i32* @TRANS_OPT_DEEPEN_SINCE, align 4
  %47 = load i8*, i8** @deepen_since, align 8
  %48 = call i32 @set_option(%struct.transport* %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %41, %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @deepen_not, i32 0, i32 0), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.transport*, %struct.transport** %5, align 8
  %57 = load i32, i32* @TRANS_OPT_DEEPEN_NOT, align 4
  %58 = call i32 @set_option(%struct.transport* %56, i32 %57, i8* bitcast (%struct.TYPE_7__* @deepen_not to i8*))
  br label %59

59:                                               ; preds = %55, %52, %49
  %60 = load i64, i64* @deepen_relative, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.transport*, %struct.transport** %5, align 8
  %64 = load i32, i32* @TRANS_OPT_DEEPEN_RELATIVE, align 4
  %65 = call i32 @set_option(%struct.transport* %63, i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i64, i64* @update_shallow, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.transport*, %struct.transport** %5, align 8
  %71 = load i32, i32* @TRANS_OPT_UPDATE_SHALLOW, align 4
  %72 = call i32 @set_option(%struct.transport* %70, i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @filter_options, i32 0, i32 0), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = call i8* @expand_list_objects_filter_spec(%struct.TYPE_6__* @filter_options)
  store i8* %77, i8** %6, align 8
  %78 = load %struct.transport*, %struct.transport** %5, align 8
  %79 = load i32, i32* @TRANS_OPT_LIST_OBJECTS_FILTER, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @set_option(%struct.transport* %78, i32 %79, i8* %80)
  %82 = load %struct.transport*, %struct.transport** %5, align 8
  %83 = load i32, i32* @TRANS_OPT_FROM_PROMISOR, align 4
  %84 = call i32 @set_option(%struct.transport* %82, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @negotiation_tip, i32 0, i32 0), align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.transport*, %struct.transport** %5, align 8
  %90 = getelementptr inbounds %struct.transport, %struct.transport* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.transport*, %struct.transport** %5, align 8
  %95 = getelementptr inbounds %struct.transport, %struct.transport* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @add_negotiation_tips(i64 %96)
  br label %100

98:                                               ; preds = %88
  %99 = call i32 @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.transport*, %struct.transport** %5, align 8
  ret %struct.transport* %102
}

declare dso_local %struct.transport* @transport_get(%struct.remote*, i32*) #1

declare dso_local i32 @transport_set_verbosity(%struct.transport*, i32, i32) #1

declare dso_local i32 @set_option(%struct.transport*, i32, i8*) #1

declare dso_local i8* @expand_list_objects_filter_spec(%struct.TYPE_6__*) #1

declare dso_local i32 @add_negotiation_tips(i64) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
