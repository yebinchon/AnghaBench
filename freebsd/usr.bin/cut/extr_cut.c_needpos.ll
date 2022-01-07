; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_needpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_needpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@needpos.npos = internal global i64 0, align 8
@positions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @needpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @needpos(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @needpos.npos, align 8
  %6 = icmp ugt i64 %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load i64, i64* @needpos.npos, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* @needpos.npos, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* @needpos.npos, align 8
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @needpos.npos, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* @needpos.npos, align 8
  %20 = mul i64 %19, 2
  store i64 %20, i64* @needpos.npos, align 8
  br label %14

21:                                               ; preds = %14
  %22 = load i32*, i32** @positions, align 8
  %23 = load i64, i64* @needpos.npos, align 8
  %24 = call i32* @realloc(i32* %22, i64 %23)
  store i32* %24, i32** @positions, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32*, i32** @positions, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* @needpos.npos, align 8
  %34 = load i64, i64* %3, align 8
  %35 = sub i64 %33, %34
  %36 = call i32 @memset(i8* %32, i32 0, i64 %35)
  br label %37

37:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
