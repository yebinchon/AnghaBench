; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_add_extra_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_add_extra_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit_extra_header = type { i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.commit_extra_header*)* @add_extra_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_extra_header(%struct.strbuf* %0, %struct.commit_extra_header* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.commit_extra_header*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.commit_extra_header* %1, %struct.commit_extra_header** %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %6 = load %struct.commit_extra_header*, %struct.commit_extra_header** %4, align 8
  %7 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strbuf_addstr(%struct.strbuf* %5, i32 %8)
  %10 = load %struct.commit_extra_header*, %struct.commit_extra_header** %4, align 8
  %11 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %16 = load %struct.commit_extra_header*, %struct.commit_extra_header** %4, align 8
  %17 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.commit_extra_header*, %struct.commit_extra_header** %4, align 8
  %20 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strbuf_add_lines(%struct.strbuf* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_addch(%struct.strbuf* %24, i8 signext 10)
  br label %26

26:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_add_lines(%struct.strbuf*, i8*, i32, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
