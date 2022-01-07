; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_record_person_from_buf.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_record_person_from_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.string_list_item = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"\0Aauthor \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0Acommitter \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.string_list*, i8*)* @record_person_from_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_person_from_buf(i32 %0, %struct.string_list* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.string_list_item*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 97
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i8* @strstr(i8* %16, i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %86

22:                                               ; preds = %3
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strchrnul(i8* %28, i8 signext 60)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %33, %22
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ule i8* %43, %44
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %9, align 8
  br label %37

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %86

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i8* @xmemdupz(i8* %57, i32 %64)
  store i8* %65, i8** %7, align 8
  %66 = load %struct.string_list*, %struct.string_list** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %66, i8* %67)
  store %struct.string_list_item* %68, %struct.string_list_item** %10, align 8
  %69 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %70 = icmp ne %struct.string_list_item* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load %struct.string_list*, %struct.string_list** %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %72, i8* %73)
  store %struct.string_list_item* %74, %struct.string_list_item** %10, align 8
  %75 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %76 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %75, i32 0, i32 0
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %71, %56
  %78 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %79 = call i64 @util_as_integral(%struct.string_list_item* %78)
  %80 = add nsw i64 %79, 1
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %83 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %77, %55, %21
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i64 @util_as_integral(%struct.string_list_item*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
