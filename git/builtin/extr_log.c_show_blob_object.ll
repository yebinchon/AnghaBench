; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_show_blob_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_show_blob_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.object_context = type { i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@GET_OID_RECORD_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"not a valid object name %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"git show %s: bad file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.rev_info*, i8*)* @show_blob_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_blob_object(%struct.object_id* %0, %struct.rev_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.object_context, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.rev_info* %1, %struct.rev_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.object_id*, %struct.object_id** %5, align 8
  %32 = call i32 @stream_blob_to_fd(i32 1, %struct.object_id* %31, i32* null, i32 0)
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %23
  %34 = load i32, i32* @the_repository, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @GET_OID_RECORD_PATH, align 4
  %37 = call i64 @get_oid_with_context(i32 %34, i8* %35, i32 %36, %struct.object_id* %8, %struct.object_context* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @die(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = getelementptr inbounds %struct.object_context, %struct.object_context* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* @the_repository, align 4
  %49 = getelementptr inbounds %struct.object_context, %struct.object_context* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.object_context, %struct.object_context* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @textconv_object(i32 %48, i32 %50, i32 %52, %struct.object_id* %8, i32 1, i8** %10, i64* %11)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47, %43
  %56 = getelementptr inbounds %struct.object_context, %struct.object_context* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free(i32 %57)
  %59 = load %struct.object_id*, %struct.object_id** %5, align 8
  %60 = call i32 @stream_blob_to_fd(i32 1, %struct.object_id* %59, i32* null, i32 0)
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %47
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @die(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @write_or_die(i32 1, i8* %69, i64 %70)
  %72 = getelementptr inbounds %struct.object_context, %struct.object_context* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free(i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %55, %30
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @stream_blob_to_fd(i32, %struct.object_id*, i32*, i32) #1

declare dso_local i64 @get_oid_with_context(i32, i8*, i32, %struct.object_id*, %struct.object_context*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @textconv_object(i32, i32, i32, %struct.object_id*, i32, i8**, i64*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @write_or_die(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
