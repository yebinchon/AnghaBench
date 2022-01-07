; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-server-info.c_cmd_update_server_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-server-info.c_cmd_update_server_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"update the info files from scratch\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@update_server_info_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_update_server_info(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %10 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @OPT__FORCE(i32* %7, i32 %10, i32 0)
  %12 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %14 = call i32 (...) @OPT_END()
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @git_default_config, align 4
  %17 = call i32 @git_config(i32 %16, i32* null)
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %22 = load i32, i32* @update_server_info_usage, align 4
  %23 = call i32 @parse_options(i32 %18, i8** %19, i8* %20, %struct.option* %21, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @update_server_info_usage, align 4
  %28 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %29 = call i32 @usage_with_options(i32 %27, %struct.option* %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @update_server_info(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @OPT__FORCE(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @update_server_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
