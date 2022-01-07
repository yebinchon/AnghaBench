; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_parse_one_symref_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_parse_one_symref_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.string_list_item = type { i8* }

@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i8*, i32)* @parse_one_symref_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_one_symref_info(%struct.string_list* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list_item*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %45

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @xmemdupz(i8* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %42

22:                                               ; preds = %13
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  store i8 0, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %27 = call i64 @check_refname_format(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %32 = call i64 @check_refname_format(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %22
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.string_list*, %struct.string_list** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call %struct.string_list_item* @string_list_append_nodup(%struct.string_list* %36, i8* %37)
  store %struct.string_list_item* %38, %struct.string_list_item** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %41 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %45

42:                                               ; preds = %34, %21
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %42, %35, %12
  ret void
}

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @check_refname_format(i8*, i32) #1

declare dso_local %struct.string_list_item* @string_list_append_nodup(%struct.string_list*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
