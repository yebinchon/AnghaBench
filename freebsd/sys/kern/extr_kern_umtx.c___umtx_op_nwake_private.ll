; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_nwake_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_nwake_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i64 }

@BATCH_SIZE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_nwake_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_nwake_private(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct._umtx_op_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %4, align 8
  %13 = load i32, i32* @BATCH_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8*, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct._umtx_op_args*, %struct._umtx_op_args** %4, align 8
  %18 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8**
  store i8** %20, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct._umtx_op_args*, %struct._umtx_op_args** %4, align 8
  %22 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %61, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BATCH_SIZE, align 4
  %30 = call i32 @MIN(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @copyin(i8** %34, i8** %16, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %68

43:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.thread*, %struct.thread** %3, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %16, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @INT_MAX, align 4
  %55 = call i32 @kern_umtx_wake(%struct.thread* %49, i8* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %44

59:                                               ; preds = %44
  %60 = call i32 (...) @maybe_yield()
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %24

68:                                               ; preds = %42, %24
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @copyin(i8**, i8**, i32) #2

declare dso_local i32 @kern_umtx_wake(%struct.thread*, i8*, i32, i32) #2

declare dso_local i32 @maybe_yield(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
