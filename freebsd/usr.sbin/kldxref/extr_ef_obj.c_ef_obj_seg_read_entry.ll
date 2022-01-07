; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_obj.c_ef_obj_seg_read_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_obj.c_ef_obj_seg_read_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i8**)* @ef_obj_seg_read_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef_obj_seg_read_entry(i32 %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i8* @malloc(i64 %11)
  %13 = load i8**, i8*** %9, align 8
  store i8* %12, i8** %13, align 8
  %14 = load i8**, i8*** %9, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @ef_obj_seg_read(i32 %20, i32 %21, i64 %22, i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ef_obj_seg_read(i32, i32, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
