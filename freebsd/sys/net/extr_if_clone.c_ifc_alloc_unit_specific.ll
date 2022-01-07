; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_alloc_unit_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_ifc_alloc_unit_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32, i8*, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32*)* @ifc_alloc_unit_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifc_alloc_unit_specific(%struct.if_clone* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_clone*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %16 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %23 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @alloc_unr_specific(i32 %24, i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EEXIST, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %52

31:                                               ; preds = %21
  %32 = load i32, i32* @IFNAMSIZ, align 4
  %33 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %34 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snprintf(i8* %12, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %37)
  %39 = call i32* @ifunit(i8* %12)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %43 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free_unr(i32 %44, i32 %46)
  %48 = load i32, i32* @EEXIST, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load %struct.if_clone*, %struct.if_clone** %4, align 8
  %51 = call i32 @IF_CLONE_ADDREF(%struct.if_clone* %50)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %41, %29, %19
  %53 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @alloc_unr_specific(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @ifunit(i8*) #2

declare dso_local i32 @free_unr(i32, i32) #2

declare dso_local i32 @IF_CLONE_ADDREF(%struct.if_clone*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
