; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/unstr/extr_unstr.c_order_unstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/unstr/extr_unstr.c_order_unstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@Dataf = common dso_local global i32 0, align 4
@Inf = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@Delimch = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @order_unstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @order_unstr(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load i32, i32* @Dataf, align 4
  %20 = call i32 @fread(i32* %5, i32 1, i32 4, i32 %19)
  %21 = load i32, i32* @Inf, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @be64toh(i32 %22)
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @fseeko(i32 %21, i32 %23, i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @Delimch, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %50, %31
  %33 = trunc i64 %9 to i32
  %34 = load i32, i32* @Inf, align 4
  %35 = call i8* @fgets(i8* %11, i32 %33, i32 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @STR_ENDSTRING(i8* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %32
  br label %51

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fputs(i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %46
  br label %32

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %3, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #2

declare dso_local i32 @fseeko(i32, i32, i32) #2

declare dso_local i32 @be64toh(i32) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i8* @fgets(i8*, i32, i32) #2

declare dso_local i64 @STR_ENDSTRING(i8*, i64) #2

declare dso_local i32 @fputs(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
