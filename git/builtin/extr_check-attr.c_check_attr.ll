; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-attr.c_check_attr.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-attr.c_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { i32 }

@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.attr_check*, i32, i8*)* @check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_attr(i8* %0, %struct.attr_check* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attr_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.attr_check* %1, %struct.attr_check** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @prefix_path(i8* %10, i32 %18, i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %26 = call i32 @git_all_attrs(i32* @the_index, i8* %24, %struct.attr_check* %25)
  br label %31

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %30 = call i32 @git_check_attr(i32* @the_index, i8* %28, %struct.attr_check* %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @output_attr(%struct.attr_check* %32, i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  ret void
}

declare dso_local i8* @prefix_path(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_all_attrs(i32*, i8*, %struct.attr_check*) #1

declare dso_local i32 @git_check_attr(i32*, i8*, %struct.attr_check*) #1

declare dso_local i32 @output_attr(%struct.attr_check*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
