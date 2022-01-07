; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_shallow_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_shallow_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i64, i8*, i32, i32, %struct.command* }
%struct.shallow_info = type { %struct.oid_array*, i32, i32 }
%struct.oid_array = type { i32 }

@shallow_update = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"shallow update not allowed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, %struct.shallow_info*, %struct.oid_array*)* @update_shallow_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_shallow_info(%struct.command* %0, %struct.shallow_info* %1, %struct.oid_array* %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.shallow_info*, align 8
  %6 = alloca %struct.oid_array*, align 8
  %7 = alloca %struct.command*, align 8
  %8 = alloca i32*, align 8
  store %struct.command* %0, %struct.command** %4, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %5, align 8
  store %struct.oid_array* %2, %struct.oid_array** %6, align 8
  %9 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %10 = call i32 @remove_nonexistent_theirs_shallow(%struct.shallow_info* %9)
  %11 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %12 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %17 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i64 0, i64* @shallow_update, align 8
  br label %97

21:                                               ; preds = %15, %3
  %22 = load %struct.command*, %struct.command** %4, align 8
  store %struct.command* %22, %struct.command** %7, align 8
  br label %23

23:                                               ; preds = %44, %21
  %24 = load %struct.command*, %struct.command** %7, align 8
  %25 = icmp ne %struct.command* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load %struct.command*, %struct.command** %7, align 8
  %28 = getelementptr inbounds %struct.command, %struct.command* %27, i32 0, i32 3
  %29 = call i64 @is_null_oid(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %44

32:                                               ; preds = %26
  %33 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %34 = load %struct.command*, %struct.command** %7, align 8
  %35 = getelementptr inbounds %struct.command, %struct.command* %34, i32 0, i32 3
  %36 = call i32 @oid_array_append(%struct.oid_array* %33, i32* %35)
  %37 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %38 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = load %struct.command*, %struct.command** %7, align 8
  %43 = getelementptr inbounds %struct.command, %struct.command* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.command*, %struct.command** %7, align 8
  %46 = getelementptr inbounds %struct.command, %struct.command* %45, i32 0, i32 4
  %47 = load %struct.command*, %struct.command** %46, align 8
  store %struct.command* %47, %struct.command** %7, align 8
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %50 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %51 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %50, i32 0, i32 0
  store %struct.oid_array* %49, %struct.oid_array** %51, align 8
  %52 = load i64, i64* @shallow_update, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %56 = call i32 @prepare_shallow_update(%struct.shallow_info* %55)
  br label %97

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %60 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ALLOC_ARRAY(i32* %58, i32 %61)
  %63 = load %struct.shallow_info*, %struct.shallow_info** %5, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @assign_shallow_commits_to_refs(%struct.shallow_info* %63, i32* null, i32* %64)
  %66 = load %struct.command*, %struct.command** %4, align 8
  store %struct.command* %66, %struct.command** %7, align 8
  br label %67

67:                                               ; preds = %90, %57
  %68 = load %struct.command*, %struct.command** %7, align 8
  %69 = icmp ne %struct.command* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.command*, %struct.command** %7, align 8
  %72 = getelementptr inbounds %struct.command, %struct.command* %71, i32 0, i32 3
  %73 = call i64 @is_null_oid(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %90

76:                                               ; preds = %70
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.command*, %struct.command** %7, align 8
  %79 = getelementptr inbounds %struct.command, %struct.command* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.command*, %struct.command** %7, align 8
  %86 = getelementptr inbounds %struct.command, %struct.command* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.command*, %struct.command** %7, align 8
  %88 = getelementptr inbounds %struct.command, %struct.command* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.command*, %struct.command** %7, align 8
  %92 = getelementptr inbounds %struct.command, %struct.command* %91, i32 0, i32 4
  %93 = load %struct.command*, %struct.command** %92, align 8
  store %struct.command* %93, %struct.command** %7, align 8
  br label %67

94:                                               ; preds = %67
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @free(i32* %95)
  br label %97

97:                                               ; preds = %94, %54, %20
  ret void
}

declare dso_local i32 @remove_nonexistent_theirs_shallow(%struct.shallow_info*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #1

declare dso_local i32 @prepare_shallow_update(%struct.shallow_info*) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @assign_shallow_commits_to_refs(%struct.shallow_info*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
