; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_cert_push_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_cert_push_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.string_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@push_cert = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"push-option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*)* @check_cert_push_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cert_push_options(%struct.string_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @push_cert, i32 0, i32 0), align 8
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @push_cert, i32 0, i32 1), align 8
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @find_header(i8* %17, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %19, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.string_list*, %struct.string_list** %3, align 8
  %36 = getelementptr inbounds %struct.string_list, %struct.string_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %21
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.string_list*, %struct.string_list** %3, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i8* %40, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39, %21
  store i32 0, i32* %9, align 4
  br label %64

53:                                               ; preds = %39
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @free(i8* %54)
  br label %16

56:                                               ; preds = %16
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.string_list*, %struct.string_list** %3, align 8
  %59 = getelementptr inbounds %struct.string_list, %struct.string_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %56
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @find_header(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
