; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_verify_tag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_verify_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_format = type { i64 }

@GPG_VERIFY_VERBOSE = common dso_local global i32 0, align 4
@GPG_VERIFY_OMIT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.object_id*, i8*)* @verify_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_tag(i8* %0, i8* %1, %struct.object_id* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref_format*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.ref_format*
  store %struct.ref_format* %13, %struct.ref_format** %11, align 8
  %14 = load i32, i32* @GPG_VERIFY_VERBOSE, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ref_format*, %struct.ref_format** %11, align 8
  %16 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @GPG_VERIFY_OMIT_STATUS, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load %struct.object_id*, %struct.object_id** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @gpg_verify_tag(%struct.object_id* %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.ref_format*, %struct.ref_format** %11, align 8
  %30 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.object_id*, %struct.object_id** %8, align 8
  %36 = load %struct.ref_format*, %struct.ref_format** %11, align 8
  %37 = call i32 @pretty_print_ref(i8* %34, %struct.object_id* %35, %struct.ref_format* %36)
  br label %38

38:                                               ; preds = %33, %28
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @gpg_verify_tag(%struct.object_id*, i8*, i32) #1

declare dso_local i32 @pretty_print_ref(i8*, %struct.object_id*, %struct.ref_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
