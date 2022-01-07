; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_wanted_peer_refs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_wanted_peer_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref* }
%struct.refspec = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@option_single_branch = common dso_local global i64 0, align 8
@option_branch = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not find remote branch %s to clone.\00", align 1
@tag_refspec = common dso_local global i32* null, align 8
@option_mirror = common dso_local global i32 0, align 4
@option_no_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.ref*, %struct.refspec*)* @wanted_peer_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @wanted_peer_refs(%struct.ref* %0, %struct.refspec* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.refspec*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %3, align 8
  store %struct.refspec* %1, %struct.refspec** %4, align 8
  %11 = load %struct.ref*, %struct.ref** %3, align 8
  %12 = call i32 @find_ref_by_name(%struct.ref* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.ref* @copy_ref(i32 %12)
  store %struct.ref* %13, %struct.ref** %5, align 8
  %14 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %14, %struct.ref** %6, align 8
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = icmp ne %struct.ref* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ref*, %struct.ref** %5, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 0
  %20 = bitcast %struct.ref** %19 to i8*
  br label %23

21:                                               ; preds = %2
  %22 = bitcast %struct.ref** %6 to i8*
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i8* [ %20, %17 ], [ %22, %21 ]
  %25 = bitcast i8* %24 to %struct.ref**
  store %struct.ref** %25, %struct.ref*** %7, align 8
  %26 = load i64, i64* @option_single_branch, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  store %struct.ref* null, %struct.ref** %8, align 8
  %29 = load i64, i64* @option_branch, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load %struct.ref*, %struct.ref** %5, align 8
  %33 = load %struct.ref*, %struct.ref** %3, align 8
  %34 = call %struct.ref* @guess_remote_head(%struct.ref* %32, %struct.ref* %33, i32 0)
  store %struct.ref* %34, %struct.ref** %8, align 8
  br label %40

35:                                               ; preds = %28
  store %struct.ref* null, %struct.ref** %6, align 8
  store %struct.ref** %6, %struct.ref*** %7, align 8
  %36 = load %struct.ref*, %struct.ref** %3, align 8
  %37 = load i64, i64* @option_branch, align 8
  %38 = call i32 @find_remote_branch(%struct.ref* %36, i64 %37)
  %39 = call %struct.ref* @copy_ref(i32 %38)
  store %struct.ref* %39, %struct.ref** %8, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.ref*, %struct.ref** %8, align 8
  %42 = icmp ne %struct.ref* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @option_branch, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @option_branch, align 8
  %49 = call i32 @warning(i32 %47, i64 %48)
  br label %73

50:                                               ; preds = %43, %40
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.refspec*, %struct.refspec** %4, align 8
  %54 = getelementptr inbounds %struct.refspec, %struct.refspec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.ref*, %struct.ref** %8, align 8
  %59 = load %struct.refspec*, %struct.refspec** %4, align 8
  %60 = getelementptr inbounds %struct.refspec, %struct.refspec* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @get_fetch_map(%struct.ref* %58, i32* %64, %struct.ref*** %7, i32 0)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.ref*, %struct.ref** %8, align 8
  %71 = load i32*, i32** @tag_refspec, align 8
  %72 = call i32 @get_fetch_map(%struct.ref* %70, i32* %71, %struct.ref*** %7, i32 0)
  br label %73

73:                                               ; preds = %69, %46
  br label %94

74:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.refspec*, %struct.refspec** %4, align 8
  %78 = getelementptr inbounds %struct.refspec, %struct.refspec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.ref*, %struct.ref** %3, align 8
  %83 = load %struct.refspec*, %struct.refspec** %4, align 8
  %84 = getelementptr inbounds %struct.refspec, %struct.refspec* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @get_fetch_map(%struct.ref* %82, i32* %88, %struct.ref*** %7, i32 0)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %75

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i32, i32* @option_mirror, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @option_single_branch, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @option_no_tags, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load %struct.ref*, %struct.ref** %3, align 8
  %105 = load i32*, i32** @tag_refspec, align 8
  %106 = call i32 @get_fetch_map(%struct.ref* %104, i32* %105, %struct.ref*** %7, i32 0)
  br label %107

107:                                              ; preds = %103, %100, %97, %94
  %108 = load %struct.ref*, %struct.ref** %6, align 8
  ret %struct.ref* %108
}

declare dso_local %struct.ref* @copy_ref(i32) #1

declare dso_local i32 @find_ref_by_name(%struct.ref*, i8*) #1

declare dso_local %struct.ref* @guess_remote_head(%struct.ref*, %struct.ref*, i32) #1

declare dso_local i32 @find_remote_branch(%struct.ref*, i64) #1

declare dso_local i32 @warning(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_fetch_map(%struct.ref*, i32*, %struct.ref***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
