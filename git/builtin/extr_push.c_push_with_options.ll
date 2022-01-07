; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_push_with_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_push_with_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.refspec = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@progress = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@receivepack = common dso_local global i8* null, align 8
@TRANS_OPT_RECEIVEPACK = common dso_local global i32 0, align 4
@TRANS_OPT_THIN = common dso_local global i32 0, align 4
@thin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@cas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"underlying transport does not support --%s option\00", align 1
@CAS_OPT_NAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Pushing to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"transport_push\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PUSH_COLOR_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to push some refs to '%s'\00", align 1
@PUSH_COLOR_RESET = common dso_local global i32 0, align 4
@REJECT_NON_FF_HEAD = common dso_local global i32 0, align 4
@REJECT_NON_FF_OTHER = common dso_local global i32 0, align 4
@REJECT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@REJECT_FETCH_FIRST = common dso_local global i32 0, align 4
@REJECT_NEEDS_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.refspec*, i32)* @push_with_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_with_options(%struct.transport* %0, %struct.refspec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca %struct.refspec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %5, align 8
  store %struct.refspec* %1, %struct.refspec** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.transport*, %struct.transport** %5, align 8
  %11 = load i64, i64* @verbosity, align 8
  %12 = load i32, i32* @progress, align 4
  %13 = call i32 @transport_set_verbosity(%struct.transport* %10, i64 %11, i32 %12)
  %14 = load i32, i32* @family, align 4
  %15 = load %struct.transport*, %struct.transport** %5, align 8
  %16 = getelementptr inbounds %struct.transport, %struct.transport* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @receivepack, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.transport*, %struct.transport** %5, align 8
  %21 = load i32, i32* @TRANS_OPT_RECEIVEPACK, align 4
  %22 = load i8*, i8** @receivepack, align 8
  %23 = call i32 @transport_set_option(%struct.transport* %20, i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.transport*, %struct.transport** %5, align 8
  %26 = load i32, i32* @TRANS_OPT_THIN, align 4
  %27 = load i64, i64* @thin, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* null
  %31 = call i32 @transport_set_option(%struct.transport* %25, i32 %26, i8* %30)
  %32 = call i32 @is_empty_cas(i32* @cas)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %24
  %35 = load %struct.transport*, %struct.transport** %5, align 8
  %36 = getelementptr inbounds %struct.transport, %struct.transport* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @CAS_OPT_NAME, align 4
  %41 = call i32 @die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.transport*, %struct.transport** %5, align 8
  %44 = getelementptr inbounds %struct.transport, %struct.transport* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* @cas, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %24
  %48 = load i64, i64* @verbosity, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.transport*, %struct.transport** %5, align 8
  %54 = getelementptr inbounds %struct.transport, %struct.transport* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @fprintf(i32 %51, i8* %52, i8* %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @the_repository, align 4
  %59 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @the_repository, align 4
  %61 = load %struct.transport*, %struct.transport** %5, align 8
  %62 = load %struct.refspec*, %struct.refspec** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @transport_push(i32 %60, %struct.transport* %61, %struct.refspec* %62, i32 %63, i32* %9)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @the_repository, align 4
  %66 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* @PUSH_COLOR_ERROR, align 4
  %72 = call i8* @push_get_color(i32 %71)
  %73 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.transport*, %struct.transport** %5, align 8
  %76 = getelementptr inbounds %struct.transport, %struct.transport* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @error(i8* %74, i8* %77)
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* @PUSH_COLOR_RESET, align 4
  %81 = call i8* @push_get_color(i32 %80)
  %82 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %69, %57
  %84 = load %struct.transport*, %struct.transport** %5, align 8
  %85 = call i32 @transport_disconnect(%struct.transport* %84)
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %131

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @REJECT_NON_FF_HEAD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (...) @advise_pull_before_push()
  br label %130

98:                                               ; preds = %91
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @REJECT_NON_FF_OTHER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @advise_checkout_pull_push()
  br label %129

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @REJECT_ALREADY_EXISTS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (...) @advise_ref_already_exists()
  br label %128

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @REJECT_FETCH_FIRST, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @advise_ref_fetch_first()
  br label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @REJECT_NEEDS_FORCE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (...) @advise_ref_needs_force()
  br label %126

126:                                              ; preds = %124, %119
  br label %127

127:                                              ; preds = %126, %117
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129, %96
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %90
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @transport_set_verbosity(%struct.transport*, i64, i32) #1

declare dso_local i32 @transport_set_option(%struct.transport*, i32, i8*) #1

declare dso_local i32 @is_empty_cas(i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @trace2_region_enter(i8*, i8*, i32) #1

declare dso_local i32 @transport_push(i32, %struct.transport*, %struct.refspec*, i32, i32*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, i32) #1

declare dso_local i8* @push_get_color(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @transport_disconnect(%struct.transport*) #1

declare dso_local i32 @advise_pull_before_push(...) #1

declare dso_local i32 @advise_checkout_pull_push(...) #1

declare dso_local i32 @advise_ref_already_exists(...) #1

declare dso_local i32 @advise_ref_fetch_first(...) #1

declare dso_local i32 @advise_ref_needs_force(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
