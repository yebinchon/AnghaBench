; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_attach_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_attach_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }
%struct.rev_info = type { i8*, i32 }

@git_version_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @attach_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rev_info*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rev_info*
  store %struct.rev_info* %11, %struct.rev_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 0
  store i8* null, i8** %16, align 8
  br label %29

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** @git_version_string, align 8
  %26 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
