; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keys = type { i8**, i32** }

@KEYS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @keys_find(%struct.keys* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.keys*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.keys* %0, %struct.keys** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @KEYS_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load %struct.keys*, %struct.keys** %4, align 8
  %13 = getelementptr inbounds %struct.keys, %struct.keys* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %45

21:                                               ; preds = %11
  %22 = load %struct.keys*, %struct.keys** %4, align 8
  %23 = getelementptr inbounds %struct.keys, %struct.keys* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i32* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.keys*, %struct.keys** %4, align 8
  %34 = getelementptr inbounds %struct.keys, %struct.keys* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  br label %45

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %32, %20
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
