; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_assign_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_assign_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assign = type { i8**, i8*, i32 }

@sh = common dso_local global i32 0, align 4
@section_head = common dso_local global i32 0, align 4
@idx = common dso_local global i32 0, align 4
@words = common dso_local global i8** null, align 8
@ah = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assign_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.assign*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call %struct.assign* @malloc(i32 24)
  store %struct.assign* %5, %struct.assign** %3, align 8
  %6 = load %struct.assign*, %struct.assign** %3, align 8
  %7 = call i32 @bzero(%struct.assign* %6, i32 24)
  %8 = load i32, i32* @section_head, align 4
  %9 = call i32 @TAILQ_LAST(i32* @sh, i32 %8)
  %10 = load %struct.assign*, %struct.assign** %3, align 8
  %11 = getelementptr inbounds %struct.assign, %struct.assign* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @sstrdup(i8* %12)
  %14 = load %struct.assign*, %struct.assign** %3, align 8
  %15 = getelementptr inbounds %struct.assign, %struct.assign* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @idx, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i8**, i8*** @words, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @sstrdup(i8* %25)
  %27 = load %struct.assign*, %struct.assign** %3, align 8
  %28 = getelementptr inbounds %struct.assign, %struct.assign* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* @idx, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %29, i64 %34
  store i8* %26, i8** %35, align 8
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.assign*, %struct.assign** %3, align 8
  %41 = load i32, i32* @link, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* @ah, %struct.assign* %40, i32 %41)
  %43 = call i32 (...) @clear_words()
  ret void
}

declare dso_local %struct.assign* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.assign*, i32) #1

declare dso_local i32 @TAILQ_LAST(i32*, i32) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.assign*, i32) #1

declare dso_local i32 @clear_words(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
