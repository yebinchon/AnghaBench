; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_collect_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_collect_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_pageout_page_count = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32*, i32*)* @vm_object_page_collect_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_object_page_collect_flush(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* @vm_pageout_page_count, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32*, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @MA_NOTOWNED, align 4
  %27 = call i32 @vm_page_lock_assert(i32* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @vm_page_assert_xbusied(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %30)
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %16, align 8
  br label %33

33:                                               ; preds = %57, %6
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @vm_pageout_page_count, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i32*, i32** %16, align 8
  %39 = call i32* @vm_page_next(i32* %38)
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %16, align 8
  %44 = call i64 @vm_page_tryxbusy(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %37
  br label %60

47:                                               ; preds = %42
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @vm_object_page_remove_write(i32* %48, i32 %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @vm_page_xunbusy(i32* %54)
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %33

60:                                               ; preds = %53, %46, %33
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %15, align 8
  br label %62

62:                                               ; preds = %89, %60
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @vm_pageout_page_count, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i32*, i32** %15, align 8
  %68 = call i32* @vm_page_prev(i32* %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %16, align 8
  %73 = call i64 @vm_page_tryxbusy(i32* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %66
  br label %92

76:                                               ; preds = %71
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @vm_object_page_remove_write(i32* %77, i32 %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @vm_page_xunbusy(i32* %83)
  br label %92

85:                                               ; preds = %76
  %86 = load i32*, i32** %16, align 8
  store i32* %86, i32** %15, align 8
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %62

92:                                               ; preds = %82, %75, %62
  %93 = load i32*, i32** %15, align 8
  store i32* %93, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %103, %92
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %24, i64 %101
  store i32* %99, i32** %102, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* @listq, align 4
  %106 = call i32* @TAILQ_NEXT(i32* %104, i32 %105)
  store i32* %106, i32** %16, align 8
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @vm_pageout_flush(i32** %24, i32 %110, i32 %111, i32 %112, i32* %20, i32* %113)
  %115 = load i32, i32* %20, align 4
  %116 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vm_page_lock_assert(i32*, i32) #2

declare dso_local i32 @vm_page_assert_xbusied(i32*) #2

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #2

declare dso_local i32* @vm_page_next(i32*) #2

declare dso_local i64 @vm_page_tryxbusy(i32*) #2

declare dso_local i32 @vm_object_page_remove_write(i32*, i32, i32*) #2

declare dso_local i32 @vm_page_xunbusy(i32*) #2

declare dso_local i32* @vm_page_prev(i32*) #2

declare dso_local i32* @TAILQ_NEXT(i32*, i32) #2

declare dso_local i32 @vm_pageout_flush(i32**, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
