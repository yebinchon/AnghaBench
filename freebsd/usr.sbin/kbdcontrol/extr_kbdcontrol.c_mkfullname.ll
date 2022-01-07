; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_mkfullname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_mkfullname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mkfullname.buf = internal global i8* null, align 8
@mkfullname.bufl = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @mkfullname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mkfullname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %10, %12
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %13, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @mkfullname.bufl, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i8*, i8** @mkfullname.buf, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** @mkfullname.buf, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @realloc(i8* %25, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @mkfullname.buf, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @mkfullname.buf, align 8
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i8*, i8** @mkfullname.buf, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* @mkfullname.bufl, align 4
  store i8* null, i8** %4, align 8
  br label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* @mkfullname.bufl, align 4
  %40 = load i8*, i8** @mkfullname.buf, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  %43 = load i8*, i8** @mkfullname.buf, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcat(i8* %43, i8* %44)
  %46 = load i8*, i8** @mkfullname.buf, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcat(i8* %46, i8* %47)
  %49 = load i8*, i8** @mkfullname.buf, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
