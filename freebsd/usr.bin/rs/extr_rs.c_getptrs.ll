; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getptrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocsize = common dso_local global i32 0, align 4
@elem = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@endelem = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @getptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @getptrs(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i32, i32* @allocsize, align 4
  %5 = load i32, i32* @allocsize, align 4
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* @allocsize, align 4
  %7 = load i8**, i8*** @elem, align 8
  %8 = load i32, i32* @allocsize, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call i64 @realloc(i8** %7, i32 %11)
  %13 = inttoptr i64 %12 to i8**
  store i8** %13, i8*** %3, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8**, i8*** @elem, align 8
  %21 = ptrtoint i8** %19 to i64
  %22 = ptrtoint i8** %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  %25 = load i8**, i8*** %2, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24
  store i8** %26, i8*** %2, align 8
  %27 = load i8**, i8*** %3, align 8
  store i8** %27, i8*** @elem, align 8
  %28 = load i32, i32* @allocsize, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8** %30, i8*** @endelem, align 8
  %31 = load i8**, i8*** %2, align 8
  ret i8** %31
}

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
