; ModuleID = '/home/carl/AnghaBench/git/extr_checkout.c_unique_tracking_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_checkout.c_unique_tracking_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracking_name_data = type { i8*, i8*, i32, i8*, i8*, i8*, %struct.object_id* }
%struct.object_id = type { i32 }

@TRACKING_NAME_DATA_INIT = common dso_local global %struct.tracking_name_data zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"checkout.defaultremote\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@check_tracking_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unique_tracking_name(i8* %0, %struct.object_id* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tracking_name_data, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = bitcast %struct.tracking_name_data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.tracking_name_data* @TRACKING_NAME_DATA_INIT to i8*), i64 56, i1 false)
  store i8* null, i8** %9, align 8
  %11 = call i32 @git_config_get_string_const(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %9)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load %struct.object_id*, %struct.object_id** %6, align 8
  %21 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 6
  store %struct.object_id* %20, %struct.object_id** %21, align 8
  %22 = load i32, i32* @check_tracking_name, align 4
  %23 = call i32 @for_each_remote(i32 %22, %struct.tracking_name_data* %8)
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @free(i8* %34)
  %36 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @free(i8* %41)
  %43 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  %46 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %4, align 8
  br label %66

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @free(i8* %50)
  %52 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.object_id*, %struct.object_id** %6, align 8
  %57 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @oidcpy(%struct.object_id* %56, i8* %58)
  %60 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @free(i8* %61)
  %63 = getelementptr inbounds %struct.tracking_name_data, %struct.tracking_name_data* %8, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %4, align 8
  br label %66

65:                                               ; preds = %48
  store i8* null, i8** %4, align 8
  br label %66

66:                                               ; preds = %65, %55, %39
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config_get_string_const(i8*, i8**) #2

declare dso_local i8* @xstrfmt(i8*, i8*) #2

declare dso_local i32 @for_each_remote(i32, %struct.tracking_name_data*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @oidcpy(%struct.object_id*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
