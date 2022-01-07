; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_build_tag_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_build_tag_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unable to sign the tag\00", align 1
@tag_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to write tag file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32, %struct.object_id*)* @build_tag_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_tag_object(%struct.strbuf* %0, i32 %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = call i64 @do_sign(%struct.strbuf* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @error(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %10, %3
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @tag_type, align 4
  %25 = load %struct.object_id*, %struct.object_id** %7, align 8
  %26 = call i64 @write_object_file(i32 %20, i32 %23, i32 %24, %struct.object_id* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @error(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @do_sign(%struct.strbuf*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
