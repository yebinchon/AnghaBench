; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_infer_range_diff_ranges.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_infer_range_diff_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s..%s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to infer range-diff ranges\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, i8*, %struct.commit*, %struct.commit*)* @infer_range_diff_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infer_range_diff_ranges(%struct.strbuf* %0, %struct.strbuf* %1, i8* %2, %struct.commit* %3, %struct.commit* %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.commit* %3, %struct.commit** %9, align 8
  store %struct.commit* %4, %struct.commit** %10, align 8
  %12 = load %struct.commit*, %struct.commit** %10, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i8* @oid_to_hex(i32* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @strbuf_addf(%struct.strbuf* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26)
  br label %46

28:                                               ; preds = %5
  %29 = load %struct.commit*, %struct.commit** %9, align 8
  %30 = icmp ne %struct.commit* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @die(i32 %32)
  br label %45

34:                                               ; preds = %28
  %35 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %35, i8* %36)
  %38 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %39 = load %struct.commit*, %struct.commit** %9, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i8* @oid_to_hex(i32* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strbuf_addf(%struct.strbuf* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %34, %31
  br label %46

46:                                               ; preds = %45, %19
  ret void
}

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
