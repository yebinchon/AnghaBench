; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_git_checkout_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_git_checkout_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"diff.ignoresubmodules\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"submodule.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_checkout_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_checkout_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.checkout_opts*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.checkout_opts*
  store %struct.checkout_opts* %14, %struct.checkout_opts** %8, align 8
  %15 = load %struct.checkout_opts*, %struct.checkout_opts** %8, align 8
  %16 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %15, i32 0, i32 0
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @handle_ignore_submodules_arg(i32* %16, i8* %17)
  store i32 0, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @starts_with(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @git_default_submodule_config(i8* %24, i8* %25, i32* null)
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @git_xmerge_config(i8* %28, i8* %29, i32* null)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %23, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_ignore_submodules_arg(i32*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_default_submodule_config(i8*, i8*, i32*) #1

declare dso_local i32 @git_xmerge_config(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
