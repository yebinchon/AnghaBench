; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_capdb_canonical_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_capdb_canonical_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"|:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @capdb_canonical_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @capdb_canonical_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strpbrk(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = add nsw i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @strncat(i8* %25, i8* %26, i32 %32)
  br label %34

34:                                               ; preds = %22, %12
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
