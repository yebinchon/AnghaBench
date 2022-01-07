; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_search_kld.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_search_kld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_LINKER = common dso_local global i32 0, align 4
@linker_path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @linker_search_kld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linker_search_kld(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strchr(i8* %8, i8 signext 47)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @M_LINKER, align 4
  %14 = call i8* @strdup(i8* %12, i32 %13)
  store i8* %14, i8** %2, align 8
  br label %61

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** @linker_path, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %57, %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 59
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @linker_lookup_file(i8* %42, i32 %48, i8* %49, i32 %50, i32* null)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %2, align 8
  br label %61

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  br label %19

60:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %61

61:                                               ; preds = %60, %54, %11
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @linker_lookup_file(i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
