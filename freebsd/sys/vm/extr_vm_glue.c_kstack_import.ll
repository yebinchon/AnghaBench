; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_kstack_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_kstack_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32 }

@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@kstack_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32)* @kstack_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstack_import(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.domainset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call %struct.domainset* (...) @DOMAINSET_RR()
  store %struct.domainset* %18, %struct.domainset** %11, align 8
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.domainset* @DOMAINSET_PREF(i32 %20)
  store %struct.domainset* %21, %struct.domainset** %11, align 8
  br label %22

22:                                               ; preds = %19, %17
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.domainset*, %struct.domainset** %11, align 8
  %29 = load i32, i32* @kstack_pages, align 4
  %30 = call i64 @vm_thread_stack_create(%struct.domainset* %28, i32* %12, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %31, i8** %35, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %23

47:                                               ; preds = %42, %23
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local %struct.domainset* @DOMAINSET_RR(...) #1

declare dso_local %struct.domainset* @DOMAINSET_PREF(i32) #1

declare dso_local i64 @vm_thread_stack_create(%struct.domainset*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
