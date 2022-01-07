; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_repack.c_prepare_pack_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_repack.c_prepare_pack_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.pack_objects_args = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"pack-objects\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"--window=%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"--window-memory=%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--depth=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"--threads=%s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"--max-pack-size=%s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"--no-reuse-delta\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"--no-reuse-object\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"--local\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@delta_base_offset = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"--delta-base-offset\00", align 1
@packtmp = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.child_process*, %struct.pack_objects_args*)* @prepare_pack_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_pack_objects(%struct.child_process* %0, %struct.pack_objects_args* %1) #0 {
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca %struct.pack_objects_args*, align 8
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  store %struct.pack_objects_args* %1, %struct.pack_objects_args** %4, align 8
  %5 = load %struct.child_process*, %struct.child_process** %3, align 8
  %6 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %7 = call i32 @argv_array_push(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %9 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.child_process*, %struct.child_process** %3, align 8
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %15 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %16 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %21 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.child_process*, %struct.child_process** %3, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 2
  %27 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %28 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %33 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.child_process*, %struct.child_process** %3, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 2
  %39 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %40 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %45 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.child_process*, %struct.child_process** %3, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %49, i32 0, i32 2
  %51 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %52 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %57 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.child_process*, %struct.child_process** %3, align 8
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %61, i32 0, i32 2
  %63 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %64 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %69 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.child_process*, %struct.child_process** %3, align 8
  %74 = getelementptr inbounds %struct.child_process, %struct.child_process* %73, i32 0, i32 2
  %75 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %78 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.child_process*, %struct.child_process** %3, align 8
  %83 = getelementptr inbounds %struct.child_process, %struct.child_process* %82, i32 0, i32 2
  %84 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %87 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.child_process*, %struct.child_process** %3, align 8
  %92 = getelementptr inbounds %struct.child_process, %struct.child_process* %91, i32 0, i32 2
  %93 = call i32 @argv_array_push(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.pack_objects_args*, %struct.pack_objects_args** %4, align 8
  %96 = getelementptr inbounds %struct.pack_objects_args, %struct.pack_objects_args* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.child_process*, %struct.child_process** %3, align 8
  %101 = getelementptr inbounds %struct.child_process, %struct.child_process* %100, i32 0, i32 2
  %102 = call i32 @argv_array_push(i32* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i64, i64* @delta_base_offset, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.child_process*, %struct.child_process** %3, align 8
  %108 = getelementptr inbounds %struct.child_process, %struct.child_process* %107, i32 0, i32 2
  %109 = call i32 @argv_array_push(i32* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.child_process*, %struct.child_process** %3, align 8
  %112 = getelementptr inbounds %struct.child_process, %struct.child_process* %111, i32 0, i32 2
  %113 = load i8*, i8** @packtmp, align 8
  %114 = call i32 @argv_array_push(i32* %112, i8* %113)
  %115 = load %struct.child_process*, %struct.child_process** %3, align 8
  %116 = getelementptr inbounds %struct.child_process, %struct.child_process* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.child_process*, %struct.child_process** %3, align 8
  %118 = getelementptr inbounds %struct.child_process, %struct.child_process* %117, i32 0, i32 1
  store i32 -1, i32* %118, align 4
  ret void
}

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
