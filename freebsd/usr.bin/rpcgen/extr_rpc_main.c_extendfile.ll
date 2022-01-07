; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_extendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_extendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @extendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extendfile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strrchr(i8* %8, i8 signext 47)
  store i8* %9, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %7, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  %23 = call i8* @xmalloc(i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %28, %16
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcpy(i8* %35, i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
