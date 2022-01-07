; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_diskless.c_decode_nfshandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_diskless.c_decode_nfshandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @decode_nfshandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nfshandle(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @kern_getenv(i8* %12)
  store i8* %13, i8** %8, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 88
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %17
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @freeenv(i8* %27)
  store i32 0, i32* %4, align 4
  br label %67

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %66, %29
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 88
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @freeenv(i8* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %32
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 255
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @freeenv(i8* %49)
  store i32 0, i32* %4, align 4
  br label %67

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @freeenv(i8* %64)
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %51
  br label %32

67:                                               ; preds = %63, %48, %37, %26, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
