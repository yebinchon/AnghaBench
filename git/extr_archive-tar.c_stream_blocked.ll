; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_stream_blocked.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_stream_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.git_istream = type { i32 }

@BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot stream blob %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @stream_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_blocked(%struct.object_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.git_istream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %11 = load i32, i32* @BLOCKSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.object_id*, %struct.object_id** %3, align 8
  %16 = call %struct.git_istream* @open_istream(%struct.object_id* %15, i32* %5, i64* %6, i32* null)
  store %struct.git_istream* %16, %struct.git_istream** %4, align 8
  %17 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %18 = icmp ne %struct.git_istream* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.object_id*, %struct.object_id** %3, align 8
  %22 = call i32 @oid_to_hex(%struct.object_id* %21)
  %23 = call i32 @error(i32 %20, i32 %22)
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %45

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %32, %24
  %26 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %27 = trunc i64 %12 to i32
  %28 = call i64 @read_istream(%struct.git_istream* %26, i8* %14, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %35

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @do_write_blocked(i8* %14, i64 %33)
  br label %25

35:                                               ; preds = %31
  %36 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %37 = call i32 @close_istream(%struct.git_istream* %36)
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 (...) @finish_record()
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %19
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.git_istream* @open_istream(%struct.object_id*, i32*, i64*, i32*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @read_istream(%struct.git_istream*, i8*, i32) #2

declare dso_local i32 @do_write_blocked(i8*, i64) #2

declare dso_local i32 @close_istream(%struct.git_istream*) #2

declare dso_local i32 @finish_record(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
