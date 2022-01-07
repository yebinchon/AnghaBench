; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_free_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_free_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kept_size = common dso_local global i32 0, align 4
@kept = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_definition(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %42, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @kept_size, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i8**, i8*** @kept, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @string_in_use(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* @kept_size, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @kept_size, align 4
  %19 = load i8**, i8*** @kept, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @kept_size, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = load i8**, i8*** @kept, align 8
  %30 = load i32, i32* @kept_size, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** @kept, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %16
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %8
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %4

45:                                               ; preds = %4
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @string_in_use(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @keep(i8* %50)
  br label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i64 @string_in_use(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @keep(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
