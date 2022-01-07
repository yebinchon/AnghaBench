; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_read_state_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_read_state_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.am_state = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.am_state*, i8*, i32)* @read_state_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_state_file(%struct.strbuf* %0, %struct.am_state* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.am_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store %struct.am_state* %1, %struct.am_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %11 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %13 = load %struct.am_state*, %struct.am_state** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @am_path(%struct.am_state* %13, i8* %14)
  %16 = call i64 @strbuf_read_file(%struct.strbuf* %12, i32 %15, i32 0)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = call i32 @strbuf_trim(%struct.strbuf* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %4
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %39

33:                                               ; preds = %28
  %34 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.am_state*, %struct.am_state** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @am_path(%struct.am_state* %35, i8* %36)
  %38 = call i32 @die_errno(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %32, %24
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @am_path(%struct.am_state*, i8*) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i32 @die_errno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
