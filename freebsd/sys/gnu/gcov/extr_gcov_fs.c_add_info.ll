; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, %struct.gcov_info**, %struct.gcov_info* }
%struct.gcov_info = type { i32 }

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not add '%s' (out of memory)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"discarding saved data for %s (incompatible version)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not add '%s' (incompatible version)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*)* @add_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_info(%struct.gcov_node* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_info**, align 8
  %6 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %7 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %8 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @M_GCOV, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.gcov_info** @malloc(i32 %14, i32 %15, i32 %18)
  store %struct.gcov_info** %19, %struct.gcov_info*** %5, align 8
  %20 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %21 = icmp ne %struct.gcov_info** %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %25 = call i32 @gcov_info_filename(%struct.gcov_info* %24)
  %26 = call i32 @log(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %94

27:                                               ; preds = %2
  %28 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %29 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %30 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %29, i32 0, i32 1
  %31 = load %struct.gcov_info**, %struct.gcov_info*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(%struct.gcov_info** %28, %struct.gcov_info** %31, i32 %35)
  %37 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %38 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gcov_info*, %struct.gcov_info** %38, i64 %40
  store %struct.gcov_info* %37, %struct.gcov_info** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %27
  %45 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %46 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %45, i32 0, i32 2
  %47 = load %struct.gcov_info*, %struct.gcov_info** %46, align 8
  %48 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %49 = call i32 @gcov_info_is_compatible(%struct.gcov_info* %47, %struct.gcov_info* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @LOG_WARNING, align 4
  %53 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %54 = call i32 @gcov_info_filename(%struct.gcov_info* %53)
  %55 = call i32 @log(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %57 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %56, i32 0, i32 2
  %58 = load %struct.gcov_info*, %struct.gcov_info** %57, align 8
  %59 = call i32 @gcov_info_free(%struct.gcov_info* %58)
  %60 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %61 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %60, i32 0, i32 2
  store %struct.gcov_info* null, %struct.gcov_info** %61, align 8
  br label %62

62:                                               ; preds = %51, %44
  br label %81

63:                                               ; preds = %27
  %64 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %65 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %64, i32 0, i32 1
  %66 = load %struct.gcov_info**, %struct.gcov_info*** %65, align 8
  %67 = getelementptr inbounds %struct.gcov_info*, %struct.gcov_info** %66, i64 0
  %68 = load %struct.gcov_info*, %struct.gcov_info** %67, align 8
  %69 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %70 = call i32 @gcov_info_is_compatible(%struct.gcov_info* %68, %struct.gcov_info* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @LOG_WARNING, align 4
  %74 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %75 = call i32 @gcov_info_filename(%struct.gcov_info* %74)
  %76 = call i32 @log(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %78 = load i32, i32* @M_GCOV, align 4
  %79 = call i32 @free(%struct.gcov_info** %77, i32 %78)
  br label %94

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %83 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %82, i32 0, i32 1
  %84 = load %struct.gcov_info**, %struct.gcov_info*** %83, align 8
  %85 = load i32, i32* @M_GCOV, align 4
  %86 = call i32 @free(%struct.gcov_info** %84, i32 %85)
  %87 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %88 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %89 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %88, i32 0, i32 1
  store %struct.gcov_info** %87, %struct.gcov_info*** %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %93 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %81, %72, %22
  ret void
}

declare dso_local %struct.gcov_info** @malloc(i32, i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i32 @memcpy(%struct.gcov_info**, %struct.gcov_info**, i32) #1

declare dso_local i32 @gcov_info_is_compatible(%struct.gcov_info*, %struct.gcov_info*) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

declare dso_local i32 @free(%struct.gcov_info**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
