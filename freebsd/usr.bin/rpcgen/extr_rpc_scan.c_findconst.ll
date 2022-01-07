; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_scan.c_findconst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_scan.c_findconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**)* @findconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findconst(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %26, %20
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isxdigit(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %23, label %31

31:                                               ; preds = %26
  br label %42

32:                                               ; preds = %14, %2
  br label %33

33:                                               ; preds = %36, %32
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isdigit(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %33, label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8*, i8** %5, align 8
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %43 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = add nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @xmalloc(i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8**, i8*** %3, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @strlcpy(i8* %53, i8* %55, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8**, i8*** %4, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i8**, i8*** %3, align 8
  store i8* %60, i8** %61, align 8
  ret void
}

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
