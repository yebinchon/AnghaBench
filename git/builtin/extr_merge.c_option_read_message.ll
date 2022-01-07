; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_option_read_message.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_option_read_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8*, i32, i8**, i64 }
%struct.option = type { i8*, %struct.strbuf* }
%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"-F cannot be negated\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"option `%s' requires a value\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not read file '%s'\00", align 1
@have_message = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)* @option_read_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_read_message(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.option*, %struct.option** %7, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 1
  %14 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  store %struct.strbuf* %14, %struct.strbuf** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @BUG_ON_OPT_ARG(i8* %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %4
  %22 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %23 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %28 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %31 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %30, i32 0, i32 0
  store i8* null, i8** %31, align 8
  br label %54

32:                                               ; preds = %21
  %33 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %34 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %39 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %43 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %43, align 8
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %11, align 8
  br label %53

47:                                               ; preds = %32
  %48 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.option*, %struct.option** %7, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @error(i32 %48, i8* %51)
  store i32 %52, i32* %5, align 4
  br label %87

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %61 = call i32 @strbuf_addch(%struct.strbuf* %60, i8 signext 10)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %64 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @is_absolute_path(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %73 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i8* @prefix_filename(i64 %74, i8* %75)
  store i8* %76, i8** %11, align 8
  br label %77

77:                                               ; preds = %71, %67, %62
  %78 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i64 @strbuf_read_file(%struct.strbuf* %78, i8* %79, i32 0)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @error(i32 %83, i8* %84)
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %77
  store i32 1, i32* @have_message, align 4
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %82, %47
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @prefix_filename(i64, i8*) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
