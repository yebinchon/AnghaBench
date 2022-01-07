; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_hfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_hfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@LINESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hfield(i8* %0, %struct.message* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.message* %1, %struct.message** %5, align 8
  %14 = load i32, i32* @LINESIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i8* null, i8** %12, align 8
  %18 = load %struct.message*, %struct.message** %5, align 8
  %19 = call i32* @setinput(%struct.message* %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.message*, %struct.message** %5, align 8
  %21 = getelementptr inbounds %struct.message, %struct.message* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %55

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @LINESIZE, align 4
  %29 = call i64 @readline(i32* %27, i8* %17, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %55

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @gethfield(i32* %37, i8* %17, i32 %38, i8** %11)
  store i32 %39, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  store i8* %42, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @ishfield(i8* %17, i8* %44, i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i8* @save2str(i8* %49, i8* %50)
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %48, %43
  br label %33

53:                                               ; preds = %33
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %41, %31, %25
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @setinput(%struct.message*) #2

declare dso_local i64 @readline(i32*, i8*, i32) #2

declare dso_local i32 @gethfield(i32*, i8*, i32, i8**) #2

declare dso_local i8* @ishfield(i8*, i8*, i8*) #2

declare dso_local i8* @save2str(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
