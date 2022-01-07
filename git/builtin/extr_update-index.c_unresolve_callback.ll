; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_unresolve_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_unresolve_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.parse_opt_ctx_t = type { i32, i32 }
%struct.option = type { i32* }

@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@active_cache_changed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)* @unresolve_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unresolve_callback(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.option*, %struct.option** %6, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BUG_ON_OPT_NEG(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @BUG_ON_OPT_ARG(i8* %19)
  %21 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %22 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %25 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  %36 = call i32 @do_unresolve(i32 %23, i32 %26, i8* %27, i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i64 0, i64* @active_cache_changed, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %44 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %48 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %52 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

declare dso_local i32 @do_unresolve(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
