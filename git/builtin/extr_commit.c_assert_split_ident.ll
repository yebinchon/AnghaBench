; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_assert_split_ident.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_assert_split_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_split = type { i32 }
%struct.strbuf = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to parse our own ident: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ident_split*, %struct.strbuf*)* @assert_split_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_split_ident(%struct.ident_split* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.ident_split*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.ident_split* %0, %struct.ident_split** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @split_ident_line(%struct.ident_split* %5, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %16 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i64 @split_ident_line(%struct.ident_split*, i32, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
