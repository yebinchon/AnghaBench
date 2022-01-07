; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_reused_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_reused_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hashfile = type { i32 }

@reuse_packfile = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"packfile is invalid: %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to open packfile for reuse: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to seek in reused packfile\00", align 1
@reuse_packfile_offset = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to read from reused packfile\00", align 1
@reuse_packfile_objects = common dso_local global double 0.000000e+00, align 8
@written = common dso_local global double 0.000000e+00, align 8
@progress_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashfile*)* @write_reused_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reused_pack(%struct.hashfile* %0) #0 {
  %2 = alloca %struct.hashfile*, align 8
  %3 = alloca [8192 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reuse_packfile, align 8
  %9 = call i32 @is_pack_valid(%struct.TYPE_5__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reuse_packfile, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @die(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reuse_packfile, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @git_open(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reuse_packfile, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, ...) @die_errno(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @lseek(i32 %31, i32 4, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 (i32, ...) @die_errno(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i64, i64* @reuse_packfile_offset, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reuse_packfile, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* @reuse_packfile_offset, align 8
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i64, i64* @reuse_packfile_offset, align 8
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %71, %49
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %59 = call i32 @xread(i32 %57, i8* %58, i32 8192)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 (i32, ...) @die_errno(i32 %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %73 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @hashwrite(%struct.hashfile* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load double, double* @reuse_packfile_objects, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sitofp i32 %82 to double
  %84 = load i32, i32* %5, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %83, %85
  %87 = fmul double %79, %86
  store double %87, double* @written, align 8
  %88 = load i32, i32* @progress_state, align 4
  %89 = load double, double* @written, align 8
  %90 = call i32 @display_progress(i32 %88, double %89)
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load double, double* @reuse_packfile_objects, align 8
  store double %94, double* @written, align 8
  %95 = load i32, i32* @progress_state, align 4
  %96 = load double, double* @written, align 8
  %97 = call i32 @display_progress(i32 %95, double %96)
  %98 = load i64, i64* @reuse_packfile_offset, align 8
  %99 = sub i64 %98, 4
  %100 = trunc i64 %99 to i32
  ret i32 %100
}

declare dso_local i32 @is_pack_valid(%struct.TYPE_5__*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_open(i32) #1

declare dso_local i32 @die_errno(i32, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @xread(i32, i8*, i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

declare dso_local i32 @display_progress(i32, double) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
