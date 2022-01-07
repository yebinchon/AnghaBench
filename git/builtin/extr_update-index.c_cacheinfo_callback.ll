; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_cacheinfo_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_cacheinfo_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8**, i32 }
%struct.option = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"git update-index: --cacheinfo cannot add %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"option 'cacheinfo' expects <mode>,<sha1>,<path>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)* @cacheinfo_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cacheinfo_callback(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @BUG_ON_OPT_NEG(i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @BUG_ON_OPT_ARG(i8* %15)
  %17 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %18 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @parse_new_style_cacheinfo(i8* %21, i32* %11, %struct.object_id* %10, i8** %12)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @add_cacheinfo(i32 %25, %struct.object_id* %10, i8* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %34 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %34, align 8
  %37 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %38 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %5, align 4
  br label %84

41:                                               ; preds = %4
  %42 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %43 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %5, align 4
  br label %84

48:                                               ; preds = %41
  %49 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %50 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %50, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strtoul_ui(i8* %53, i32 8, i32* %11)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %48
  %57 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %58 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %58, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @get_oid_hex(i8* %61, %struct.object_id* %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %67 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %67, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @add_cacheinfo(i32 %65, %struct.object_id* %10, i8* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64, %56, %48
  %74 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %75 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %64
  %80 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %81 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 3
  store i32 %83, i32* %81, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %46, %32
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

declare dso_local i32 @parse_new_style_cacheinfo(i8*, i32*, %struct.object_id*, i8**) #1

declare dso_local i64 @add_cacheinfo(i32, %struct.object_id*, i8*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @strtoul_ui(i8*, i32, i32*) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
