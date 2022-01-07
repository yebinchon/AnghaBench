; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_rrip_move_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_rrip_move_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32*, i32*, i32 }
%struct.TYPE_22__ = type { i32 }

@ISO_RRIP_DEFAULT_MOVE_DIR_NAME = common dso_local global i32 0, align 4
@stampst = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@start_time = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08i\00", align 1
@cn_next_child = common dso_local global i32 0, align 4
@ISO_FILENAME_MAXLENGTH_WITH_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_24__*, %struct.TYPE_25__*)* @cd9660_rrip_move_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @cd9660_rrip_move_directory(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca [9 x i8], align 1
  %7 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %11 = icmp eq %struct.TYPE_28__* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = load i32, i32* @ISO_RRIP_DEFAULT_MOVE_DIR_NAME, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = call %struct.TYPE_28__* @cd9660_create_directory(%struct.TYPE_24__* %13, i32 %14, i32 %17, %struct.TYPE_25__* %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %21, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = icmp eq %struct.TYPE_28__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %135

27:                                               ; preds = %12
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @stampst, i32 0, i32 1), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @stampst, i32 0, i32 0), align 8
  br label %41

39:                                               ; preds = %27
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @start_time, i32 0, i32 0), align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @cd9660_time_915(i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = call %struct.TYPE_25__* @cd9660_create_file(%struct.TYPE_24__* %45, i32 %50, %struct.TYPE_28__* %53, %struct.TYPE_25__* %54)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %7, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = icmp eq %struct.TYPE_25__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %135

59:                                               ; preds = %44
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @snprintf(i8* %64, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %73, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = call i64 @TAILQ_EMPTY(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %59
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %86 = load i32, i32* @cn_next_child, align 4
  %87 = call i32 @TAILQ_INSERT_HEAD(i32* %84, %struct.TYPE_25__* %85, i32 %86)
  br label %94

88:                                               ; preds = %59
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = call i32 @cd9660_sorted_child_insert(%struct.TYPE_28__* %91, %struct.TYPE_25__* %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 2
  store %struct.TYPE_28__* %97, %struct.TYPE_28__** %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %102, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = call i32 @cd9660_sorted_child_insert(%struct.TYPE_28__* %105, %struct.TYPE_25__* %106)
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ISO_FILENAME_MAXLENGTH_WITH_PADDING, align 4
  %114 = call i32 @memset(i32 %112, i32 0, i32 %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %121 = call i32 @strncpy(i32 %119, i8* %120, i32 8)
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 42, i32* %127, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 8, i32* %133, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %3, align 8
  br label %135

135:                                              ; preds = %94, %58, %26
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  ret %struct.TYPE_25__* %136
}

declare dso_local %struct.TYPE_28__* @cd9660_create_directory(%struct.TYPE_24__*, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @cd9660_time_915(i32, i32) #1

declare dso_local %struct.TYPE_25__* @cd9660_create_file(%struct.TYPE_24__*, i32, %struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @cd9660_sorted_child_insert(%struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
