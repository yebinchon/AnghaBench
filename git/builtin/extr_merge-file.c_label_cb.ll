; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-file.c_label_cb.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-file.c_label_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }

@label_cb.label_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"too many labels on the command line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @label_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_cb(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8**
  store i8** %12, i8*** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @BUG_ON_OPT_NEG(i32 %13)
  %15 = load i32, i32* @label_cb.label_count, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* @label_cb.label_count, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @label_cb.label_count, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  store i8* %20, i8** %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
